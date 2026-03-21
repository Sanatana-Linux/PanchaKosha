{ config, lib, pkgs, ... }:

let
  cfg = config.programs.quickshell.mangowc;

  # Build the MangoWC quickshell configuration package (same as in NixOS module for consistency)
  mangowcQuickshellConfig = pkgs.stdenv.mkDerivation {
    name = "mangowc-quickshell-config";
    src = ./config;

    installPhase = ''
      mkdir -p $out/share/quickshell/mangowc
      cp -r . $out/share/quickshell/mangowc/
      chmod -R u+r $out/share/quickshell/mangowc/
    '';
  };
in {
  options.programs.quickshell.mangowc = {
    enable = lib.mkEnableOption "MangoWC Quickshell configuration";
    
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.quickshell;
      description = "The quickshell package to use";
    };

    configPackage = lib.mkOption {
      type = lib.types.package;
      default = mangowcQuickshellConfig;
      description = "The MangoWC quickshell configuration package";
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = [ cfg.package ];

    xdg.configFile = {
      "quickshell/shell.qml".source = "${cfg.configPackage}/share/quickshell/mangowc/shell.qml";
      "quickshell/modules".source = "${cfg.configPackage}/share/quickshell/mangowc/modules";
      "quickshell/components".source = "${cfg.configPackage}/share/quickshell/mangowc/components";
      "quickshell/settings".source = "${cfg.configPackage}/share/quickshell/mangowc/settings";
      "quickshell/services".source = "${cfg.configPackage}/share/quickshell/mangowc/services";
      "quickshell/assets".source = "${cfg.configPackage}/share/quickshell/mangowc/assets";
    };
  };
}
