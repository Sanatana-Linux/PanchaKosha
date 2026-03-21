{lib, ...}: {
  options.programs.PanchaKosha.mangowc.animations = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable window animations";
    };
    layerAnimations = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable animations for layers";
    };
    openType = lib.mkOption {
      type = lib.types.enum ["zoom" "slide" "fade" "none"];
      default = "fade";
      description = "Animation type for opening windows";
    };
    closeType = lib.mkOption {
      type = lib.types.enum ["zoom" "slide" "fade" "none"];
      default = "fade";
      description = "Animation type for closing windows";
    };
    durationMove = lib.mkOption {
      type = lib.types.int;
      default = 200;
      description = "Duration of move animations in milliseconds";
    };
    durationOpen = lib.mkOption {
      type = lib.types.int;
      default = 200;
      description = "Duration of window open animations in milliseconds";
    };
    durationTag = lib.mkOption {
      type = lib.types.int;
      default = 200;
      description = "Duration of tag switch animations in milliseconds";
    };
    durationClose = lib.mkOption {
      type = lib.types.int;
      default = 200;
      description = "Duration of window close animations in milliseconds";
    };
    durationFocus = lib.mkOption {
      type = lib.types.int;
      default = 0;
      description = "Duration of focus animations in milliseconds";
    };
    curveOpen = lib.mkOption {
      type = lib.types.str;
      default = "0.46,1.0,0.29,1";
      description = "Bezier curve for window open animations";
    };
    curveMove = lib.mkOption {
      type = lib.types.str;
      default = "0.46,1.0,0.29,1";
      description = "Bezier curve for move animations";
    };
    curveTag = lib.mkOption {
      type = lib.types.str;
      default = "0.46,1.0,0.29,1";
      description = "Bezier curve for tag switch animations";
    };
    curveClose = lib.mkOption {
      type = lib.types.str;
      default = "0.08,0.92,0,1";
      description = "Bezier curve for window close animations";
    };
    curveFocus = lib.mkOption {
      type = lib.types.str;
      default = "0.46,1.0,0.29,1";
      description = "Bezier curve for focus animations";
    };
    curveOpafadeout = lib.mkOption {
      type = lib.types.str;
      default = "0.5,0.5,0.5,0.5";
      description = "Bezier curve for opacity fade-out animations";
    };
    curveOpafadein = lib.mkOption {
      type = lib.types.str;
      default = "0.46,1.0,0.29,1";
      description = "Bezier curve for opacity fade-in animations";
    };
  };
}
