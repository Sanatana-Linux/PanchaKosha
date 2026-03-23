{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.panchakosha.mangowc;
  formatters = import ./formatters.nix {inherit lib;};
in {
  # User-level MangoWC options mirror the NixOS structure
  options.panchakosha.mangowc = {
    enable = mkEnableOption "User-level MangoWC configuration";
    bindings = mkOption {
      type = types.listOf types.attrs;
      default = [];
    };
    mouseBindings = mkOption {
      type = types.listOf types.attrs;
      default = [];
    };
    monitors = mkOption {
      type = types.listOf types.attrs;
      default = [];
    };
    extraConfig = mkOption {
      type = types.lines;
      default = "";
    };
  };

  config = mkIf cfg.enable {
    # Generate user-specific config fragments in ~/.config/mango/
    xdg.configFile."mango/user_rules.conf".text = ''
      # Per-user Monitor Setup
      ${formatters.formatMonitors cfg.monitors}

      # Per-user Bindings
      ${formatters.formatBinds "bind" cfg.bindings "key"}
      ${formatters.formatBinds "mousebind" cfg.mouseBindings "button"}

      # User Extra
      ${cfg.extraConfig}
    '';

    # We ensure the system-wide config sources this user file if it exists
    home.packages = [pkgs.mangowc];
  };
}
