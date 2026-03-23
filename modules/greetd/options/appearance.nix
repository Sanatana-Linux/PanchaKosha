{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.greetd.mangowc;
in {
  options.services.greetd.mangowc.appearance = {
    theme = mkOption {
      type = types.enum [
        "MonokaiProSpectrum"
        "MonokaiProClassic"
        "MonokaiProMachine"
        "MonokaiProOctagon"
        "MonokaiProRistretto"
        "MonokaiProLight"
      ];
      default = "MonokaiProSpectrum";
      description = "Color theme for the greeter";
    };

    wallpaper = mkOption {
      type = types.str;
      default = "";
      description = "Path to wallpaper image";
    };

    blurRadius = mkOption {
      type = types.int;
      default = 64;
      description = "Blur radius for wallpaper background";
    };

    dimming = mkOption {
      type = types.float;
      default = 0.5;
      description = "Darkening overlay opacity (0.0 to 1.0)";
    };

    transparency = mkOption {
      type = types.float;
      default = 0.95;
      description = "Background transparency level";
    };

    showSplash = mkOption {
      type = types.bool;
      default = true;
      description = "Show splash text at bottom of screen";
    };

    splashText = mkOption {
      type = types.str;
      default = "Welcome to MangoWC";
      description = "Custom splash text to display";
    };
  };
}
