{lib, ...}: {
  options.programs.skeuomorphic.mangowc.masterStack = {
    newIsMaster = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "New windows become master in master-stack layout";
    };
    defaultMfact = lib.mkOption {
      type = lib.types.float;
      default = 0.55;
      description = "Default master area factor (proportion of screen)";
    };
    defaultNmaster = lib.mkOption {
      type = lib.types.int;
      default = 1;
      description = "Default number of master windows";
    };
    smartgaps = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Remove gaps when only one window is visible";
    };
  };
}
