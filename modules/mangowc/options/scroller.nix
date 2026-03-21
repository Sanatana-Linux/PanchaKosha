{lib, ...}: {
  options.programs.PanchaKosha.mangowc.scroller = {
    structs = lib.mkOption {
      type = lib.types.int;
      default = 10;
      description = "Width reserved on both sides of screen when window ratio is 1.0";
    };
    defaultProportion = lib.mkOption {
      type = lib.types.float;
      default = 0.8;
      description = "Default proportion for scroller window width";
    };
    focusCenter = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Always center the focused window in scroller layout";
    };
    preferCenter = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Center focused window only if last focused window was outside monitor";
    };
    edgeScrollerPointerFocus = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Focus windows by pointer even if not completely in monitor";
    };
    defaultProportionSingle = lib.mkOption {
      type = lib.types.float;
      default = 1.0;
      description = "Default proportion when only single window in current tag";
    };
    proportionPreset = lib.mkOption {
      type = with lib.types; listOf float;
      default = [0.5 0.8 1.0];
      description = "Preset proportions for cycling window sizes";
    };
  };
}
