{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.panchakosha.greetd;
  shellCfg = config.panchakosha.quickshell;

  quickshellGreeterCmd = pkgs.writeShellScript "panchakosha-greeter-run" ''
    ${optionalString config.panchakosha.nvidiaFixes ''
      export LIBVA_DRIVER_NAME=nvidia
      export __GLX_VENDOR_LIBRARY_NAME=nvidia
      export GBM_BACKEND=nvidia-drm
      export WLR_NO_HARDWARE_CURSORS=1
      export QT_QPA_PLATFORM=wayland-egl
      export __EGL_VENDOR_LIBRARY_FILENAMES=/run/opengl-driver/share/glvnd/egl_vendor.d/10_nvidia.json
      export WLR_DRM_NO_ATOMIC=1
    ''}

    export QS_PATH="${shellCfg.configPackage}/share/quickshell/mangowc"
    
    exec ${pkgs.dwl}/bin/dwl -s "${pkgs.quickshell}/bin/quickshell --path $QS_PATH/shell.qml"
  '';

in
{
  options.panchakosha.greetd = {
    enable = mkEnableOption "the PanchaKosha themed Quickshell greeter via greetd";
    
    autoLogin = {
      enable = mkOption { type = types.bool; default = false; };
      user = mkOption { type = types.str; default = ""; };
    };

    appearance = {
      theme = mkOption {
        type = types.enum [ 
          "MonokaiPro" "MonokaiProClassic" "MonokaiProLight" 
          "MonokaiProMachine" "MonokaiProOctagon" 
          "MonokaiProRistretto" "MonokaiProSpectrum" 
        ];
        default = "MonokaiProSpectrum";
      };
      blurRadius = mkOption { type = types.int; default = 64; };
      dimming = mkOption { type = types.float; default = 0.5; };
    };
  };

  config = mkIf cfg.enable {
    assertions = [
      {
        assertion = shellCfg.enable;
        message = "panchakosha.greetd requires panchakosha.quickshell.enable = true;";
      }
    ];

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

    users.users.greeter.extraGroups = [ "video" "input" ];

    security.pam.services.greetd = {
      enableGnomeKeyring = true;
      text = ''
        auth    include system-local-login
        account include system-local-login
        session include system-local-login
        password include system-local-login
      '';
    };

    environment.systemPackages = with pkgs; [
      dwl
      qt6.qtwayland
      egl-wayland
    ];
  };
}
