{ config, lib, pkgs, ... }:

with lib;
let
  cfg = config.panchakosha.quickshell;
in
{
  options.panchakosha.quickshell.enable = mkEnableOption "User-level Quickshell session";

  config = mkIf cfg.enable {
    home.packages = [ pkgs.quickshell ];
    
    # Link the settings JSON locally so users can modify it via the UI and persist changes
    # properly in their home directory.
    home.file.".config/quickshell/settings/config.json".text = builtins.toJSON {
      theme = "MonokaiProSpectrum";
      transparency = 0.77;
    };
  };
}
