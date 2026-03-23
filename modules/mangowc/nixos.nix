{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.panchakosha.mangowc;
  shellCfg = config.panchakosha.quickshell;
  formatters = import ./formatters.nix {inherit lib;};

  # THE SENTINEL: Prevents Quickshell failures from hanging the compositor.
  sentinelLaunch = pkgs.writeShellScript "panchakosha-sentinel" ''
    # Update DBus for portals
    ${pkgs.dbus}/bin/dbus-update-activation-environment --systemd \
      WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots DISPLAY

    # Asynchronous launch of Quickshell
    ${optionalString shellCfg.enable ''
      (
        export QT_QPA_PLATFORM=wayland-egl
        if [ -x "${pkgs.quickshell}/bin/quickshell" ]; then
           ${pkgs.quickshell}/bin/quickshell --path ${shellCfg.configPackage}/share/quickshell/mangowc &
           SHELL_PID=$!
           sleep 2
           if ! kill -0 $SHELL_PID 2>/dev/null; then
             ${pkgs.libnotify}/bin/notify-send -u critical "System Alert" "Shell failed to stabilize. Safe mode active."
           fi
        fi
      ) &
    ''}

    # Run background startup items
    ${concatMapStringsSep "\n" (cmd: "(${cmd} &)") cfg.execOnce}
  '';
in {
  options.panchakosha.mangowc = {
    enable = mkEnableOption "MangoWC Compositor";

    appearance = {
      gappih = mkOption {
        type = types.int;
        default = 3;
      };
      gappiv = mkOption {
        type = types.int;
        default = 3;
      };
      gappoh = mkOption {
        type = types.int;
        default = 3;
      };
      gappov = mkOption {
        type = types.int;
        default = 3;
      };
      borderpx = mkOption {
        type = types.int;
        default = 3;
      };
      rootcolor = mkOption {
        type = types.str;
        default = "131313ff";
      };
      bordercolor = mkOption {
        type = types.str;
        default = "222222ff";
      };
      focuscolor = mkOption {
        type = types.str;
        default = "5ad4e6ff";
      };
      urgentcolor = mkOption {
        type = types.str;
        default = "fc618dff";
      };
      maximizescreencolor = mkOption {
        type = types.str;
        default = "7bd88fff";
      };
      scratchpadcolor = mkOption {
        type = types.str;
        default = "5ad4e6ff";
      };
      globalcolor = mkOption {
        type = types.str;
        default = "948ae3ff";
      };
      overlaycolor = mkOption {
        type = types.str;
        default = "fd9353ff";
      };
      cursorSize = mkOption {
        type = types.int;
        default = 24;
      };
      cursorTheme = mkOption {
        type = types.str;
        default = "Bibata-Modern-Ice";
      };
    };

    effects = {
      blur = mkOption {
        type = types.bool;
        default = true;
      };
      blurLayer = mkOption {
        type = types.bool;
        default = false;
      };
      blurOptimized = mkOption {
        type = types.bool;
        default = true;
      };
      blurPasses = mkOption {
        type = types.int;
        default = 3;
      };
      blurRadius = mkOption {
        type = types.int;
        default = 10;
      };
      shadows = mkOption {
        type = types.bool;
        default = false;
      };
      layerShadows = mkOption {
        type = types.bool;
        default = false;
      };
      shadowOnlyFloating = mkOption {
        type = types.bool;
        default = true;
      };
      shadowsSize = mkOption {
        type = types.int;
        default = 10;
      };
      shadowsBlur = mkOption {
        type = types.int;
        default = 15;
      };
      shadowsColor = mkOption {
        type = types.str;
        default = "000000ff";
      };
      borderRadius = mkOption {
        type = types.int;
        default = 6;
      };
      noRadiusWhenSingle = mkOption {
        type = types.bool;
        default = false;
      };
      focusedOpacity = mkOption {
        type = types.float;
        default = 1.0;
      };
      unfocusedOpacity = mkOption {
        type = types.float;
        default = 0.77;
      };
    };

    animations = {
      enable = mkOption {
        type = types.bool;
        default = true;
      };
      openType = mkOption {
        type = types.enum ["zoom" "slide" "fade" "none"];
        default = "fade";
      };
      closeType = mkOption {
        type = types.enum ["zoom" "slide" "fade" "none"];
        default = "fade";
      };
      durationMove = mkOption {
        type = types.int;
        default = 200;
      };
      durationOpen = mkOption {
        type = types.int;
        default = 200;
      };
      durationTag = mkOption {
        type = types.int;
        default = 200;
      };
      durationClose = mkOption {
        type = types.int;
        default = 200;
      };
      curveOpen = mkOption {
        type = types.str;
        default = "0.46,1.0,0.29,1";
      };
      curveMove = mkOption {
        type = types.str;
        default = "0.46,1.0,0.29,1";
      };
      curveTag = mkOption {
        type = types.str;
        default = "0.46,1.0,0.29,1";
      };
      curveClose = mkOption {
        type = types.str;
        default = "0.08,0.92,0,1";
      };
    };

    layout = {
      scroller = {
        structs = mkOption {
          type = types.int;
          default = 10;
        };
        defaultProportion = mkOption {
          type = types.float;
          default = 0.8;
        };
        focusCenter = mkOption {
          type = types.bool;
          default = false;
        };
        proportionPreset = mkOption {
          type = types.listOf types.float;
          default = [0.5 0.8 1.0];
        };
      };
      masterStack = {
        newIsMaster = mkOption {
          type = types.bool;
          default = true;
        };
        defaultMfact = mkOption {
          type = types.float;
          default = 0.55;
        };
        defaultNmaster = mkOption {
          type = types.int;
          default = 1;
        };
        smartgaps = mkOption {
          type = types.bool;
          default = false;
        };
      };
    };

    input = {
      repeatRate = mkOption {
        type = types.int;
        default = 40;
      };
      repeatDelay = mkOption {
        type = types.int;
        default = 300;
      };
      numlockon = mkOption {
        type = types.bool;
        default = true;
      };
      xkbRulesLayout = mkOption {
        type = types.str;
        default = "us";
      };
      xkbRulesOptions = mkOption {
        type = types.nullOr types.str;
        default = "caps:escape";
      };
      mouseNaturalScrolling = mkOption {
        type = types.bool;
        default = false;
      };
    };

    misc = {
      noBorderWhenSingle = mkOption {
        type = types.bool;
        default = false;
      };
      sloppyFocus = mkOption {
        type = types.bool;
        default = true;
      };
      warpCursor = mkOption {
        type = types.bool;
        default = true;
      };
      focusCrossMonitor = mkOption {
        type = types.bool;
        default = false;
      };
      focusCrossTag = mkOption {
        type = types.bool;
        default = false;
      };
      cursorSize = mkOption {
        type = types.int;
        default = 24;
      };
      dragTileToTile = mkOption {
        type = types.bool;
        default = true;
      };
    };

    monitors = mkOption {
      type = types.listOf types.attrs;
      default = [];
    };

    bindings = mkOption {
      type = types.listOf types.attrs;
      default = [];
    };
    mouseBindings = mkOption {
      type = types.listOf types.attrs;
      default = [];
    };
    windowRules = mkOption {
      type = types.listOf types.attrs;
      default = [];
    };
    tagRules = mkOption {
      type = types.listOf types.attrs;
      default = [];
    };
    layerRules = mkOption {
      type = types.listOf types.attrs;
      default = [];
    };

    exec = mkOption {
      type = types.listOf types.str;
      default = [];
    };
    execOnce = mkOption {
      type = types.listOf types.str;
      default = [];
    };
    extraConfig = mkOption {
      type = types.lines;
      default = "";
    };
  };

  config = mkIf cfg.enable {
    environment.systemPackages = [pkgs.mangowc pkgs.libnotify pkgs.dbus];

    environment.etc = {
      "xdg/mango/config.conf".text = ''
        source = monitors.conf
        source = appearance.conf
        source = effects.conf
        source = animations.conf
        source = layouts.conf
        source = inputs.conf
        source = rules.conf
        source = misc.conf
        exec-once = ${sentinelLaunch}
        ${concatMapStringsSep "\n" (e: "exec = ${e}") cfg.exec}
        ${cfg.extraConfig}
      '';

      "xdg/mango/appearance.conf".text = formatters.generateAppearanceConfig cfg.appearance;
      "xdg/mango/effects.conf".text = formatters.generateEffectsConfig cfg.effects;
      "xdg/mango/animations.conf".text = formatters.generateAnimationsConfig cfg.animations;
      "xdg/mango/layouts.conf".text = formatters.mkLayouts cfg.layout;
      "xdg/mango/inputs.conf".text = formatters.mkInput cfg.input;
      "xdg/mango/misc.conf".text = formatters.generateMiscConfig cfg.misc;
      "xdg/mango/monitors.conf".text = formatters.formatMonitors cfg.monitors;
      "xdg/mango/rules.conf".text = ''
        ${formatters.formatBinds "bind" cfg.bindings "key"}
        ${formatters.formatBinds "mousebind" cfg.mouseBindings "button"}
        ${formatters.formatRules "windowrule" cfg.windowRules}
        ${formatters.formatRules "tagrule" cfg.tagRules}
        ${formatters.formatRules "layerrule" cfg.layerRules}
      '';
    };
  };
}
