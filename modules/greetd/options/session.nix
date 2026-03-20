{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.greetd.mangowc;
in {
  options.services.greetd.mangowc.session = {
    defaultSession = mkOption {
      type = types.str;
      default = "Hyprland";
      description = "Default desktop session to launch";
    };

    rememberLastSession = mkOption {
      type = types.bool;
      default = true;
      description = "Remember the last selected session";
    };

    rememberUsername = mkOption {
      type = types.bool;
      default = true;
      description = "Remember the last logged in username";
    };

    enableNumlock = mkOption {
      type = types.bool;
      default = true;
      description = "Enable numlock on startup";
    };

    enableFailsafe = mkOption {
      type = types.bool;
      default = true;
      description = "Enable failsafe session option";
    };
  };
}
