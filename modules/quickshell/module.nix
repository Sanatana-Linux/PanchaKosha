{ config, lib, pkgs, ... }:

let
  cfg = config.programs.quickshell.mangowc;

  # Build quickshell package with MangoWC configuration
  quickshellPackage = pkgs.quickshell;

  # Build the MangoWC quickshell configuration package
  mangowcQuickshellConfig = pkgs.stdenv.mkDerivation {
    name = "mangowc-quickshell-config";
    src = ./config;

    installPhase = ''
      mkdir -p $out/share/quickshell/mangowc

      # Copy all configuration files
      cp -r . $out/share/quickshell/mangowc/

      # Ensure proper permissions
      chmod -R u+r $out/share/quickshell/mangowc/
    '';
  };

  # Build greeter-specific configuration package
  greeterConfig = pkgs.stdenv.mkDerivation {
    name = "mangowc-greeter-config";
    src = ./config;

    installPhase = ''
      mkdir -p $out/share/quickshell/greeter

      # Copy essential settings
      mkdir -p $out/share/quickshell/greeter/settings
      cp settings/*.qml $out/share/quickshell/greeter/settings/ 2>/dev/null || true
      cp settings/*.json $out/share/quickshell/greeter/settings/ 2>/dev/null || true

      # Copy shared components
      mkdir -p $out/share/quickshell/greeter/components
      cp -r components/animations $out/share/quickshell/greeter/components/ 2>/dev/null || true

      # Copy greeter module
      mkdir -p $out/share/quickshell/greeter/modules/greeter
      cp modules/greeter/Greeter.qml $out/share/quickshell/greeter/modules/greeter/ 2>/dev/null || true
      mkdir -p $out/share/quickshell/greeter/modules/greeter/components
      cp modules/greeter/components/*.qml $out/share/quickshell/greeter/modules/greeter/components/ 2>/dev/null || true
      cp -r modules/greeter/pam $out/share/quickshell/greeter/modules/greeter/ 2>/dev/null || true

      # Copy lockscreen components needed by greeter
      cp modules/lockscreen/components/BlurredWallpaper.qml $out/share/quickshell/greeter/modules/greeter/components/ 2>/dev/null || true

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

    Greeter {
        anchors.fill: parent
    }
}
EOF

      # Create qmldir for proper module resolution
      mkdir -p $out/share/quickshell/greeter/modules/greeter
      cat > $out/share/quickshell/greeter/qmldir << 'EOF'
module qs
EOF

      # Create module qmldir files
      cat > $out/share/quickshell/greeter/modules/greeter/qmldir << 'EOF'
      module qs.modules.greeter
      Greeter 1.0 Greeter.qml
      EOF

      mkdir -p $out/share/quickshell/greeter/modules/greeter/components
      cat > $out/share/quickshell/greeter/modules/greeter/components/qmldir << 'EOF'
module qs.modules.greeter.components
GreeterContext 1.0 GreeterContext.qml
GreeterBackground 1.0 GreeterBackground.qml
GreeterForm 1.0 GreeterForm.qml
BlurredWallpaper 1.0 BlurredWallpaper.qml
EOF

      # Create settings module qmldir
      mkdir -p $out/share/quickshell/greeter/settings
      cat > $out/share/quickshell/greeter/settings/qmldir << 'EOF'
      module qs.settings
      Config 1.0 Config.qml
      Colors 1.0 Colors.qml
      Fonts 1.0 Fonts.qml
      AppState 1.0 AppState.qml
      EOF

      # Create screenshot module qmldir so module can be imported as qs.modules.screenshot
      mkdir -p $out/share/quickshell/mangowc/modules/screenshot
      cat > $out/share/quickshell/mangowc/modules/screenshot/qmldir << 'EOF'
module qs.modules.screenshot
Controller 1.0 Controller.qml
CutoutRect 1.0 CutoutRect.qml
EOF
    '';
  };
in {
  options.programs.quickshell.mangowc = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable MangoWC Quickshell configuration";
    };

    package = lib.mkOption {
      type = lib.types.package;
      default = quickshellPackage;
      description = "The quickshell package to use";
    };

    configPackage = lib.mkOption {
      type = lib.types.package;
      default = mangowcQuickshellConfig;
      description = "The MangoWC quickshell configuration package";
    };

    greeter.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable greeter-specific configuration";
    };

    greeterPackage = lib.mkOption {
      type = lib.types.package;
      default = greeterConfig;
      description = "The MangoWC greeter configuration package";
    };

    autoStart = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Automatically start quickshell on MangoWC session startup";
    };
  };

  config = lib.mkIf cfg.enable {
    # Install quickshell and configuration
    environment.systemPackages = [
      cfg.package
      cfg.configPackage
      pkgs.polkit
      pkgs.grim
      pkgs.wl-clipboard
      pkgs.imagemagick
    ] ++ lib.optionals cfg.greeter.enable [ cfg.greeterPackage ];

    # Enable polkit authentication agent
    security.polkit.enable = true;

    # Auto-start quickshell with MangoWC
  };
}

