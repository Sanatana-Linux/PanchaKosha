//@ pragma Env QS_NO_RELOAD_POPUP=1

import Quickshell
import qs.modules.bar
import qs.modules.launcher
import qs.modules.settingsWindow
import qs.modules.controlCenter
import qs.modules.onScreenDisplays
import qs.modules.clipHistory
import qs.modules.wallpaper
import qs.modules.lockscreen
import qs.modules.mangowcLayoutSwitcher
import qs.modules.screenshot
import qs.modules.cheatsheet
import qs.modules.polkit
import qs.settings

Scope {
  Wallpaper {}
  LazyLoader {
    active: Config.showSplashOnWallpaper
    Splash {}
  }

  LazyLoader {
    active: AppState.barVisible
    Bar {}
  }
  LazyLoader {
    active: AppState.settingsWindowVisible
    SettingsWindow {}
  }
  LazyLoader {
    active: AppState.launcherVisible
    Launcher {}
  }
  // Screenshot controller — active always to accept IPC/keybindings
  LazyLoader {
    active: true
    Screenshot.Controller {}
  }
  LazyLoader {
    active: AppState.clipHistVisible
    ClipHistory {}
  }
  LazyLoader {
    active: AppState.controlCenterVisible
    ControlCenter {}
  }
  LazyLoader {
    active: AppState.preLockOverlayVisible
    LockscreenOverlay {}
  }
  LazyLoader {
    active: AppState.lockscreenVisible
    Lock {}
  }

  // MangOWC Layout Switcher - always active for Mango compositor
  MangowcLayoutSwitcher.MangowcLayoutSwitcher {}

  // Cheatsheet - keybind reference
  Cheatsheet.Cheatsheet {}

  // Polkit authentication dialog
  Polkit.Polkit {}

  // Notification popup - always active to receive notifications
  NotificationPopup {}
  ReloadPopup {}
}
