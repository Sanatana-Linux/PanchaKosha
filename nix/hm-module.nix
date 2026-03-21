self: {
  lib,
  config,
  pkgs,
  ...
}: let
  cfg = config.wayland.windowManager.mangowc;
  formatters = import ../modules/mangowc/lib/formatters.nix {inherit lib;};
  
  variables = lib.concatStringsSep " " cfg.systemd.variables;
  extraCommands = lib.concatStringsSep " && " cfg.systemd.extraCommands;
  systemdActivation = ''${pkgs.dbus}/bin/dbus-update-activation-environment --systemd ${variables}; ${extraCommands}'';
  
  autostart_sh = pkgs.writeShellScript "autostart.sh" ''
    ${lib.optionalString cfg.systemd.enable systemdActivation}
    ${cfg.autostart_sh}
  '';
in {
  imports = [
    ../modules/mangowc/options/animations.nix
    ../modules/mangowc/options/appearance.nix
    ../modules/mangowc/options/bindings.nix
    ../modules/mangowc/options/effects.nix
    ../modules/mangowc/options/input.nix
    ../modules/mangowc/options/scroller.nix
    ../modules/mangowc/options/master-stack.nix
    ../modules/mangowc/options/misc.nix
    ../modules/mangowc/options/overview.nix
  ];

  options = {
    wayland.windowManager.mangowc = with lib; {
      enable = mkOption {
        type = types.bool;
        default = false;
        description = "Enable MangoWC compositor";
      };

      package = lib.mkOption {
        type = lib.types.package;
        default = self.packages.${pkgs.stdenv.hostPlatform.system}.mangowc or pkgs.mangowc;
        description = "The mangowc package to use";
      };

      systemd = {
        enable = mkOption {
          type = types.bool;
          default = pkgs.stdenv.isLinux;
          example = false;
          description = ''
            Whether to enable `mangowc-session.target` on
            mangowc startup. This links to
            `graphical-session.target`.
            Some important environment variables will be imported to systemd
            and dbus user environment before reaching the target.
          '';
        };
        variables = mkOption {
          type = types.listOf types.str;
          default = [
            "DISPLAY"
            "WAYLAND_DISPLAY"
            "XDG_CURRENT_DESKTOP"
            "XDG_SESSION_TYPE"
            "NIXOS_OZONE_WL"
            "XCURSOR_THEME"
            "XCURSOR_SIZE"
          ];
          example = ["--all"];
          description = ''
            Environment variables imported into the systemd and D-Bus user environment.
          '';
        };
        extraCommands = mkOption {
          type = types.listOf types.str;
          default = [
            "systemctl --user reset-failed"
            "systemctl --user start mangowc-session.target"
          ];
          description = ''
            Extra commands to run after D-Bus activation.
          '';
        };
        xdgAutostart = mkEnableOption ''
          autostart of applications using
          `systemd-xdg-autostart-generator(8)`
        '';
      };

      environment = mkOption {
        type = with types; attrsOf str;
        default = {
          XDG_CURRENT_DESKTOP = "wlroots";
          QT_QPA_PLATFORM = "wayland";
          XDG_SESSION_TYPE = "wayland";
          GDK_BACKEND = "wayland";
          SDL_VIDEODRIVER = "wayland";
          CLUTTER_BACKEND = "wayland";
          MOZ_ENABLE_WAYLAND = "1";
          _JAVA_AWT_WM_NONREPARENTING = "1";
          GTK_USE_PORTAL = "1";
          NIXOS_XDG_OPEN_USE_PORTAL = "1";
          ANKI_WAYLAND = "1";
          QT_AUTO_SCREEN_SCALE_FACTOR = "1";
          QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
          QT_QPA_PLATFORMTHEME = "qt5ct";
        };
        description = "Environment variables to set";
      };

      exec = mkOption {
        type = with types; listOf str;
        default = [];
        description = "Commands to execute on every config reload";
      };

      execOnce = mkOption {
        type = with types; listOf str;
        default = [
          "quickshell"
        ];
        description = "Commands to execute only once on MangoWC startup";
      };

      settings = mkOption {
        description = "mangowc config content";
        type = types.lines;
        default = "";
        example = ''
          # menu and terminal
          bind=Alt,space,spawn,rofi -show drun
          bind=Alt,Return,spawn,foot
        '';
      };

      extraConfig = mkOption {
        type = types.lines;
        default = "";
        description = "Extra configuration lines to append to the config file";
      };

      autostart_sh = mkOption {
        type = types.lines;
        default = "";
        description = "Shell script content for autostart (shebang not needed)";
      };

      monitors = mkOption {
        type = with types; attrsOf (submodule {
          options = {
            name = mkOption {
              type = str;
              description = "Monitor name (supports regex)";
            };
            scale = mkOption {
              type = numbers.nonnegative;
              default = 1;
              description = "Monitor scale factor";
            };
            position = {
              x = mkOption {
                type = int;
                default = 0;
                description = "Monitor X position";
              };
              y = mkOption {
                type = int;
                default = 0;
                description = "Monitor Y position";
              };
            };
            width = mkOption {
              type = int;
              description = "Monitor width in pixels";
            };
            height = mkOption {
              type = int;
              description = "Monitor height in pixels";
            };
            refreshRate = mkOption {
              type = numbers.nonnegative;
              default = 60;
              description = "Monitor refresh rate in Hz";
            };
            transform = mkOption {
              type = ints.unsigned;
              default = 0;
              description = "Monitor transform (0=normal, 90=right, 180=inverted, 270=left)";
            };
          };
        });
        default = {};
        description = "Monitor configuration";
      };
    };
    
    programs.PanchaKosha.mangowc = {
      animations = lib.mkOption {
        type = lib.types.attrs;
        default = {};
        description = "Animation settings (see options/animations.nix)";
      };
      appearance = lib.mkOption {
        type = lib.types.attrs;
        default = {};
        description = "Appearance settings (see options/appearance.nix)";
      };
      effects = lib.mkOption {
        type = lib.types.attrs;
        default = {};
        description = "Effect settings (see options/effects.nix)";
      };
      input = lib.mkOption {
        type = lib.types.attrs;
        default = {};
        description = "Input settings (see options/input.nix)";
      };
      layout = lib.mkOption {
        type = lib.types.attrs;
        default = {};
        description = "Layout settings (see options/layout.nix)";
      };
      misc = lib.mkOption {
        type = lib.types.attrs;
        default = {};
        description = "Misc settings (see options/misc.nix)";
      };
      overview = lib.mkOption {
        type = lib.types.attrs;
        default = {};
        description = "Overview settings (see options/overview.nix)";
      };
      bindings = lib.mkOption {
        type = with lib.types; listOf (submodule {
          options = {
            mods = lib.mkOption {
              type = listOf (enum ["SUPER" "CTRL" "ALT" "SHIFT" "NONE"]);
              description = "Modifier keys";
            };
            key = lib.mkOption {
              type = str;
              description = "Key to bind";
            };
            command = lib.mkOption {
              type = str;
              description = "Command to execute";
            };
            params = lib.mkOption {
              type = nullOr str;
              default = null;
              description = "Optional parameters";
            };
          };
        });
        default = [];
        description = "Keyboard bindings";
      };
      mouseBindings = lib.mkOption {
        type = with lib.types; listOf anything;
        default = [];
        description = "Mouse bindings";
      };
      axisBindings = lib.mkOption {
        type = with lib.types; listOf anything;
        default = [];
        description = "Axis/scroll bindings";
      };
      gestureBindings = lib.mkOption {
        type = with lib.types; listOf anything;
        default = [];
        description = "Touchpad gesture bindings";
      };
      switchBindings = lib.mkOption {
        type = with lib.types; listOf anything;
        default = [];
        description = "Laptop lid switch bindings";
      };
      tagRules = lib.mkOption {
        type = with lib.types; listOf anything;
        default = [];
        description = "Tag-specific rules";
      };
      windowRules = lib.mkOption {
        type = with lib.types; listOf anything;
        default = [];
        description = "Window rules";
      };
      layerRules = lib.mkOption {
        type = with lib.types; listOf anything;
        default = [];
        description = "Layer rules";
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      cfg.package
      wl-clipboard
      grim
      slurp
      wlr-randr
    ];

    xdg.configFile = {
      "mango/config.conf" = lib.mkIf (cfg.settings != "" || cfg.extraConfig != "") {
        text = ''
          # MangoWC Configuration
          # Generated by Pancha Kosha home-manager configuration

          # ========================================
          # Window effects
          # ========================================
          ${formatters.generateEffectsConfig config.programs.PanchaKosha.mangowc.effects}

          # ========================================
          # Animation Configuration
          # ========================================
          ${formatters.generateAnimationsConfig config.programs.PanchaKosha.mangowc.animations}

          # ========================================
          # Scroller Layout Setting
          # ========================================
          ${formatters.generateScrollerConfig config.programs.PanchaKosha.mangowc.layout.scroller}

          # ========================================
          # Master-Stack Layout Setting
          # ========================================
          ${formatters.generateMasterStackConfig config.programs.PanchaKosha.mangowc.layout.masterStack}

          # ========================================
          # Overview Setting
          # ========================================
          ${formatters.generateOverviewConfig config.programs.PanchaKosha.mangowc.overview}

          # ========================================
          # Misc
          # ========================================
          ${formatters.generateMiscConfig config.programs.PanchaKosha.mangowc.misc config.programs.PanchaKosha.mangowc.input.cursor.size}

          # ========================================
          # Keyboard
          # ========================================
          ${formatters.generateKeyboardConfig config.programs.PanchaKosha.mangowc.input.keyboard}

          # ========================================
          # Trackpad (requires relogin)
          # ========================================
          ${formatters.generateTrackpadConfig config.programs.PanchaKosha.mangowc.input.trackpad}

          # ========================================
          # Mouse (requires relogin)
          # ========================================
          ${formatters.generateMouseConfig config.programs.PanchaKosha.mangowc.input.mouse config.programs.PanchaKosha.mangowc.input.cursor.theme}

          # ========================================
          # Appearance
          # ========================================
          ${formatters.generateAppearanceConfig config.programs.PanchaKosha.mangowc.appearance}

          # ========================================
          # Monitors
          # ========================================
          ${formatters.formatMonitors cfg.monitors}

          # ========================================
          # Rules and Bindings
          # ========================================
          ${formatters.formatTagRules config.programs.PanchaKosha.mangowc.tagRules}
          ${formatters.formatWindowRules config.programs.PanchaKosha.mangowc.windowRules}
          ${formatters.formatBinds config.programs.PanchaKosha.mangowc.bindings}
          ${formatters.formatLayerRules config.programs.PanchaKosha.mangowc.layerRules}
          ${formatters.formatMouseBinds config.programs.PanchaKosha.mangowc.mouseBindings}
          ${formatters.formatAxisBinds config.programs.PanchaKosha.mangowc.axisBindings}
          ${formatters.formatSwitchBinds config.programs.PanchaKosha.mangowc.switchBindings}
          ${formatters.formatGestureBinds config.programs.PanchaKosha.mangowc.gestureBindings}

          # ========================================
          # Environment and Execution
          # ========================================
          ${formatters.formatEnvs cfg.environment}
          ${lib.concatMapStringsSep "\n" (exec: "exec-once=${exec}") cfg.execOnce}
          ${lib.concatMapStringsSep "\n" (exec: "exec=${exec}") cfg.exec}

          # ========================================
          # User Config
          # ========================================
          ${cfg.settings}

          # ========================================
          # User's Extra Raw Config
          # ========================================
          ${cfg.extraConfig}
        '';
      };
      "mango/autostart.sh" = lib.mkIf (cfg.autostart_sh != "") {
        source = autostart_sh;
        executable = true;
      };
    };

    systemd.user.targets.mangowc-session = lib.mkIf cfg.systemd.enable {
      Unit = {
        Description = "mangowc compositor session";
        Documentation = ["man:systemd.special(7)"];
        BindsTo = ["graphical-session.target"];
        Wants =
          [
            "graphical-session-pre.target"
          ]
          ++ lib.optional cfg.systemd.xdgAutostart "xdg-desktop-autostart.target";
        After = ["graphical-session-pre.target"];
        Before = lib.optional cfg.systemd.xdgAutostart "xdg-desktop-autostart.target";
      };
    };
  };
}
