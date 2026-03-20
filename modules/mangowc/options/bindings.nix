{lib, ...}: {
  options.programs.panchakosha.mangowc = {
    bindings = lib.mkOption {
      type = with lib.types; listOf (submodule {
        options = {
          mods = lib.mkOption {
            type = listOf (enum ["SUPER" "CTRL" "ALT" "SHIFT" "NONE"]);
            description = "Modifier keys for the binding";
          };
          key = lib.mkOption {
            type = str;
            description = "Key to bind (use output from xev/wev)";
          };
          command = lib.mkOption {
            type = str;
            description = "Command to execute";
          };
          params = lib.mkOption {
            type = nullOr str;
            default = null;
            description = "Optional parameters for the command";
          };
          bindl = lib.mkOption {
            type = bool;
            default = false;
            description = "Use bindl instead of bind (works when input device is disabled)";
          };
        };
      });
  default = [
    { mods = ["SUPER"]; key = "r"; command = "reload_config"; }
    { mods = ["SUPER" "SHIFT"]; key = "Return"; command = "spawn"; params = "quickshell ipc call state toggleLauncher"; }
    { mods = ["SUPER"]; key = "Return"; command = "toggle_scratchpad"; params = "kitty"; }
    { mods = ["SUPER" "SHIFT"]; key = "space"; command = "switch_layout"; }
    { mods = ["SUPER"]; key = "m"; command = "quit"; }
    { mods = ["SUPER"]; key = "q"; command = "killclient"; }
    { mods = ["SUPER"]; key = "Print"; command = "spawn"; params = "quickshell ipc call screenshot area"; }
    { mods = ["SUPER" "CTRL"]; key = "Print"; command = "spawn"; params = "quickshell ipc call screenshot fullClipboard"; }
    { mods = ["SUPER"]; key = "Tab"; command = "focusstack"; params = "next"; }
    { mods = ["SUPER"]; key = "Left"; command = "focusdir"; params = "left"; }
    { mods = ["SUPER"]; key = "Right"; command = "focusdir"; params = "right"; }
    { mods = ["SUPER"]; key = "Up"; command = "focusdir"; params = "up"; }
    { mods = ["SUPER"]; key = "Down"; command = "focusdir"; params = "down"; }
    { mods = ["SUPER" "SHIFT"]; key = "Up"; command = "exchange_client"; params = "up"; }
    { mods = ["SUPER" "SHIFT"]; key = "Down"; command = "exchange_client"; params = "down"; }
    { mods = ["SUPER" "SHIFT"]; key = "Left"; command = "exchange_client"; params = "left"; }
    { mods = ["SUPER" "SHIFT"]; key = "Right"; command = "exchange_client"; params = "right"; }
    { mods = ["SUPER"]; key = "g"; command = "toggleglobal"; }
    { mods = ["ALT"]; key = "Tab"; command = "toggleoverview"; }
    { mods = ["SUPER"]; key = "t"; command = "togglefloating"; }
    { mods = ["SUPER"]; key = "f"; command = "togglemaximizescreen"; }
    { mods = ["SUPER" "SHIFT"]; key = "f"; command = "togglefullscreen"; }
    { mods = ["ALT" "SHIFT"]; key = "f"; command = "togglefakefullscreen"; }
    { mods = ["SUPER"]; key = "i"; command = "minimized"; }
    { mods = ["SUPER"]; key = "o"; command = "toggleoverlay"; }
    { mods = ["SUPER" "SHIFT"]; key = "I"; command = "restore_minimized"; }
    { mods = ["ALT"]; key = "z"; command = "toggle_scratchpad"; }
    { mods = ["ALT"]; key = "e"; command = "set_proportion"; params = "1.0"; }
    { mods = ["SUPER"]; key = "r"; command = "switch_proportion_preset"; }
    { mods = ["SUPER"]; key = "n"; command = "switch_layout"; }
    { mods = ["ALT"]; key = "Left"; command = "viewtoleft"; params = "0"; }
    { mods = ["CTRL"]; key = "Left"; command = "viewtoleft_have_client"; params = "0"; }
    { mods = ["ALT"]; key = "Right"; command = "viewtoright"; params = "0"; }
    { mods = ["CTRL"]; key = "Right"; command = "viewtoright_have_client"; params = "0"; }
    { mods = ["CTRL" "SUPER"]; key = "Left"; command = "tagtoleft"; params = "0"; }
    { mods = ["CTRL" "SUPER"]; key = "Right"; command = "tagtoright"; params = "0"; }
    { mods = ["ALT" "SHIFT"]; key = "Left"; command = "focusmon"; params = "left"; }
    { mods = ["ALT" "SHIFT"]; key = "Right"; command = "focusmon"; params = "right"; }
    { mods = ["SUPER" "ALT"]; key = "Left"; command = "tagmon"; params = "left"; }
    { mods = ["SUPER" "ALT"]; key = "Right"; command = "tagmon"; params = "right"; }
    { mods = ["ALT" "SHIFT"]; key = "X"; command = "incgaps"; params = "1"; }
    { mods = ["ALT" "SHIFT"]; key = "Z"; command = "incgaps"; params = "-1"; }
    { mods = ["ALT" "SHIFT"]; key = "R"; command = "togglegaps"; }
    { mods = ["SUPER" "ALT"]; key = "V"; command = "spawn"; params = "quickshell ipc call state toggleClipboard"; }
    { mods = ["SUPER"]; key = "V"; command = "spawn"; params = "quickshell ipc call state toggleClipboard"; }
    { mods = ["SUPER"]; key = "L"; command = "spawn"; params = "quickshell ipc call state lockScreen"; bindl = true; }
    { mods = ["SUPER"]; key = "c"; command = "spawn"; params = "quickshell ipc call state toggleControlCenter"; }
    { mods = ["SUPER"]; key = "s"; command = "spawn"; params = "quickshell ipc call state toggleSettingsWindow"; }
    { mods = ["SUPER"]; key = "h"; command = "spawn"; params = "quickshell ipc call state toggleClipboard"; }
    { mods = ["SUPER" "SHIFT"]; key = "n"; command = "spawn"; params = "quickshell ipc call state nextWallpaper"; }
      ] ++ (builtins.genList (i: {
        mods = ["SUPER"];
        key = toString (i + 1);
        command = "view";
        params = "${toString (i + 1)},0";
      }) 9) ++ (builtins.genList (i: {
        mods = ["CTRL"];
        key = toString (i + 1);
        command = "tag";
        params = "${toString (i + 1)},0";
      }) 9) ++ [
        { mods = ["CTRL" "SHIFT"]; key = "Up"; command = "movewin"; params = "+0,-50"; }
        { mods = ["CTRL" "SHIFT"]; key = "Down"; command = "movewin"; params = "+0,+50"; }
        { mods = ["CTRL" "SHIFT"]; key = "Left"; command = "movewin"; params = "-50,+0"; }
        { mods = ["CTRL" "SHIFT"]; key = "Right"; command = "movewin"; params = "+50,+0"; }
        { mods = ["CTRL" "ALT"]; key = "Up"; command = "resizewin"; params = "+0,-50"; }
        { mods = ["CTRL" "ALT"]; key = "Down"; command = "resizewin"; params = "+0,+50"; }
        { mods = ["CTRL" "ALT"]; key = "Left"; command = "resizewin"; params = "-50,+0"; }
        { mods = ["CTRL" "ALT"]; key = "Right"; command = "resizewin"; params = "+50,+0"; }
      ];
      description = "Keyboard bindings";
    };

    mouseBindings = lib.mkOption {
      type = with lib.types; listOf (submodule {
        options = {
          mods = lib.mkOption {
            type = listOf (enum ["SUPER" "CTRL" "ALT" "SHIFT" "NONE"]);
            description = "Modifier keys for the mouse binding";
          };
          button = lib.mkOption {
            type = enum ["btn_left" "btn_middle" "btn_right"];
            description = "Mouse button to bind";
          };
          command = lib.mkOption {
            type = str;
            description = "Command to execute";
          };
          params = lib.mkOption {
            type = nullOr str;
            default = null;
            description = "Optional parameters for the command";
          };:qa!

        };
      });
      default = [
        { mods = ["SUPER"]; button = "btn_left"; command = "moveresize"; params = "curmove"; }
        { mods = ["NONE"]; button = "btn_middle"; command = "togglemaximizescreen"; params = "0"; }
        { mods = ["SUPER"]; button = "btn_right"; command = "moveresize"; params = "curresize"; }
        { mods = ["NONE"]; button = "btn_left"; command = "toggleoverview"; params = "1"; }
        { mods = ["NONE"]; button = "btn_right"; command = "killclient"; params = "0"; }
      ];
      description = "Mouse button bindings";
    };

    windowRules = lib.mkOption {
      type = with lib.types; listOf (attrsOf (oneOf [int str bool]));
      default = [
        { width = 1000; height = 900; isfloating = 1; appid = "yesplaymusic"; }
        { globalkeybinding = "ctrl+alt-o"; appid = "com.obsproject.Studio"; }
        { tags = 4; appid = "discord"; }
        { force_tearing = 1; title = "Counter-Strike 2"; }
        { isnamedscratchpad = 1; width = 1280; height = 800; appid = "st-yazi"; }
        { isnamedscratchpad = 1; width = 1280; height = 800; appid = "kitty"; }
        { width = 1000; height = 900; isfloating = 1; appid = "com.follow.clash"; }
      ];
      description = "Window rules based on appid/title";
    };

    tagRules = lib.mkOption {
      type = with lib.types; listOf (attrsOf (oneOf [int str]));
      default = [
        { id = 1; layout_name = "scroller"; no_hide = 1; }
        { id = 2; layout_name = "tgmix"; }
        { id = 3; layout_name = "grid"; }
        { id = 4; layout_name = "deck"; }
        { id = 5; layout_name = "vertical_scroller"; }
        { id = 6; layout_name = "tile"; }
        { id = 7; layout_name = "tile"; }
        { id = 8; layout_name = "tile"; }
        { id = 9; layout_name = "tile"; }
      ];
      description = "Tag-specific rules (layout, monitor assignment, etc.)";
    };

    layerRules = lib.mkOption {
      type = with lib.types; listOf (attrsOf str);
      default = [
        { animation_type_open = "zoom"; layer_name = "rofi"; }
        { noblur = "1"; layer_name = "selection"; }
        { noanim = "1"; layer_name = "swaync"; }
      ];
      description = "Layer-specific rules for windows";
    };
  };
}
