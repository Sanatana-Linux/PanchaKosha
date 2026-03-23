{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.panchakosha.greetd;
  shellCfg = config.panchakosha.quickshell;
  hardware = import ../../lib/hardware.nix { inherit lib; };

  # THE PANCHAKOSHA GREETER COMMAND
  # This script prepares the environment specifically for the login context.
  # 1. It applies Nvidia stability fixes if enabled.
  # 2. It sets the QS_CONFIG_PATH to point to the immutable Nix store assets.
  # 3. It launches 'dwl' (compositor) which in turn executes the Quickshell greeter.
  quickshellGreeterCmd = pkgs.writeShellScript "panchakosha-greeter-launcher" ''
    # --- Step 1: Nvidia/Wayland Stability Exports ---
    ${optionalString config.panchakosha.nvidiaFixes ''
      export LIBVA_DRIVER_NAME=nvidia
      export __GLX_VENDOR_LIBRARY_NAME=nvidia
      export GBM_BACKEND=nvidia-drm
      export WLR_NO_HARDWARE_CURSORS=1
      export QT_QPA_PLATFORM=wayland-egl
      export __EGL_VENDOR_LIBRARY_FILENAMES=/run/opengl-driver/share/glvnd/egl_vendor.d/10_nvidia.json
      # Ensure the greeter finds the correct DRM device
      export WLR_DRM_NO_ATOMIC=1 
    ''}

    # --- Step 2: Quickshell Environment ---
    # Point Quickshell to the packaged configuration assets
    export QS_CONFIG_PATH="${shellCfg.configPackage}/share/quickshell/mangowc"
    
    # --- Step 3: Launch Session ---
    # We use dwl to provide the Wayland surface.
    # The greeter uses the 'shell.qml' entry point defined in the assets.
    echo "PanchaKosha GreetD: Starting Themed Quickshell Greeter..."
    exec ${pkgs.dwl}/bin/dwl -s "${pkgs.quickshell}/bin/quickshell --path $QS_CONFIG_PATH/shell.qml"
  '';

in
{
  options.panchakosha.greetd = {
    enable = mkEnableOption "the PanchaKosha themed Quickshell greeter via greetd";
    
    autoLogin = {
      enable = mkOption {
        type = types.bool;
        default = false;
        description = "Enable automatic login for the specified user.";
      };
      user = mkOption {
        type = types.str;
        default = "";
        description = "User to be automatically logged in.";
      };
    };

    # These options are passed to the Greeter's QML context via the packaged config
    appearance = {
      theme = mkOption {
        type = types.enum [ 
          "MonokaiPro" 
          "MonokaiProClassic" 
          "MonokaiProLight" 
          "MonokaiProMachine" 
          "MonokaiProOctagon" 
          "MonokaiProRistretto" 
          "MonokaiProSpectrum" 
        ];
        default = "MonokaiProSpectrum";
        description = "Monokai Pro theme variant for the login interface.";
      };
      blurRadius = mkOption {
        type = types.int;
        default = 64;
        description = "Wallpaper blur intensity on the login screen.";
      };
      dimming = mkOption {
        type = types.float;
        default = 0.5;
        description = "Overlay darkening opacity (0.0 to 1.0).";
      };
    };
  };

  config = mkIf cfg.enable {
    # CRITICAL: The greeter requires the shell assets to be enabled.
    assertions = [
      {
        assertion = shellCfg.enable;
        message = "panchakosha.greetd requires panchakosha.quickshell.enable = true to access QML components.";
      }
    ];

    # Configure the GreetD Service
    services.greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${quickshellGreeterCmd}";
          user = "greeter";
        };
        initial_session = mkIf cfg.autoLogin.enable {
          command = "mangowc";
          user = cfg.autoLogin.user;
        };
      };
    };

    # Hardware Access Permissions
    # The 'greeter' user must be able to access GPU and input devices
    users.users.greeter.extraGroups = [ "video" "input" ];

    # PAM & Security
    # Enables proper session unlocking and keyring integration
    security.pam.services.greetd = {
      enableGnomeKeyring = true;
      text = ''
        auth    include system-local-login
        account include system-local-login
        session include system-local-login
        password include system-local-login
      '';
    };

    # Runtime Dependencies
    # Ensure the greeter session has the required binaries and drivers
    environment.systemPackages = with pkgs; [
      dwl             # Lightweight compositor for the greeter
      qt6.qtwayland   # Qt Wayland abstraction
      egl-wayland     # Nvidia Wayland EGL support
      vulkan-loader   # Required for modern rendering
      libnotify       # Alert support
    ];
  };
}
