{lib, ...}: {
  options.programs.PanchaKosha.mangowc = {
    exec = lib.mkOption {
      type = with lib.types; listOf str;
      default = [
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots"
      ];
      description = "Commands to execute on every config reload";
    };

execOnce = lib.mkOption {
    type = with lib.types; listOf str;
    default = [
      "quickshell"
      "fcitx5 -d"
      "wl-clip-persist --clipboard regular --reconnect-tries 0"
      "wl-paste --type text --watch cliphist store"
      "wl-paste --type image --watch cliphist store"
      "systemctl --user start polkit-kde-authentication-agent-1.service"
    ];
    description = "Commands to execute only once on Mango startup";
  };
  };
}
