{lib, ...}: {
  options.programs.PanchaKosha.mangowc.effects = {
  blur = lib.mkOption {
    type = lib.types.bool;
    default = true;
    description = "Enable window blur effect";
  };
  blurLayer = lib.mkOption {
    type = lib.types.bool;
    default = false;
    description = "Enable blur for layers";
  };
  blurOptimized = lib.mkOption {
    type = lib.types.bool;
    default = true;
    description = "Cache wallpaper and blur background to reduce GPU usage";
  };
  blurPasses = lib.mkOption {
    type = lib.types.int;
    default = 3;
    description = "Number of blur passes";
  };
  blurRadius = lib.mkOption {
    type = lib.types.int;
    default = 10;
    description = "Blur radius in pixels";
  };
    shadows = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable window shadows";
    };
    layerShadows = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable shadows for layers";
    };
    shadowOnlyFloating = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Only draw shadows for floating windows";
    };
    shadowsSize = lib.mkOption {
      type = lib.types.int;
      default = 10;
      description = "Shadow size in pixels";
    };
    shadowsBlur = lib.mkOption {
      type = lib.types.int;
      default = 15;
      description = "Shadow blur amount";
    };
    shadowsColor = lib.mkOption {
      type = lib.types.str;
      default = "000000ff";
      description = "Shadow color in ARGB hex format (without 0x prefix)";
    };
    borderRadius = lib.mkOption {
      type = lib.types.int;
      default = 6;
      description = "Window border radius in pixels";
    };
    noRadiusWhenSingle = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Disable border radius when only one window is visible";
    };
focusedOpacity = lib.mkOption {
    type = lib.types.float;
    default = 1.0;
    description = "Opacity of focused windows (0.0-1.0)";
  };
  unfocusedOpacity = lib.mkOption {
    type = lib.types.float;
    default = 0.77;
    description = "Opacity of unfocused windows (0.0-1.0)";
  };
  };
}
