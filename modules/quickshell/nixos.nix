{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.panchakosha.quickshell;
  
  # Configuration Assets Package
  # This builds the local 'config' directory into a Nix store path.
  quickshellConfigPkg = pkgs.stdenv.mkDerivation {
    name = "panchakosha-quickshell-config";
    src = ./config; 

    installPhase = ''
      mkdir -p $out/share/quickshell/mangowc
      cp -r . $out/share/quickshell/mangowc/
      chmod -R u+r $out/share/quickshell/mangowc/
    '';
  };

in
{
  options.panchakosha.quickshell = {
    enable = mkEnableOption "the PanchaKosha Quickshell components";

    package = mkOption {
      type = types.package;
      default = pkgs.quickshell;
      description = "The Quickshell binary package.";
    };

    configPackage = mkOption {
      type = types.package;
      default = quickshellConfigPkg;
      description = "The derivation containing the QML configuration assets.";
    };

    settings = {
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
        description = "Color theme variant for the shell components.";
      };

      transparency = mkOption {
        type = types.float;
        default = 0.77;
        description = "Background transparency level (0.0 to 1.0).";
      };

      mainMonitorId = mkOption {
        type = types.str;
        default = "DP-1";
        description = "Target monitor name for primary shell components.";
      };

      barHeight = mkOption {
        type = types.int;
        default = 44;
      };

      launcherWidth = mkOption {
        type = types.int;
        default = 600;
      };

      lockOnStartup = mkOption {
        type = types.bool;
        default = false;
      };
    };
  };

  config = mkIf cfg.enable {
    environment.systemPackages = [
      cfg.package
      cfg.configPackage
      pkgs.qt6.qtwayland
      pkgs.libnotify
      pkgs.brightnessctl
      pkgs.playerctl
      pkgs.networkmanager
      pkgs.bluez
      pkgs.pipewire
      pkgs.wireplumber
      pkgs.cliphist
      pkgs.wl-clipboard
      pkgs.wtype
      pkgs.fd
    ];

    services.pipewire.enable = true;
    services.upower.enable = true;
    networking.networkmanager.enable = true;
    hardware.bluetooth.enable = true;
    security.polkit.enable = true;

    # Apply Nvidia stability variables globally via Core detection
    environment.sessionVariables = mkIf config.panchakosha.nvidiaFixes {
      QT_QPA_PLATFORM = "wayland-egl";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      GBM_BACKEND = "nvidia-drm";
    };

    fonts.packages = [ (pkgs.nerd-fonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; }) ];
  };
}
