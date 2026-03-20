{lib, ...}: {
  options.programs.skeuomorphic.mangowc.appearance = {
    gappih = lib.mkOption {
      type = lib.types.int;
      default = 3;
      description = "Inner horizontal gap between windows";
    };
    gappiv = lib.mkOption {
      type = lib.types.int;
      default = 3;
      description = "Inner vertical gap between windows";
    };
    gappoh = lib.mkOption {
      type = lib.types.int;
      default = 3;
      description = "Outer horizontal gap from screen edges";
    };
    gappov = lib.mkOption {
      type = lib.types.int;
      default = 3;
      description = "Outer vertical gap from screen edges";
    };
    scratchpadWidthRatio = lib.mkOption {
      type = lib.types.float;
      default = 0.8;
      description = "Scratchpad width ratio";
    };
    scratchpadHeightRatio = lib.mkOption {
      type = lib.types.float;
      default = 0.9;
      description = "Scratchpad height ratio";
    };
    borderpx = lib.mkOption {
      type = lib.types.int;
      default = 3;
      description = "Window border width in pixels";
    };
rootcolor = lib.mkOption {
    type = lib.types.str;
    default = "131313ff";
    description = "Root window background color in ARGB hex (without 0x prefix)";
  };
  bordercolor = lib.mkOption {
    type = lib.types.str;
    default = "222222ff";
    description = "Unfocused window border color in ARGB hex";
  };
  focuscolor = lib.mkOption {
    type = lib.types.str;
    default = "5ad4e6ff";
    description = "Focused window border color in ARGB hex";
  };
  urgentcolor = lib.mkOption {
    type = lib.types.str;
    default = "fc618dff";
    description = "Urgent window border color in ARGB hex";
  };
  maximizescreencolor = lib.mkOption {
    type = lib.types.str;
    default = "7bd88fff";
    description = "Maximized window border color in ARGB hex";
  };
  scratchpadcolor = lib.mkOption {
    type = lib.types.str;
    default = "5ad4e6ff";
    description = "Scratchpad window border color in ARGB hex";
  };
  globalcolor = lib.mkOption {
    type = lib.types.str;
    default = "948ae3ff";
    description = "Global window border color in ARGB hex";
  };
  overlaycolor = lib.mkOption {
    type = lib.types.str;
    default = "fd9353ff";
    description = "Overlay window border color in ARGB hex";
  };
    cursorSize = lib.mkOption {
      type = lib.types.int;
      default = 24;
      description = "Cursor size in pixels";
    };
    cursorTheme = lib.mkOption {
      type = lib.types.str;
      default = "Bibata-Modern-Ice";
      description = "Cursor theme name";
    };
  };
}
