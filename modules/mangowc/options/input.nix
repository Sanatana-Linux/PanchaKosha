{lib, ...}: {
  options.programs.skeuomorphic.mangowc.input = {
    repeatRate = lib.mkOption {
      type = lib.types.int;
      default = 40;
      description = "Keyboard repeat rate";
    };
    repeatDelay = lib.mkOption {
      type = lib.types.int;
      default = 300;
      description = "Keyboard repeat delay in milliseconds";
    };
    numlockon = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable numlock on startup";
    };
    xkbRulesLayout = lib.mkOption {
      type = lib.types.str;
      default = "us";
      description = "Keyboard layout";
    };
    xkbRulesOptions = lib.mkOption {
      type = lib.types.nullOr lib.types.str;
      default = "caps:escape";
      description = "XKB keyboard options (e.g., 'caps:escape')";
    };
    mouseNaturalScrolling = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable natural scrolling for mouse (requires relogin)";
    };
  };
}
