{lib, ...}: {
  options.programs.PanchaKosha.mangowc.overview = {
    hotAreaSize = lib.mkOption {
      type = lib.types.int;
      default = 10;
      description = "Hot area size in pixels (bottom left corner)";
    };
    enableHotArea = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable hot corner for triggering overview mode";
    };
    ovTabMode = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Circle through windows in overview and exit on modifier release";
    };
    overviewGappi = lib.mkOption {
      type = lib.types.int;
      default = 5;
      description = "Inner gap between windows in overview mode";
    };
    overviewGappo = lib.mkOption {
      type = lib.types.int;
      default = 30;
      description = "Outer gap from screen edges in overview mode";
    };
  };
}
