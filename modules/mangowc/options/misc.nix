{lib, ...}: {
  options.programs.PanchaKosha.mangowc.misc = {
    noBorderWhenSingle = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Don't render border when window is alone in tag";
    };
    axisBindApplyTimeout = lib.mkOption {
      type = lib.types.int;
      default = 100;
      description = "Interval detection timeout for consecutive scrolls in milliseconds";
    };
    focusOnActivate = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Focus window when it sends activate event";
    };
    inhibitRegardlessOfVisibility = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Invisible windows can trigger idle inhibit";
    };
    sloppyFocus = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Focus follows mouse pointer";
    };
    warpCursor = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Warp cursor to focused window";
    };
    focusCrossMonitor = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Allow focus to move across monitors";
    };
    focusCrossTag = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Allow focus to move across tags";
    };
    enableFloatingSnap = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable snapping for floating windows";
    };
    snapDistance = lib.mkOption {
      type = lib.types.int;
      default = 30;
      description = "Maximum distance in pixels to trigger floating window snap";
    };
    cursorSize = lib.mkOption {
      type = lib.types.int;
      default = 24;
      description = "Cursor size in pixels";
    };
    dragTileToTile = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Retile dragged tiled window when drag ends";
    };
  };
}
