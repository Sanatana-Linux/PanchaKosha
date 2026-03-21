{lib, ...}: {
  options.programs.PanchaKosha.mangowc.monitors = lib.mkOption {
    type = with lib.types; listOf (submodule {
      options = {
        name = lib.mkOption {
          type = str;
          description = "Monitor name (supports regex)";
        };
        scale = lib.mkOption {
          type = numbers.nonnegative;
          default = 1;
          description = "Monitor scale factor";
        };
        position = {
          x = lib.mkOption {
            type = int;
            default = 0;
            description = "Monitor X position";
          };
          y = lib.mkOption {
            type = int;
            default = 0;
            description = "Monitor Y position";
          };
        };
        width = lib.mkOption {
          type = int;
          description = "Monitor width in pixels";
        };
        height = lib.mkOption {
          type = int;
          description = "Monitor height in pixels";
        };
        refreshRate = lib.mkOption {
          type = numbers.nonnegative;
          default = 60;
          description = "Monitor refresh rate in Hz";
        };
        transform = lib.mkOption {
          type = ints.unsigned;
          default = 0;
          description = "Monitor transform (0=normal, 1=90, 2=180, 3=270)";
        };
      };
    });
    default = [];
    example = [ { name = "DP-2"; scale = 1.15; width = 2560; height = 1440; refreshRate = 170; position = { x = 0; y = 0; }; transform = 0; } ];
    description = "Monitor configuration";
  };
}
