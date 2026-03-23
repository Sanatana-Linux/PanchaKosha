{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.panchakosha.greetd;
  shellCfg = config.panchakosha.quickshell;

  # THEMED GREETER LAUNCHER
  # This uses the same assets and themes as the main shell.
  greeterLaunchCmd = pkgs.writeShellScript "panchakosha-greeter" ''
    # Enforce Nvidia stability for the login screen
    ${optionalString config.panchakosha.nvidiaFixes ''
      export LIBVA_DRIVER_NAME=nvidia
      export __GLX_VENDOR_LIBRARY_NAME=nvidia
      export GBM_BACKEND=nvidia-drm
      export WLR_NO_HARDWARE_CURSORS=1
      export QT_QPA_PLATFORM=wayland-egl
    ''}

    export QS_PATH="${shellCfg.configPackage}/share/quickshell/mangowc"

    # Launch dwl to host the greeter's shell.qml
    exec ${pkgs.dwl}/bin/dwl -s "${pkgs.quickshell}/bin/quickshell --path $QS_PATH/shell.qml"
  '';
in {
  options.panchakosha.greetd = {
    enable = mkEnableOption "Themed GreetD login manager";
    autoLogin = {
      enable = mkOption {
        type = types.bool;
        default = false;
      };
      user = mkOption {
        type = types.str;
        default = "";
      };
    };
  };

  config = mkIf cfg.enable {
    services.greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${greeterLaunchCmd}";
          user = "greeter";
        };
        initial_session = mkIf cfg.autoLogin.enable {
          command = "mangowc";
          user = cfg.autoLogin.user;
        };
      };
    };

    users.users.greeter.extraGroups = ["video" "input"];

    security.pam.services.greetd = {
      enableGnomeKeyring = true;
      text = ''
        auth    include system-local-login
        account include system-local-login
        session include system-local-login
        password include system-local-login
      '';
    };

    environment.systemPackages = [pkgs.dwl pkgs.qt6.qtwayland];
  };
}
