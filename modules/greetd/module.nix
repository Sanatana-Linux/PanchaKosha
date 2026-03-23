{ config, lib, pkgs, ... }:

let
  cfg = config.services.greetd.mangowc;

  # Quickshell greeter package
  quickshellGreeter = pkgs.stdenv.mkDerivation {
    name = "quickshell-greeter";
    src = ../quickshell/config;
    
    installPhase = ''
      mkdir -p $out/share/quickshell/greeter
      
      # Copy essential settings
      mkdir -p $out/share/quickshell/greeter/settings
      cp settings/*.qml $out/share/quickshell/greeter/settings/
      cp settings/*.json $out/share/quickshell/greeter/settings/
      
      # Copy shared components
      mkdir -p $out/share/quickshell/greeter/components
      cp -r components/animations $out/share/quickshell/greeter/components/
      
      # Copy greeter module
      mkdir -p $out/share/quickshell/greeter/modules/greeter/components
      cp modules/greeter/Greeter.qml $out/share/quickshell/greeter/modules/greeter/
      cp modules/greeter/components/*.qml $out/share/quickshell/greeter/modules/greeter/components/
      cp -r modules/greeter/pam $out/share/quickshell/greeter/modules/greeter/
      
      # Copy lockscreen components needed by greeter
      cp modules/lockscreen/components/BlurredWallpaper.qml $out/share/quickshell/greeter/modules/greeter/components/
      
      # Copy services needed by greeter
      mkdir -p $out/share/quickshell/greeter/services
      cp -r services/* $out/share/quickshell/greeter/services/ 2>/dev/null || true
      
      # Create greeter-specific shell.qml
      cat > $out/share/quickshell/greeter/shell.qml << 'EOF'
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import qs.modules.greeter

ShellRoot {
    id: greeterRoot
    reloadableId: "greeterModule"

    // Only load the greeter module
    Greeter {
        anchors.fill: parent
    }
}
EOF
      
      # Create qmldir for proper module resolution
      cat > $out/share/quickshell/greeter/qmldir << 'EOF'
module qs
EOF
      
      # Create module qmldir files
      cat > $out/share/quickshell/greeter/modules/greeter/qmldir << 'EOF'
module qs.modules.greeter
Greeter 1.0 Greeter.qml
EOF
      
      cat > $out/share/quickshell/greeter/modules/greeter/components/qmldir << 'EOF'
module qs.modules.greeter.components
GreeterContext 1.0 GreeterContext.qml
GreeterBackground 1.0 GreeterBackground.qml
GreeterForm 1.0 GreeterForm.qml
BlurredWallpaper 1.0 BlurredWallpaper.qml
EOF
      
      # Create settings module qmldir
      cat > $out/share/quickshell/greeter/settings/qmldir << 'EOF'
module qs.settings
Config 1.0 Config.qml
Colors 1.0 Colors.qml
Fonts 1.0 Fonts.qml
AppState 1.0 AppState.qml
EOF
    '';
  };

  # Build greetd settings based on configuration
  greetdSettings = {
  default_session.command = if cfg.quickshellGreeter.enable
    then "env QT_QPA_PLATFORM=wayland-egl __GLX_VENDOR_LIBRARY_NAME=nvidia GBM_BACKEND=nvidia-drm ${pkgs.dwl}/bin/dwl -s '${pkgs.quickshell}/bin/quickshell --path ${cfg.quickshellGreeter.package}/share/quickshell/greeter'"
      else cfg.sessionCommand;
    default_session.user = if cfg.quickshellGreeter.enable 
      then "greeter" 
      else cfg.sessionUser;
  } // lib.optionalAttrs (cfg.autoLogin.enable && !cfg.quickshellGreeter.enable) {
    auto_login = {
      user = cfg.autoLogin.user;
      command = cfg.sessionCommand;
    };
  };
in {
  imports = [
    ./options/appearance.nix
    ./options/session.nix
  ];

  options.services.greetd.mangowc = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable greetd login manager with MangoWC quickshell greeter";
    };

    sessionCommand = lib.mkOption {
      type = lib.types.str;
      default = "mangowc";
      description = "Command to run for the session";
    };

    sessionUser = lib.mkOption {
      type = lib.types.str;
      default = "greeter";
      description = "User to run the session command as";
    };

    autoLogin = {
      enable = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Enable automatic login";
      };

      user = lib.mkOption {
        type = lib.types.str;
        default = "";
        description = "User to automatically log in as";
      };
    };

    quickshellGreeter = {
      enable = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Enable quickshell-based greeter with MangoWC styling";
      };

      package = lib.mkOption {
        type = lib.types.package;
        default = quickshellGreeter;
        description = "The quickshell greeter package";
      };
    };
  };

  config = lib.mkIf cfg.enable {
    # Enable greetd service
    services.greetd = {
      enable = true;
      settings = greetdSettings;
    };

    # Install quickshell and greeter assets
    environment.systemPackages = lib.mkIf cfg.quickshellGreeter.enable [
      pkgs.quickshell
      cfg.quickshellGreeter.package
      pkgs.qt6.qtwayland
      pkgs.wlroots
      pkgs.egl-wayland
      pkgs.eglexternalplatform
    ];

    # Security wrapper for greetd (required for Wayland)
    security.pam.services.greetd = {};
  };
}
