# Project Structure

```
PanchaKosha-main/
├── modules/
│   ├── greetd/
│   │   ├── options/
│   │   │   ├── appearance.nix
│   │   │   └── session.nix
│   │   ├── AGENTS.md
│   │   ├── QUICKSTART.md
│   │   └── module.nix
│   ├── mangowc/
│   │   ├── lib/
│   │   │   └── formatters.nix
│   │   ├── options/
│   │   │   ├── scripts/
│   │   │   │   └── screenshot
│   │   │   ├── animations.nix
│   │   │   ├── appearance.nix
│   │   │   ├── bindings.nix
│   │   │   ├── effects.nix
│   │   │   ├── env.nix
│   │   │   ├── exec.nix
│   │   │   ├── input.nix
│   │   │   ├── master-stack.nix
│   │   │   ├── misc.nix
│   │   │   ├── monitor.nix
│   │   │   ├── overview.nix
│   │   │   └── scroller.nix
│   │   ├── AGENTS.md
│   │   ├── mangowc.desktop
│   │   └── module.nix
│   └── quickshell/
│       ├── config/
│       │   ├── components/
│       │   │   ├── animations/
│       │   │   │   ├── AnimatedColor.qml
│       │   │   │   ├── AnimatedHeight.qml
│       │   │   │   ├── AnimatedOpacity.qml
│       │   │   │   ├── AnimatedPosition.qml
│       │   │   │   ├── AnimatedRotation.qml
│       │   │   │   ├── AnimatedScale.qml
│       │   │   │   ├── AnimatedWidth.qml
│       │   │   │   └── AnimationConfig.qml
│       │   │   ├── notifications/
│       │   │   │   ├── NotificationActionButton.qml
│       │   │   │   ├── NotificationContent.qml
│       │   │   │   ├── NotificationIcon.qml
│       │   │   │   └── notification_utils.js
│       │   │   ├── ActionButton.qml
│       │   │   ├── Drawer.qml
│       │   │   ├── IconAndText.qml
│       │   │   ├── Mainscreen.qml
│       │   │   ├── Popup.qml
│       │   │   ├── PopupSeparator.qml
│       │   │   ├── QsMenu.qml
│       │   │   ├── Searchbar.qml
│       │   │   ├── Tabs.qml
│       │   │   ├── Toggle.qml
│       │   │   ├── TrayIcon.qml
│       │   │   └── WindowActionPopup.qml
│       │   ├── modules/
│       │   │   ├── bar/
│       │   │   │   ├── components/
│       │   │   │   │   ├── UnifiedTaskbar/
│       │   │   │   │   │   ├── UnifiedTaskbar.qml
│       │   │   │   │   │   └── UnifiedTaskbarSettings.qml
│       │   │   │   │   ├── Audio.qml
│       │   │   │   │   ├── Background.qml
│       │   │   │   │   ├── DateTime.qml
│       │   │   │   │   ├── MenuButton.qml
│       │   │   │   │   ├── SystemTray.qml
│       │   │   │   │   ├── VolumeBar.qml
│       │   │   │   │   ├── WindowTitle.qml
│       │   │   │   │   └── WorkspaceIndicator.qml
│       │   │   │   └── Bar.qml
│       │   │   ├── cheatsheet/
│       │   │   │   ├── Cheatsheet.qml
│       │   │   │   ├── CheatsheetKeybinds.qml
│       │   │   │   ├── CheatsheetPeriodicTable.qml
│       │   │   │   ├── ElementTile.qml
│       │   │   │   └── periodic_table.js
│       │   │   ├── clipHistory/
│       │   │   │   ├── ClipHistory.qml
│       │   │   │   ├── ClipHistoryLogic.qml
│       │   │   │   └── ClipListItem.qml
│       │   │   ├── controlCenter/
│       │   │   │   ├── components/
│       │   │   │   │   ├── AudioDevicePicker.qml
│       │   │   │   │   ├── AudioDeviceSelector.qml
│       │   │   │   │   ├── BluetoothDeviceItem.qml
│       │   │   │   │   ├── BluetoothExpanded.qml
│       │   │   │   │   ├── Bubble.qml
│       │   │   │   │   ├── Clock.qml
│       │   │   │   │   ├── ExpandedBubble.qml
│       │   │   │   │   ├── MediaControls.qml
│       │   │   │   │   ├── NotificationCenter.qml
│       │   │   │   │   ├── NotificationGroup.qml
│       │   │   │   │   ├── NotificationItem.qml
│       │   │   │   │   ├── PowerButtonGroup.qml
│       │   │   │   │   ├── PowerModeExpanded.qml
│       │   │   │   │   ├── PowerProfileItem.qml
│       │   │   │   │   ├── QuickSettings.qml
│       │   │   │   │   ├── ReloadButton.qml
│       │   │   │   │   ├── VolumeExpanded.qml
│       │   │   │   │   ├── VolumeMixerEntry.qml
│       │   │   │   │   ├── WifiExpanded.qml
│       │   │   │   │   └── WifiNetworkItem.qml
│       │   │   │   └── ControlCenter.qml
│       │   │   ├── greeter/
│       │   │   │   ├── components/
│       │   │   │   │   ├── BlurredWallpaper.qml
│       │   │   │   │   ├── GreeterBackground.qml
│       │   │   │   │   ├── GreeterContext.qml
│       │   │   │   │   └── GreeterForm.qml
│       │   │   │   ├── pam/
│       │   │   │   │   └── greetd.conf
│       │   │   │   └── Greeter.qml
│       │   │   ├── launcher/
│       │   │   │   ├── assets/
│       │   │   │   │   └── wikipedia-icon.png
│       │   │   │   ├── components/
│       │   │   │   │   ├── ActionListItem.qml
│       │   │   │   │   ├── Applications.qml
│       │   │   │   │   ├── ApplicationsList.qml
│       │   │   │   │   ├── BaseListView.qml
│       │   │   │   │   ├── EmptyListState.qml
│       │   │   │   │   ├── ExpandChevron.qml
│       │   │   │   │   ├── Files.qml
│       │   │   │   │   ├── FilesList.qml
│       │   │   │   │   ├── SelectableListItem.qml
│       │   │   │   │   ├── Websearch.qml
│       │   │   │   │   └── WebsearchList.qml
│       │   │   │   ├── functions/
│       │   │   │   │   ├── ApplicationsLogic.qml
│       │   │   │   │   ├── BaseListLogic.qml
│       │   │   │   │   ├── FilesLogic.qml
│       │   │   │   │   ├── UsageTracker.qml
│       │   │   │   │   └── WebsearchLogic.qml
│       │   │   │   ├── Launcher.qml
│       │   │   │   └── LauncherConfig.qml
│       │   │   ├── lockscreen/
│       │   │   │   ├── components/
│       │   │   │   │   ├── BlurredWallpaper.qml
│       │   │   │   │   ├── LockContext.qml
│       │   │   │   │   └── Surface.qml
│       │   │   │   ├── pam/
│       │   │   │   │   └── password.conf
│       │   │   │   ├── Lock.qml
│       │   │   │   └── LockscreenOverlay.qml
│       │   │   ├── mangowcLayoutSwitcher/
│       │   │   │   ├── BarWidget.qml
│       │   │   │   ├── MangowcLayoutSwitcher.qml
│       │   │   │   └── Panel.qml
│       │   │   ├── onScreenDisplays/
│       │   │   │   ├── components/
│       │   │   │   │   ├── DismissibleSlideAnimation.qml
│       │   │   │   │   └── NotificationPopupItem.qml
│       │   │   │   ├── NotificationPopup.qml
│       │   │   │   └── ReloadPopup.qml
│       │   │   ├── polkit/
│       │   │   │   ├── Polkit.qml
│       │   │   │   └── PolkitContent.qml
│       │   │   ├── screenshot/
│       │   │   │   ├── Controller.qml
│       │   │   │   ├── CutoutRect.qml
│       │   │   │   └── qmldir
│       │   │   ├── settingsWindow/
│       │   │   │   ├── components/
│       │   │   │   │   ├── Dropdown.qml
│       │   │   │   │   ├── ImagePicker.qml
│       │   │   │   │   ├── LineSetting.qml
│       │   │   │   │   ├── LineSpacer.qml
│       │   │   │   │   ├── MapEditor.qml
│       │   │   │   │   ├── RangeSlider.qml
│       │   │   │   │   ├── SettingsSection.qml
│       │   │   │   │   ├── StyledButton.qml
│       │   │   │   │   ├── TagList.qml
│       │   │   │   │   └── TextInput.qml
│       │   │   │   ├── ComponentsSettings.qml
│       │   │   │   ├── GeneralSettings.qml
│       │   │   │   ├── InfoSettings.qml
│       │   │   │   ├── SettingsWindow.qml
│       │   │   │   └── WallpaperSettings.qml
│       │   │   └── wallpaper/
│       │   │       ├── Splash.qml
│       │   │       └── Wallpaper.qml
│       │   ├── services/
│       │   │   ├── network/
│       │   │   │   └── WifiAccessPoint.qml
│       │   │   ├── Audio.qml
│       │   │   ├── BackgroundWindows.qml
│       │   │   ├── Bluetooth.qml
│       │   │   ├── ClipService.qml
│       │   │   ├── DrawerFocusManager.qml
│       │   │   ├── DwlService.qml
│       │   │   ├── DwlWindows.qml
│       │   │   ├── FileSearch.qml
│       │   │   ├── HyprStats.qml
│       │   │   ├── Hyprsunset.qml
│       │   │   ├── MediaService.qml
│       │   │   ├── Network.qml
│       │   │   ├── Notifications.qml
│       │   │   ├── Power.qml
│       │   │   ├── ScreenGeometry.qml
│       │   │   ├── System.qml
│       │   │   ├── Time.qml
│       │   │   ├── WallpaperService.qml
│       │   │   ├── WindowMover.qml
│       │   │   └── WorkspaceService.qml
│       │   ├── settings/
│       │   │   ├── themes/
│       │   │   │   ├── MonokaiPro.qml
│       │   │   │   ├── MonokaiProClassic.qml
│       │   │   │   ├── MonokaiProLight.qml
│       │   │   │   ├── MonokaiProMachine.qml
│       │   │   │   ├── MonokaiProOctagon.qml
│       │   │   │   ├── MonokaiProRistretto.qml
│       │   │   │   └── MonokaiProSpectrum.qml
│       │   │   ├── AppState.qml
│       │   │   ├── Colors.qml
│       │   │   ├── Config.qml
│       │   │   ├── Fonts.qml
│       │   │   ├── UsageMetric.json
│       │   │   └── config.json
│       │   ├── VERSION
│       │   └── shell.qml
│       ├── hm-module.nix
│       └── module.nix
├── nix/
│   ├── hm-module.nix
│   └── nixos-module.nix
├── README.md
├── base16-spectrum.yaml
└── flake.nix
```

# Project Files

## File: `modules/greetd/options/appearance.nix`

```nix
{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.greetd.mangowc;
in {
  options.services.greetd.mangowc.appearance = {
    theme = mkOption {
      type = types.enum [
        "MonokaiProSpectrum"
        "MonokaiProClassic"
        "MonokaiProMachine"
        "MonokaiProOctagon"
        "MonokaiProRistretto"
        "MonokaiProLight"
      ];
      default = "MonokaiProSpectrum";
      description = "Color theme for the greeter";
    };

    wallpaper = mkOption {
      type = types.str;
      default = "";
      description = "Path to wallpaper image";
    };

    blurRadius = mkOption {
      type = types.int;
      default = 64;
      description = "Blur radius for wallpaper background";
    };

    dimming = mkOption {
      type = types.float;
      default = 0.5;
      description = "Darkening overlay opacity (0.0 to 1.0)";
    };

    transparency = mkOption {
      type = types.float;
      default = 0.95;
      description = "Background transparency level";
    };

    showSplash = mkOption {
      type = types.bool;
      default = true;
      description = "Show splash text at bottom of screen";
    };

    splashText = mkOption {
      type = types.str;
      default = "Welcome to MangoWC";
      description = "Custom splash text to display";
    };
  };
}

```

## File: `modules/greetd/options/session.nix`

```nix
{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.greetd.mangowc;
in {
  options.services.greetd.mangowc.session = {
    defaultSession = mkOption {
      type = types.str;
      default = "Hyprland";
      description = "Default desktop session to launch";
    };

    rememberLastSession = mkOption {
      type = types.bool;
      default = true;
      description = "Remember the last selected session";
    };

    rememberUsername = mkOption {
      type = types.bool;
      default = true;
      description = "Remember the last logged in username";
    };

    enableNumlock = mkOption {
      type = types.bool;
      default = true;
      description = "Enable numlock on startup";
    };

    enableFailsafe = mkOption {
      type = types.bool;
      default = true;
      description = "Enable failsafe session option";
    };
  };
}

```

## File: `modules/greetd/AGENTS.md`

```markdown
# AGENTS.md - GreetD NixOS Module

This is a NixOS module for configuring greetd (greeting daemon) with a Quickshell-based greeter that matches the MangoWC/Quickshell lockscreen appearance.

## Overview

The greetd module provides a modern, aesthetically pleasing login screen that integrates seamlessly with the MangoWC compositor and Quickshell shell. It uses the same color themes, blur effects, and styling as the lockscreen for a consistent user experience.

## Project Structure

```
greetd/
├── module.nix             # Main module entry point
├── options/
│   ├── appearance.nix     # Theme, wallpaper, blur settings
│   └── session.nix        # Session management options
└── AGENTS.md              # This documentation file

quickshell/config/modules/greeter/
├── Greeter.qml            # Main greeter component
└── components/
    ├── GreeterContext.qml # Authentication state management
    ├── GreeterBackground.qml # Blurred wallpaper background
    ├── GreeterForm.qml    # Login form with inputs
    └── pam/
        └── greetd.conf    # PAM configuration
```

## Usage

### Enable greetd with default tuigreet

```nix
services.greetd.mangowc = {
  enable = true;
  sessionCommand = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
  sessionUser = "greeter";
};
```

### Enable greetd with Quickshell greeter (recommended)

```nix
services.greetd.mangowc = {
  enable = true;
  quickshellGreeter.enable = true;
  
  # Optional: Configure appearance
  appearance = {
    theme = "CatppuccinMocha";
    wallpaper = "/path/to/wallpaper.png";
    blurRadius = 64;
    dimming = 0.5;
  };
  
  # Optional: Auto-login (disabled by default)
  autoLogin = {
    enable = false;
    user = "your-username";
  };
};
```

## Configuration Options

### Top-level Options

#### `services.greetd.mangowc.enable`
- **Type:** `bool`
- **Default:** `false`
- **Description:** Enable greetd login manager with MangoWC quickshell greeter

#### `services.greetd.mangowc.sessionCommand`
- **Type:** `str`
- **Default:** `${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland`
- **Description:** Command to run for the session

#### `services.greetd.mangowc.sessionUser`
- **Type:** `str`
- **Default:** `"greeter"`
- **Description:** User to run the session command as

#### `services.greetd.mangowc.autoLogin.enable`
- **Type:** `bool`
- **Default:** `false`
- **Description:** Enable automatic login

#### `services.greetd.mangowc.autoLogin.user`
- **Type:** `str`
- **Default:** `""`
- **Description:** User to automatically log in as

#### `services.greetd.mangowc.quickshellGreeter.enable`
- **Type:** `bool`
- **Default:** `false`
- **Description:** Enable quickshell-based greeter with MangoWC styling

### Appearance Options

#### `services.greetd.mangowc.appearance.theme`
- **Type:** Enum
- **Options:** `"CatppuccinMocha"`, `"CatppuccinLatte"`, `"CatppuccinFrappe"`, `"CatppuccinMacchiato"`
- **Default:** `"CatppuccinMocha"`
- **Description:** Color theme for the greeter

#### `services.greetd.mangowc.appearance.wallpaper`
- **Type:** `str`
- **Default:** `""`
- **Description:** Path to wallpaper image

#### `services.greetd.mangowc.appearance.blurRadius`
- **Type:** `int`
- **Default:** `64`
- **Description:** Blur radius for wallpaper background

#### `services.greetd.mangowc.appearance.dimming`
- **Type:** `float`
- **Default:** `0.5`
- **Description:** Darkening overlay opacity (0.0 to 1.0)

#### `services.greetd.mangowc.appearance.transparency`
- **Type:** `float`
- **Default:** `0.95`
- **Description:** Background transparency level

#### `services.greetd.mangowc.appearance.showSplash`
- **Type:** `bool`
- **Default:** `true`
- **Description:** Show splash text at bottom of screen

#### `services.greetd.mangowc.appearance.splashText`
- **Type:** `str`
- **Default:** `"Welcome to MangoWC"`
- **Description:** Custom splash text to display

### Session Options

#### `services.greetd.mangowc.session.defaultSession`
- **Type:** `str`
- **Default:** `"Hyprland"`
- **Description:** Default desktop session to launch

#### `services.greetd.mangowc.session.rememberLastSession`
- **Type:** `bool`
- **Default:** `true`
- **Description:** Remember the last selected session

#### `services.greetd.mangowc.session.rememberUsername`
- **Type:** `bool`
- **Default:** `true`
- **Description:** Remember the last logged in username

#### `services.greetd.mangowc.session.enableNumlock`
- **Type:** `bool`
- **Default:** `true`
- **Description:** Enable numlock on startup

#### `services.greetd.mangowc.session.enableFailsafe`
- **Type:** `bool`
- **Default:** `true`
- **Description:** Enable failsafe session option

## Features

### Greeter UI
- **Time and Date Display:** Large gradient time display with date below
- **Username Input:** Clean input field with focus animation
- **Password Input:** Secure password field with authentication feedback
- **Session Selector:** Dropdown to choose desktop environment
- **Login Button:** Animated button with loading state
- **Failure Feedback:** Red border and error message on auth failure

### Visual Styling
- Matches Quickshell lockscreen appearance exactly
- Blurred wallpaper background
- Catppuccin color themes
- Smooth animations and transitions
- Responsive design (main monitor only)

### Security
- PAM authentication integration
- Password masking
- Secure session handoff
- No plaintext credential storage

## Available Sessions

The greeter includes predefined sessions:
- Hyprland (default)
- Plasma (Wayland)
- Plasma (X11)
- GNOME
- XFCE
- Openbox

Additional sessions can be added by modifying `GreeterContext.qml`.

## Build/Test Commands

```bash
# Evaluate the Nix module for errors
nix eval .#nixosConfigurations.<hostname>.config.services.greetd.mangowc

# Build the system configuration
nixos-rebuild build

# Build and switch (requires sudo)
sudo nixos-rebuild switch

# Check Nix syntax
nix-instantiate --parse modules/greetd/module.nix

# Test greetd service status
systemctl status greetd

# View greetd logs
journalctl -u greetd -f
```

## Installation Notes

### PAM Configuration

The module requires PAM configuration for greetd. The provided `pam/greetd.conf` should be installed to `/etc/pam.d/greetd`:

```nix
security.pam.services.greetd = {};
```

This is automatically configured when the module is enabled.

### Wayland Compatibility

The greetd service runs on VT1 by default and is fully compatible with Wayland compositors. The security wrapper is automatically configured.

### Quickshell Dependencies

When using the Quickshell greeter, ensure Quickshell is installed:

```nix
environment.systemPackages = [ pkgs.quickshell ];
```

This is handled automatically when `quickshellGreeter.enable = true`.

## Troubleshooting

### Greeter doesn't start
- Check greetd service status: `systemctl status greetd`
- Verify PAM configuration exists: `/etc/pam.d/greetd`
- Check logs: `journalctl -u greetd`

### Authentication fails
- Verify PAM configuration is correct
- Check user exists and password is correct
- Ensure proper permissions on greetd socket

### Quickshell greeter shows errors
- Verify Quickshell installation
- Check QML imports are available
- Review Quickshell logs for QML errors

### Wallpaper doesn't load
- Check wallpaper path is absolute and accessible
- Ensure file format is supported (PNG, JPG)
- Verify permissions allow greeter user to read file

## Code Style Guidelines

Follow the same conventions as the mangowc module:
- Use 2-space indentation
- Opening braces on same line for attribute sets
- Use `inherit` for same-name bindings
- Provide sensible defaults
- Document all options clearly
- Use proper Nix types for type safety

## Related Modules

- `modules/mangowc/` - MangoWC compositor configuration
- `modules/quickshell/` - Quickshell shell configuration
- `modules/quickshell/config/modules/lockscreen/` - Lockscreen implementation

## Future Enhancements

Potential improvements:
- Session persistence across reboots
- Username autocompletion
- Custom session commands
- Additional theme support
- Multi-monitor support
- Accessibility features
- Animation customization

```

## File: `modules/greetd/QUICKSTART.md`

```markdown
# GreetD Module - Quick Start Guide

## Overview

The greetd module provides a login manager with a Quickshell-based greeter that matches the MangoWC/Quickshell lockscreen appearance.

## Files Created

### NixOS Module (`modules/greetd/`)
- `module.nix` - Main module definition
- `options/appearance.nix` - Theme and visual settings
- `options/session.nix` - Session management options
- `AGENTS.md` - Complete documentation

### Quickshell Greeter (`modules/quickshell/config/modules/greeter/`)
- `Greeter.qml` - Main greeter component
- `components/GreeterContext.qml` - Authentication state management
- `components/GreeterBackground.qml` - Blurred wallpaper background
- `components/GreeterForm.qml` - Login form with username/password
- `components/BlurredWallpaper.qml` - Reusable blur component (copied from lockscreen)
- `pam/greetd.conf` - PAM configuration

## Basic Usage

### Enable in NixOS Configuration

```nix
{ config, pkgs, ... }: {
  imports = [ ./modules/greetd ];
  
  # Enable greetd with Quickshell greeter
  services.greetd.mangowc = {
    enable = true;
    quickshellGreeter.enable = true;
  };
}
```

### With Custom Appearance

```nix
services.greetd.mangowc = {
  enable = true;
  quickshellGreeter.enable = true;
  
  appearance = {
    theme = "CatppuccinMocha";
    blurRadius = 64;
    dimming = 0.5;
    splashText = "Welcome to MangoWC";
  };
  
  session = {
    defaultSession = "Hyprland";
    rememberUsername = true;
    enableNumlock = true;
  };
};
```

### With Auto-login (for testing)

```nix
services.greetd.mangowc = {
  enable = true;
  quickshellGreeter.enable = true;
  
  autoLogin = {
    enable = true;
    user = "your-username";
  };
};
```

## Features

### Visual Styling
- Matches Quickshell lockscreen exactly
- Blurred wallpaper background
- Catppuccin color themes (Mocha, Latte, Frappe, Macchiato)
- Gradient time display
- Smooth animations

### Login Interface
- Username input field
- Password input with masking
- Session selector dropdown
- Login button with loading state
- Authentication failure feedback

### Security
- PAM authentication
- Secure session handoff
- No plaintext credentials

## Available Sessions

Pre-configured sessions:
- Hyprland (default)
- Plasma (Wayland)
- Plasma (X11)
- GNOME
- XFCE
- Openbox

## Testing

### Build Configuration
```bash
nixos-rebuild build
```

### Install and Switch
```bash
sudo nixos-rebuild switch
```

### Check Service Status
```bash
systemctl status greetd
```

### View Logs
```bash
journalctl -u greetd -f
```

## Troubleshooting

### Greeter doesn't start
1. Check service: `systemctl status greetd`
2. Check PAM: `ls -la /etc/pam.d/greetd`
3. View logs: `journalctl -u greetd`

### Authentication fails
1. Verify PAM configuration
2. Check user exists
3. Verify password is correct

### Quickshell errors
1. Check Quickshell installation: `which quickshell`
2. Review QML imports
3. Check logs for QML errors

## Configuration Options

See `AGENTS.md` for complete option documentation.

Key options:
- `services.greetd.mangowc.enable` - Enable greetd
- `services.greetd.mangowc.quickshellGreeter.enable` - Use Quickshell greeter
- `services.greetd.mangowc.appearance.theme` - Color theme
- `services.greetd.mangowc.appearance.blurRadius` - Blur amount
- `services.greetd.mangowc.autoLogin.enable` - Auto-login toggle
- `services.greetd.mangowc.session.defaultSession` - Default DE

## Dependencies

Required packages (auto-installed):
- `greetd` - Greeting daemon
- `quickshell` - QtQuick-based shell
- `pam` - Authentication framework

## Next Steps

1. Enable the module in your NixOS configuration
2. Customize appearance settings
3. Test with auto-login first (optional)
4. Rebuild and switch
5. Remove auto-login for production use

```

## File: `modules/greetd/module.nix`

```nix
{ config, lib, pkgs, ... }:

let
  cfg = config.services.greetd.mangowc;

  # Generate session JSON
  sessionsJson = pkgs.writeText "sessions.json" (builtins.toJSON [
    { name = "Hyprland"; command = "Hyprland"; }
    { name = "Plasma (Wayland)"; command = "startplasma-wayland"; }
    { name = "Plasma (X11)"; command = "startplasma-x11"; }
    { name = "GNOME"; command = "gnome-session"; }
    { name = "XFCE"; command = "startxfce4"; }
    { name = "Openbox"; command = "openbox-session"; }
    { name = "MangoWC"; command = "mangowc"; }
  ]);

  # Quickshell greeter package
  quickshellGreeter = pkgs.stdenv.mkDerivation {
    name = "quickshell-greeter";
    src = ../quickshell/config;
    
    installPhase = ''
      mkdir -p $out/share/quickshell/greeter
      
      # Copy essential settings
      mkdir -p $out/share/quickshell/greeter/settings
      cp settings/*.qml $out/share/quickshell/greeter/settings/
      cp settings/*.json $out/share/quickshell/greeter/settings/
      
      # Copy session definition
      cp ${sessionsJson} $out/share/quickshell/greeter/settings/sessions.json
      
      # Copy shared components
      mkdir -p $out/share/quickshell/greeter/components
      cp -r components/animations $out/share/quickshell/greeter/components/
      
      # Copy greeter module
      mkdir -p $out/share/quickshell/greeter/modules/greeter/components
      cp modules/greeter/Greeter.qml $out/share/quickshell/greeter/modules/greeter/
      cp modules/greeter/components/*.qml $out/share/quickshell/greeter/modules/greeter/components/
      cp -r modules/greeter/pam $out/share/quickshell/greeter/modules/greeter/
      
      # Copy lockscreen components needed by greeter
      cp modules/lockscreen/components/BlurredWallpaper.qml $out/share/quickshell/greeter/modules/greeter/components/
      
      # Copy services needed by greeter
      mkdir -p $out/share/quickshell/greeter/services
      cp -r services/* $out/share/quickshell/greeter/services/ 2>/dev/null || true
      
      # Create greeter-specific shell.qml
      cat > $out/share/quickshell/greeter/shell.qml << 'EOF'
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import qs.modules.greeter

ShellRoot {
    id: greeterRoot
    reloadableId: "greeterModule"

    // Only load the greeter module
    Greeter {
        anchors.fill: parent
    }
}
EOF
      
      # Create qmldir for proper module resolution
      cat > $out/share/quickshell/greeter/qmldir << 'EOF'
module qs
EOF
      
      # Create module qmldir files
      cat > $out/share/quickshell/greeter/modules/greeter/qmldir << 'EOF'
module qs.modules.greeter
Greeter 1.0 Greeter.qml
EOF
      
      cat > $out/share/quickshell/greeter/modules/greeter/components/qmldir << 'EOF'
module qs.modules.greeter.components
GreeterContext 1.0 GreeterContext.qml
GreeterBackground 1.0 GreeterBackground.qml
GreeterForm 1.0 GreeterForm.qml
BlurredWallpaper 1.0 BlurredWallpaper.qml
EOF
      
      # Create settings module qmldir
      cat > $out/share/quickshell/greeter/settings/qmldir << 'EOF'
module qs.settings
Config 1.0 Config.qml
Colors 1.0 Colors.qml
Fonts 1.0 Fonts.qml
AppState 1.0 AppState.qml
Sessions 1.0 Sessions.qml
EOF
      
      # Create Sessions.qml for dynamic session loading
      cat > $out/share/quickshell/greeter/settings/Sessions.qml << 'EOF'
pragma Singleton
import QtQuick
import Quickshell

QtObject {
    property var list: JSON.parse(fileRead(Qt.resolvedUrl("sessions.json")))
}
EOF
    '';
  };

  # Build greetd settings based on configuration
  greetdSettings = {
  default_session.command = if cfg.quickshellGreeter.enable
    then "env QT_QPA_PLATFORM=wayland-egl __GLX_VENDOR_LIBRARY_NAME=nvidia GBM_BACKEND=nvidia-drm ${pkgs.dwl}/bin/dwl -s '${pkgs.quickshell}/bin/quickshell --path ${cfg.quickshellGreeter.package}/share/quickshell/greeter'"
      else cfg.sessionCommand;
    default_session.user = if cfg.quickshellGreeter.enable 
      then "greeter" 
      else cfg.sessionUser;
  } // lib.optionalAttrs (cfg.autoLogin.enable && !cfg.quickshellGreeter.enable) {
    auto_login = {
      user = cfg.autoLogin.user;
      command = cfg.sessionCommand;
    };
  };
in {
  imports = [
    ./options/appearance.nix
    ./options/session.nix
  ];

  options.services.greetd.mangowc = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable greetd login manager with MangoWC quickshell greeter";
    };

    sessionCommand = lib.mkOption {
      type = lib.types.str;
      default = "mangowc";
      description = "Command to run for the session";
    };

    sessionUser = lib.mkOption {
      type = lib.types.str;
      default = "greeter";
      description = "User to run the session command as";
    };

    autoLogin = {
      enable = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Enable automatic login";
      };

      user = lib.mkOption {
        type = lib.types.str;
        default = "";
        description = "User to automatically log in as";
      };
    };

    quickshellGreeter = {
      enable = lib.mkOption {
        type = lib.types.bool;
        default = false;
        description = "Enable quickshell-based greeter with MangoWC styling";
      };

      package = lib.mkOption {
        type = lib.types.package;
        default = quickshellGreeter;
        description = "The quickshell greeter package";
      };
    };
  };

  config = lib.mkIf cfg.enable {
    # Enable greetd service
    services.greetd = {
      enable = true;
      settings = greetdSettings;
    };

    # Install quickshell and greeter assets
    environment.systemPackages = lib.mkIf cfg.quickshellGreeter.enable [
      pkgs.quickshell
      cfg.quickshellGreeter.package
      pkgs.qt6.qtwayland
      pkgs.wlroots
      pkgs.egl-wayland
      pkgs.eglexternalplatform
    ];

    # Security wrapper for greetd (required for Wayland)
    security.pam.services.greetd = {};
  };
}

```

## File: `modules/mangowc/lib/formatters.nix`

```nix
{lib}: let
  boolToInt = b: toString (if b then 1 else 0);
in {
  inherit boolToInt;

  generateEffectsConfig = effects: ''
    blur=${boolToInt effects.blur}
    blur_layer=${boolToInt effects.blurLayer}
    blur_optimized=${boolToInt effects.blurOptimized}
    blur_params_num_passes=${toString effects.blurPasses}
    blur_params_radius=${toString effects.blurRadius}

    shadows=${boolToInt effects.shadows}
    layer_shadows=${boolToInt effects.layerShadows}
    shadow_only_floating=${boolToInt effects.shadowOnlyFloating}
    shadows_size=${toString effects.shadowsSize}
    shadows_blur=${toString effects.shadowsBlur}
    shadowscolor=0x${effects.shadowsColor}

    border_radius=${toString effects.borderRadius}
    no_radius_when_single=${boolToInt effects.noRadiusWhenSingle}
    focused_opacity=${toString effects.focusedOpacity}
    unfocused_opacity=${toString effects.unfocusedOpacity}
  '';

  generateAnimationsConfig = animations: ''
    animations=${boolToInt animations.enable}
    layer_animations=${boolToInt animations.enable}
    animation_type_open=${animations.openType}
    animation_type_close=${animations.closeType}
    animation_duration_move=${toString animations.durationMove}
    animation_duration_open=${toString animations.durationOpen}
    animation_duration_tag=${toString animations.durationTag}
    animation_duration_close=${toString animations.durationClose}
    animation_duration_focus=${toString animations.durationFocus}
    animation_curve_open=${animations.curveOpen}
    animation_curve_move=${animations.curveMove}
    animation_curve_tag=${animations.curveTag}
    animation_curve_close=${animations.curveClose}
    animation_curve_focus=${animations.curveFocus}
    animation_curve_opafadeout=${animations.curveOpafadeout}
    animation_curve_opafadein=${animations.curveOpafadein}
  '';

  generateScrollerConfig = scroller: ''
    scroller_structs=${toString scroller.structs}
    scroller_default_proportion=${toString scroller.defaultProportion}
    scroller_focus_center=${boolToInt scroller.focusCenter}
    scroller_prefer_center=${boolToInt scroller.preferCenter}
    edge_scroller_pointer_focus=${boolToInt scroller.edgeScrollerPointerFocus}
    scroller_default_proportion_single=${toString scroller.defaultProportionSingle}
    scroller_proportion_preset=${lib.concatStringsSep "," (map toString scroller.proportionPreset)}
  '';

  generateMasterStackConfig = masterStack: ''
    new_is_master=${boolToInt masterStack.newIsMaster}
    default_mfact=${toString masterStack.defaultMfact}
    default_nmaster=${toString masterStack.defaultNmaster}
    smartgaps=${boolToInt masterStack.smartgaps}
  '';

  generateOverviewConfig = overview: ''
    hotarea_size=${toString overview.hotAreaSize}
    enable_hotarea=${boolToInt overview.enableHotArea}
    ov_tab_mode=${boolToInt overview.ovTabMode}
    overviewgappi=${toString overview.overviewGappi}
    overviewgappo=${toString overview.overviewGappo}
  '';

  generateMiscConfig = misc: ''
    no_border_when_single=${boolToInt misc.noBorderWhenSingle}
    axis_bind_apply_timeout=${toString misc.axisBindApplyTimeout}
    focus_on_activate=${boolToInt misc.focusOnActivate}
    inhibit_regardless_of_visibility=${boolToInt misc.inhibitRegardlessOfVisibility}
    sloppyfocus=${boolToInt misc.sloppyFocus}
    warpcursor=${boolToInt misc.warpCursor}
    focus_cross_monitor=${boolToInt misc.focusCrossMonitor}
    focus_cross_tag=${boolToInt misc.focusCrossTag}
    enable_floating_snap=${boolToInt misc.enableFloatingSnap}
    snap_distance=${toString misc.snapDistance}
    cursor_size=${toString misc.cursorSize}
    drag_tile_to_tile=${boolToInt misc.dragTileToTile}
  '';

  generateInputConfig = input: ''
    repeat_rate=${toString input.repeatRate}
    repeat_delay=${toString input.repeatDelay}
    numlockon=${boolToInt input.numlockon}
    xkb_rules_layout=${input.xkbRulesLayout}${lib.optionalString (input.xkbRulesOptions != null) "\nxkb_rules_options=${input.xkbRulesOptions}"}

    mouse_natural_scrolling=${boolToInt input.mouseNaturalScrolling}
  '';

  generateAppearanceConfig = appearance: ''
    gappih=${toString appearance.gappih}
    gappiv=${toString appearance.gappiv}
    gappoh=${toString appearance.gappoh}
    gappov=${toString appearance.gappov}
    scratchpad_width_ratio=${toString appearance.scratchpadWidthRatio}
    scratchpad_height_ratio=${toString appearance.scratchpadHeightRatio}
    borderpx=${toString appearance.borderpx}

    rootcolor=0x${appearance.rootcolor}
    bordercolor=0x${appearance.bordercolor}
    focuscolor=0x${appearance.focuscolor}
    urgentcolor=0x${appearance.urgentcolor}
    maximizescreencolor=0x${appearance.maximizescreencolor}
    scratchpadcolor=0x${appearance.scratchpadcolor}
    globalcolor=0x${appearance.globalcolor}
    overlaycolor=0x${appearance.overlaycolor}
    cursor_size=${toString appearance.cursorSize}
    cursor_theme=${appearance.cursorTheme}
  '';

  formatBinds = binds:
    lib.concatStringsSep "\n" (map (bind:
      "${if bind.bindl or false then "bindl" else "bind"}=${lib.concatStringsSep "+" bind.mods},${bind.key},${bind.command}${lib.optionalString (bind.params != null) ",${bind.params}"}"
    ) binds);

  formatMouseBinds = binds:
    lib.concatStringsSep "\n" (map (bind:
      "mousebind=${lib.concatStringsSep "+" bind.mods},${bind.button},${bind.command}${lib.optionalString (bind.params != null) ",${bind.params}"}"
    ) binds);

  formatWindowRules = rules:
    lib.concatStringsSep "\n" (map (rule:
      "windowrule=${lib.concatStringsSep "," (lib.mapAttrsToList (name: value: "${name}:${toString value}") rule)}"
    ) rules);

  formatTagRules = rules:
    lib.concatStringsSep "\n" (map (rule:
      "tagrule=${lib.concatStringsSep "," (lib.mapAttrsToList (name: value: "${name}:${toString value}") rule)}"
    ) rules);

  formatLayerRules = rules:
    lib.concatStringsSep "\n" (map (rule:
      "layerrule=${lib.concatStringsSep "," (lib.mapAttrsToList (name: value: "${name}:${value}") rule)}"
    ) rules);

  formatMonitors = monitors:
    lib.concatStringsSep "\n" (map (monitor:
      "monitorrule=${monitor.name},${toString monitor.scale},${toString monitor.position.x},${toString monitor.position.y},${monitor.width},${monitor.height},${toString monitor.refreshRate}"
    ) monitors);

  formatEnvs = envs:
    lib.concatStringsSep "\n" (map (e: "env=${e}") envs);

  formatExec = execs:
    lib.concatStringsSep "\n" (map (e: "exec=${e}") execs);

  formatExecOnce = execs:
    lib.concatStringsSep "\n" (map (e: "exec-once=${e}") execs);
}

```

## File: `modules/mangowc/options/scripts/screenshot`

```text
#!/bin/bash
# 截图脚本 - 支持区域/全屏截图并调用swappy编辑

# 创建截图目录
mkdir -p "$HOME/Pictures/Screenshots"

case "$1" in
    "area")
        # 区域截图 → swappy编辑
        grim -g "$(slurp)" - | swappy -f -
        ;;
    "area-save")
        # 区域截图 → swappy编辑 → 自动保存
        grim -g "$(slurp)" - | swappy -f - -o - > "$HOME/Pictures/Screenshots/$(date +'%Y%m%d-%H%M%S').png"
        ;;
    "full")
        # 全屏截图 → swappy编辑
        grim - | swappy -f -
        ;;
    "full-save")
        # 全屏截图 → swappy编辑 → 自动保存
        grim - | swappy -f - -o - > "$HOME/Pictures/Screenshots/$(date +'%Y%m%d-%H%M%S').png"
        ;;
    "area-clipboard")
        # 区域截图 → swappy编辑 → 复制到剪贴板
        grim -g "$(slurp)" - | swappy -f - -o - | wl-copy
        ;;
    "full-clipboard")
        # 全屏截图 → swappy编辑 → 复制到剪贴板
        grim - | swappy -f - -o - | wl-copy
        ;;
    *)
        echo "Usage: $0 {area|area-save|full|full-save|area-clipboard|full-clipboard}"
        exit 1
        ;;
esac

```

## File: `modules/mangowc/options/animations.nix`

```nix
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

```

## File: `modules/mangowc/options/appearance.nix`

```nix
{lib, ...}: {
  options.programs.PanchaKosha.mangowc.appearance = {
    gappih = lib.mkOption {
      type = lib.types.int;
      default = 3;
      description = "Inner horizontal gap between windows";
    };
    gappiv = lib.mkOption {
      type = lib.types.int;
      default = 3;
      description = "Inner vertical gap between windows";
    };
    gappoh = lib.mkOption {
      type = lib.types.int;
      default = 3;
      description = "Outer horizontal gap from screen edges";
    };
    gappov = lib.mkOption {
      type = lib.types.int;
      default = 3;
      description = "Outer vertical gap from screen edges";
    };
    scratchpadWidthRatio = lib.mkOption {
      type = lib.types.float;
      default = 0.8;
      description = "Scratchpad width ratio";
    };
    scratchpadHeightRatio = lib.mkOption {
      type = lib.types.float;
      default = 0.9;
      description = "Scratchpad height ratio";
    };
    borderpx = lib.mkOption {
      type = lib.types.int;
      default = 3;
      description = "Window border width in pixels";
    };
rootcolor = lib.mkOption {
    type = lib.types.str;
    default = "131313ff";
    description = "Root window background color in ARGB hex (without 0x prefix)";
  };
  bordercolor = lib.mkOption {
    type = lib.types.str;
    default = "222222ff";
    description = "Unfocused window border color in ARGB hex";
  };
  focuscolor = lib.mkOption {
    type = lib.types.str;
    default = "5ad4e6ff";
    description = "Focused window border color in ARGB hex";
  };
  urgentcolor = lib.mkOption {
    type = lib.types.str;
    default = "fc618dff";
    description = "Urgent window border color in ARGB hex";
  };
  maximizescreencolor = lib.mkOption {
    type = lib.types.str;
    default = "7bd88fff";
    description = "Maximized window border color in ARGB hex";
  };
  scratchpadcolor = lib.mkOption {
    type = lib.types.str;
    default = "5ad4e6ff";
    description = "Scratchpad window border color in ARGB hex";
  };
  globalcolor = lib.mkOption {
    type = lib.types.str;
    default = "948ae3ff";
    description = "Global window border color in ARGB hex";
  };
  overlaycolor = lib.mkOption {
    type = lib.types.str;
    default = "fd9353ff";
    description = "Overlay window border color in ARGB hex";
  };
    cursorSize = lib.mkOption {
      type = lib.types.int;
      default = 24;
      description = "Cursor size in pixels";
    };
    cursorTheme = lib.mkOption {
      type = lib.types.str;
      default = "Bibata-Modern-Ice";
      description = "Cursor theme name";
    };
  };
}

```

## File: `modules/mangowc/options/bindings.nix`

```nix
{lib, ...}: {
  options.programs.PanchaKosha.mangowc = {
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
          };

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

```

## File: `modules/mangowc/options/effects.nix`

```nix
{lib, ...}: {
  options.programs.PanchaKosha.mangowc.effects = {
  blur = lib.mkOption {
    type = lib.types.bool;
    default = true;
    description = "Enable window blur effect";
  };
  blurLayer = lib.mkOption {
    type = lib.types.bool;
    default = false;
    description = "Enable blur for layers";
  };
  blurOptimized = lib.mkOption {
    type = lib.types.bool;
    default = true;
    description = "Cache wallpaper and blur background to reduce GPU usage";
  };
  blurPasses = lib.mkOption {
    type = lib.types.int;
    default = 3;
    description = "Number of blur passes";
  };
  blurRadius = lib.mkOption {
    type = lib.types.int;
    default = 10;
    description = "Blur radius in pixels";
  };
    shadows = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable window shadows";
    };
    layerShadows = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable shadows for layers";
    };
    shadowOnlyFloating = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Only draw shadows for floating windows";
    };
    shadowsSize = lib.mkOption {
      type = lib.types.int;
      default = 10;
      description = "Shadow size in pixels";
    };
    shadowsBlur = lib.mkOption {
      type = lib.types.int;
      default = 15;
      description = "Shadow blur amount";
    };
    shadowsColor = lib.mkOption {
      type = lib.types.str;
      default = "000000ff";
      description = "Shadow color in ARGB hex format (without 0x prefix)";
    };
    borderRadius = lib.mkOption {
      type = lib.types.int;
      default = 6;
      description = "Window border radius in pixels";
    };
    noRadiusWhenSingle = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Disable border radius when only one window is visible";
    };
focusedOpacity = lib.mkOption {
    type = lib.types.float;
    default = 1.0;
    description = "Opacity of focused windows (0.0-1.0)";
  };
  unfocusedOpacity = lib.mkOption {
    type = lib.types.float;
    default = 0.77;
    description = "Opacity of unfocused windows (0.0-1.0)";
  };
  };
}

```

## File: `modules/mangowc/options/env.nix`

```nix
{lib, ...}: {
  options.programs.PanchaKosha.mangowc.env = lib.mkOption {
    type = with lib.types; listOf str;
    default = [ "XCURSOR_SIZE,24" ];
    example = [ "XCURSOR_SIZE,24" "XCURSOR_THEME,Bibata-Modern-Ice" ];
    description = "Environment variables in format 'NAME,VALUE'";
  };
}

```

## File: `modules/mangowc/options/exec.nix`

```nix
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

```

## File: `modules/mangowc/options/input.nix`

```nix
{lib, ...}: {
  options.programs.PanchaKosha.mangowc.input = {
    repeatRate = lib.mkOption {
      type = lib.types.int;
      default = 40;
      description = "Keyboard repeat rate";
    };
    repeatDelay = lib.mkOption {
      type = lib.types.int;
      default = 300;
      description = "Keyboard repeat delay in milliseconds";
    };
    numlockon = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable numlock on startup";
    };
    xkbRulesLayout = lib.mkOption {
      type = lib.types.str;
      default = "us";
      description = "Keyboard layout";
    };
    xkbRulesOptions = lib.mkOption {
      type = lib.types.nullOr lib.types.str;
      default = "caps:escape";
      description = "XKB keyboard options (e.g., 'caps:escape')";
    };
    mouseNaturalScrolling = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable natural scrolling for mouse (requires relogin)";
    };
  };
}

```

## File: `modules/mangowc/options/master-stack.nix`

```nix
{lib, ...}: {
  options.programs.PanchaKosha.mangowc.masterStack = {
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

```

## File: `modules/mangowc/options/misc.nix`

```nix
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

```

## File: `modules/mangowc/options/monitor.nix`

```nix
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

```

## File: `modules/mangowc/options/overview.nix`

```nix
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

```

## File: `modules/mangowc/options/scroller.nix`

```nix
{lib, ...}: {
  options.programs.PanchaKosha.mangowc.scroller = {
    structs = lib.mkOption {
      type = lib.types.int;
      default = 10;
      description = "Width reserved on both sides of screen when window ratio is 1.0";
    };
    defaultProportion = lib.mkOption {
      type = lib.types.float;
      default = 0.8;
      description = "Default proportion for scroller window width";
    };
    focusCenter = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Always center the focused window in scroller layout";
    };
    preferCenter = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Center focused window only if last focused window was outside monitor";
    };
    edgeScrollerPointerFocus = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Focus windows by pointer even if not completely in monitor";
    };
    defaultProportionSingle = lib.mkOption {
      type = lib.types.float;
      default = 1.0;
      description = "Default proportion when only single window in current tag";
    };
    proportionPreset = lib.mkOption {
      type = with lib.types; listOf float;
      default = [0.5 0.8 1.0];
      description = "Preset proportions for cycling window sizes";
    };
  };
}

```

## File: `modules/mangowc/AGENTS.md`

```markdown
# AGENTS.md - MangoWC NixOS Module

This is a NixOS module for configuring MangoWC (Mango Window Compositor), a Wayland compositor. The module generates configuration files from Nix options.

## Build/Test Commands

```bash
# Evaluate the Nix module for errors
nix eval .#nixosConfigurations.<hostname>.config.programs.skeuomorphic.mangowc

# Build the system configuration
nixos-rebuild build

# Build and switch (requires sudo)
nixos-rebuild switch

# Check Nix syntax
nix-instantiate --parse module.nix

# Format Nix files (if nixfmt is available)
nixfmt *.nix lib/*.nix options/*.nix
```

## Project Structure

```
mangowc/
├── module.nix           # Main module entry point, generates config
├── lib/
│   └── formatters.nix   # Config generation functions
├── options/
│   ├── animations.nix   # Animation settings
│   ├── appearance.nix   # Colors, gaps, borders
│   ├── bindings.nix     # Key/mouse/gesture bindings
│   ├── effects.nix      # Blur, shadows, opacity
│   ├── input.nix        # Keyboard/trackpad/mouse settings
│   ├── layout.nix       # Scroller and master-stack layout
│   ├── misc.nix         # Miscellaneous settings
│   ├── overview.nix     # Overview mode settings
│   └── mango/           # Reference modular config files
│       ├── config.conf      # Main config (sources other files)
│       ├── effects.conf     # Window effects config
│       ├── animations.conf  # Animation config
│       ├── keybinds.conf    # Key bindings
│       ├── appearance.conf  # Appearance settings
│       ├── misc.conf        # Misc settings
│       ├── inputs.conf      # Input device config
│       ├── monitor.conf     # Monitor rules
│       ├── env.conf         # Environment variables
│       ├── exec.conf        # Startup commands
│       ├── scroller.conf    # Scroller layout
│       ├── master-stack.conf # Master-stack layout
│       ├── rules.conf       # Window/tag/layer rules
│       ├── overview.conf    # Overview settings
│       └── scripts/         # Helper scripts
```

## Code Style Guidelines

### Nix Formatting

- Use 2-space indentation
- Opening braces on same line for attribute sets
- Use `inherit` for same-name bindings: `inherit (lib) mkOption;`
- Break long attribute sets with one attribute per line

### Imports and Dependencies

```nix
{ config, lib, pkgs, ... }: let
  cfg = config.programs.skeuomorphic.mangowc;
in {
  imports = [ ./options/animations.nix ... ];
  # ...
}
```

### Option Definitions

```nix
someOption = lib.mkOption {
  type = lib.types.bool;
  default = true;
  description = "Clear description of what this does";
};
```

### Type Conventions

- Use `lib.types.bool` for booleans
- Use `lib.types.int` for integers
- Use `lib.types.float` for decimals
- Use `lib.types.str` for strings
- Use `lib.types.nullOr` for optional values
- Use `lib.types.enum` for fixed choices
- Use `lib.types.listOf` for lists
- Use `lib.types.attrsOf` for attribute sets

### Config Generation Pattern

Config content is built using helper functions in `lib/formatters.nix`:

```nix
configContent = ''
  # Section Header
  ${formatters.generateSectionConfig cfg.section}
'';
```

### Formatter Functions

Located in `lib/formatters.nix`:

- `boolToInt`: Convert boolean to 1/0
- `formatLine`: Create `key=value` lines
- `formatColor`: Remove `0x` prefix from hex colors
- `formatBinds`: Format keyboard bindings
- `formatMouseBinds`: Format mouse bindings
- `formatWindowRules`: Format window rules
- `formatMonitors`: Format monitor configuration

### Binding Definitions

Use helper functions for repetitive bindings:

```nix
# Directional bindings
mkDirectionalBinds = mods: command: transform:
  map (key: { inherit mods key command; params = transform key; }) directions;

# Number bindings (1-9)
mkNumberBinds = mods: command: suffix:
  builtins.genList (i: { inherit mods command; key = toString (i + 1); params = "${toString (i + 1)}${suffix}"; }) 9;
```

### Naming Conventions

- Options: camelCase (`repeatRate`, `defaultMfact`)
- Config keys: snake_case matching MangoWC config (`repeat_rate`, `default_mfact`)
- Files: lowercase with hyphens (`master-stack.conf`)

### Modular Structure

The module mirrors the modular config structure in `options/mango/`:

1. Each config section has a corresponding `.nix` file
2. Each `.nix` file defines options for one config area
3. The main `module.nix` imports all option files
4. Config is generated by combining all formatters

### Default Values Philosophy

- Provide sensible defaults that work out-of-box
- Match defaults to reference config in `options/mango/`
- Document when settings require relogin

### Error Handling

Nix is statically typed through the type system. Use proper types to catch errors at eval time:

```nix
type = lib.types.enum [ "zoom" "slide" "fade" "none" ];
```

### Testing Changes

After modifying options:

1. Run `nix-instantiate --parse` on modified files
2. Build with `nixos-rebuild build`
3. Verify generated config at `/etc/xdg/mango/config`

## Key Areas

### Effects (`options/effects.nix`)

Controls blur, shadows, border radius, and opacity settings.

### Animations (`options/animations.nix`)

Window open/close animations, curves, and durations.

### Bindings (`options/bindings.nix`)

Keyboard, mouse, axis, gesture, and switch bindings plus window/tag/layer rules.

### Input (`options/input.nix`)

Keyboard, trackpad, mouse, and cursor settings.

### Layout (`options/layout.nix`)

Scroller and master-stack layout configurations.

### Appearance (`options/appearance.nix`)

Gaps, borders, colors, and scratchpad sizing.

## Configuration Output

The module generates `/etc/xdg/mango/config` with sections matching the modular structure.

```

## File: `modules/mangowc/mangowc.desktop`

```desktop
[Desktop Entry]
Name=MangoWC
Comment=MangoWC Wayland Compositor
Exec=mangowc
Type=Application

```

## File: `modules/mangowc/module.nix`

```nix
{ config, lib, pkgs, ... }:

let
  cfg = config.programs.PanchaKosha.mangowc;
  formatters = import ./lib/formatters.nix { inherit lib; };

  effectsConf = formatters.generateEffectsConfig cfg.effects;
  animationsConf = formatters.generateAnimationsConfig cfg.animations;
  scrollerConf = formatters.generateScrollerConfig cfg.scroller;
  masterStackConf = formatters.generateMasterStackConfig cfg.masterStack;
  overviewConf = formatters.generateOverviewConfig cfg.overview;
  miscConf = formatters.generateMiscConfig cfg.misc;
  inputConf = formatters.generateInputConfig cfg.input;
  appearanceConf = formatters.generateAppearanceConfig cfg.appearance;
  monitorConf = formatters.formatMonitors cfg.monitors;
  envConf = formatters.formatEnvs cfg.env;
  execConf = formatters.formatExec cfg.exec;
  execOnceConf = formatters.formatExecOnce cfg.execOnce;
  keybindsConf = formatters.formatBinds cfg.bindings;
  mousebindsConf = formatters.formatMouseBinds cfg.mouseBindings;
  windowRulesConf = formatters.formatWindowRules cfg.windowRules;
  tagRulesConf = formatters.formatTagRules cfg.tagRules;
  layerRulesConf = formatters.formatLayerRules cfg.layerRules;

  configContent = ''
    # MangoWC Configuration
    # Generated by Pancha Kosha NixOS configuration

    source = monitor.conf
    source = env.conf
    source = inputs.conf
    source = exec.conf
    source = appearance.conf
    source = effects.conf
    source = animations.conf
    source = scroller.conf
    source = master-stack.conf
    source = keybinds.conf
    source = rules.conf
    source = overview.conf
    source = misc.conf
  '';
in {
  imports = [
    ./options/animations.nix
    ./options/appearance.nix
    ./options/bindings.nix
    ./options/effects.nix
    ./options/env.nix
    ./options/exec.nix
    ./options/input.nix
    ./options/master-stack.nix
    ./options/misc.nix
    ./options/monitor.nix
    ./options/overview.nix
    ./options/scroller.nix
  ];

  options.programs.PanchaKosha.mangowc = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable the Mango window compositor";
    };

    extraConfig = lib.mkOption {
      type = lib.types.lines;
      default = "";
      description = "Extra configuration lines to append to the config file";
    };
  };

  config = lib.mkIf cfg.enable {
    xdg.portal = {
      enable = true;
      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-wlr
      ];
      config = {
        common = {
          default = ["wlr" "gtk"];
        };
        wlroots = {
          default = ["wlr" "gtk"];
          "org.freedesktop.impl.portal.FileChooser.OpenFile" = "gtk";
          "org.freedesktop.impl.portal.FileChooser.SaveFile" = "gtk";
          "org.freedesktop.impl.portal.FileChooser.SaveFiles" = "gtk";
          "org.freedesktop.impl.portal.Screenshot" = "wlr";
          "org.freedesktop.impl.portal.ScreenCast" = "wlr";
          "org.freedesktop.impl.portal.RemoteDesktop" = "wlr";
        };
      };
    };

    environment.systemPackages = with pkgs; [
      wlr-randr
      wl-clipboard
      grim
      slurp
    ];

    environment.etc."xdg/mango/config".text = configContent;

    environment.etc."xdg/mango/effects.conf".text = effectsConf;
    environment.etc."xdg/mango/animations.conf".text = animationsConf;
    environment.etc."xdg/mango/scroller.conf".text = scrollerConf;
    environment.etc."xdg/mango/master-stack.conf".text = masterStackConf;
    environment.etc."xdg/mango/overview.conf".text = overviewConf;
    environment.etc."xdg/mango/misc.conf".text = miscConf;
    environment.etc."xdg/mango/inputs.conf".text = inputConf;
    environment.etc."xdg/mango/appearance.conf".text = appearanceConf;
    environment.etc."xdg/mango/monitor.conf".text = monitorConf;
    environment.etc."xdg/mango/env.conf".text = envConf;
    environment.etc."xdg/mango/exec.conf".text = execConf + "\n" + execOnceConf;
    environment.etc."xdg/mango/keybinds.conf".text = keybindsConf + "\n" + mousebindsConf;
    environment.etc."xdg/mango/rules.conf".text = windowRulesConf + "\n" + tagRulesConf + "\n" + layerRulesConf;
  };
}

```

## File: `modules/quickshell/config/components/animations/AnimatedColor.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick

Behavior {
    id: root
    
    // Customizable properties - can be overridden when used
    property int animationDuration: AnimationConfig.defaultDuration
    property int animationEasing: AnimationConfig.defaultEasing
    property bool enabled: AnimationConfig.animationsEnabled
    
    ColorAnimation {
        duration: root.enabled ? root.animationDuration : 0
        easing.type: root.animationEasing
    }
}

```

## File: `modules/quickshell/config/components/animations/AnimatedHeight.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick

Behavior {
    id: root
    
    // Customizable properties - can be overridden when used
    property int animationDuration: AnimationConfig.defaultDuration
    property int animationEasing: AnimationConfig.smoothEasing
    property bool enabled: true
    
    NumberAnimation {
        duration: root.enabled ? root.animationDuration : 0
        easing.type: root.animationEasing
    }
}

```

## File: `modules/quickshell/config/components/animations/AnimatedOpacity.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick

Behavior {
    id: root
    
    // Customizable properties - can be overridden when used
    property int animationDuration: AnimationConfig.defaultDuration
    property int animationEasing: AnimationConfig.defaultEasing
    property bool enabled: AnimationConfig.animationsEnabled
    
    NumberAnimation {
        duration: root.enabled ? root.animationDuration : 0
        easing.type: root.animationEasing
    }
}

```

## File: `modules/quickshell/config/components/animations/AnimatedPosition.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick

Behavior {
    id: root
    
    // Customizable properties - can be overridden when used
    property int animationDuration: AnimationConfig.defaultDuration
    property int animationEasing: AnimationConfig.smoothEasing
    property bool enabled: AnimationConfig.animationsEnabled
    
    NumberAnimation {
        duration: root.enabled ? root.animationDuration : 0
        easing.type: root.animationEasing
    }
}

```

## File: `modules/quickshell/config/components/animations/AnimatedRotation.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick

Behavior {
    id: root
    
    // Customizable properties - can be overridden when used
    property int animationDuration: AnimationConfig.defaultDuration
    property int animationEasing: AnimationConfig.defaultEasing
    property bool enabled: AnimationConfig.animationsEnabled
    
    RotationAnimation {
        duration: root.enabled ? root.animationDuration : 0
        easing.type: root.animationEasing
        direction: RotationAnimation.Shortest
    }
}

```

## File: `modules/quickshell/config/components/animations/AnimatedScale.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick

Behavior {
    id: root
    
    // Customizable properties - can be overridden when used
    property int animationDuration: AnimationConfig.defaultDuration
    property int animationEasing: AnimationConfig.smoothEasing
    property bool enabled: AnimationConfig.animationsEnabled
    
    NumberAnimation {
        duration: root.enabled ? root.animationDuration : 0
        easing.type: root.animationEasing
    }
}

```

## File: `modules/quickshell/config/components/animations/AnimatedWidth.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick

Behavior {
    id: root
    
    // Customizable properties - can be overridden when used
    property int animationDuration: AnimationConfig.defaultDuration
    property int animationEasing: AnimationConfig.smoothEasing
    property bool enabled: true
    
    NumberAnimation {
        duration: root.enabled ? root.animationDuration : 0
        easing.type: root.animationEasing
    }
}

```

## File: `modules/quickshell/config/components/animations/AnimationConfig.qml`

```qml
pragma ComponentBehavior: Bound
pragma Singleton

import QtQuick
import Quickshell

Singleton {
    // Global animation settings for consistent feel across the app
    
    // Duration presets (in milliseconds)
    readonly property int instant: 0
    readonly property int fast: 100
    readonly property int normal: 200
    readonly property int slow: 300
    readonly property int verySlow: 500
    
    // Default duration used by most animations
    readonly property int defaultDuration: normal
    
    // Easing curves
    readonly property int defaultEasing: Easing.OutCubic
    readonly property int smoothEasing: Easing.InOutQuad
    readonly property int snapEasing: Easing.OutBack
    readonly property int elasticEasing: Easing.OutElastic
    
    // Enable/disable all animations globally (useful for accessibility or testing)
    property bool animationsEnabled: true
    
    // Helper function to get effective duration
    function duration(customDuration: int): int {
        return animationsEnabled ? (customDuration >= 0 ? customDuration : defaultDuration) : 0;
    }
}

```

## File: `modules/quickshell/config/components/notifications/NotificationActionButton.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.settings
import qs.services
import qs.components.animations

/**
 * Reusable notification action button component
 */
Rectangle {
    id: root
    
    // Required properties
    required property var action
    required property int notificationId
    
    // Style properties
    property real fontSize: Fonts.h6
    property color backgroundColor: Colors.brighten_5
    property color hoverColor: Colors.brighten_20
    property color textColor: Colors.text
    property real borderWidth: 0
    property color borderColor: "transparent"
    property real buttonRadius: 6
    property real horizontalPadding: 20
    property real verticalPadding: 8
    
    width: actionText.implicitWidth + horizontalPadding
    height: actionText.implicitHeight + verticalPadding
    radius: buttonRadius
    color: actionHover.containsMouse ? hoverColor : backgroundColor
    border.width: borderWidth
    border.color: borderColor
    
    AnimatedColor on color {}
    
    Text {
        id: actionText
        anchors.centerIn: parent
        text: root.action?.text || ""
        font.pixelSize: root.fontSize
        color: root.textColor
    }
    
    MouseArea {
        id: actionHover
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        
        onClicked: (mouse) => {
            mouse.accepted = true
            if (root.action) {
                Notifications.attemptInvokeAction(
                    root.notificationId,
                    root.action.identifier
                )
            }
        }
    }
}

```

## File: `modules/quickshell/config/components/notifications/NotificationContent.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import qs.settings
import qs.services
import qs.components
import "./notification_utils.js" as NotificationUtils

/**
 * Unified notification content component
 * 
 * Handles all notification display scenarios:
 * - Popup notifications (with timer behind dismiss button)
 * - Single notifications in notification center (with timestamp)
 * - Group headers (with app name, timestamp, and dismiss all)
 * - Sub-notifications (regular display)
 * 
 * Usage:
 * - For popups: Set timerComponent, pass notificationObject
 * - For single notifications: Set showTimestamp=true, showDismissButton=true
 * - For groups: Set isGroup=true, pass notificationGroup, provide subNotificationsComponent
 * - For sub-notifications: Just pass notificationObject with appropriate styling
 */
ColumnLayout {
    id: root
    
    // Required properties (one of these must be set)
    property var notificationObject: null  // For single notifications
    property var notificationGroup: null   // For group headers
    
    // Optional properties for customization
    property bool isGroup: false  // Is this a group header?
    
    // Styling properties
    property int maxBodyLines: 4
    property real titleFontSize: Fonts.p
    property real bodyFontSize: Fonts.h6
    property int titleFontWeight: Font.DemiBold
    property color titleColor: Colors.text
    property color bodyColor: Colors.textSubdued
    
    // Display options
    property bool showTimestamp: false
    property bool showDismissButton: true
    property real dismissButtonSize: 20  // Size of dismiss button (can be overridden)
    
    // Custom components
    property Component timerComponent: null  // Optional timer (for popups) - rendered behind dismiss button
    property Component subNotificationsComponent: null  // Optional sub-notifications list (for groups)
    
    // Custom dismiss handler - called when dismiss button is clicked
    signal dismissRequested()
    
    // Internal dismiss handler
    function handleDismiss() {
        dismissRequested()
    }
    
    // Connect signal to default behavior if no handler is connected
    Component.onCompleted: {
        if (!dismissRequested.hasHandlers) {
            dismissRequested.connect(() => {
                if (notificationObject) {
                    Notifications.discardNotification(notificationObject.notificationId)
                }
            })
        }
    }
    
    // Timer control properties (exposed for popup timer management)
    property alias timerLoader: timerLoader
    
    // Constants
    readonly property real timerButtonScaleFactor: 1.10  // Button is 10% smaller when timer is shown
    
    spacing: 8
    
    // Title row (with optional timestamp and dismiss button)
    RowLayout {
        Layout.fillWidth: true
        spacing: 8
        
        // Title/Summary or App name
        Text {
            Layout.fillWidth: true
            text: {
                if (root.isGroup) {
                    return root.notificationGroup?.appName || "Group"
                }
                return root.notificationObject?.summary || "Notification"
            }
            font.pixelSize: root.titleFontSize
            font.weight: root.titleFontWeight
            color: root.titleColor
            wrapMode: Text.Wrap
            maximumLineCount: 2
            elide: Text.ElideRight
        }
        
        // Timestamp
        Text {
            visible: root.showTimestamp
            text: {
                if (!root.showTimestamp) return ""
                const time = root.isGroup 
                    ? (root.notificationGroup?.time ?? Date.now())
                    : (root.notificationObject?.time ?? Date.now())
                return NotificationUtils.getFriendlyNotifTimeString(time)
            }
            font.pixelSize: Fonts.h6
            color: Colors.textSubdued
        }
        
        // Timer + Dismiss button container
        Item {
            Layout.preferredWidth: root.showDismissButton ? root.dismissButtonSize : 0
            Layout.preferredHeight: root.showDismissButton ? root.dismissButtonSize : 0
            visible: root.showDismissButton
            
            // Optional timer component (rendered behind button)
            Loader {
                id: timerLoader
                anchors.centerIn: parent
                // Timer should be slightly larger than button (5% bigger) to show behind it
                width: parent.width
                height: parent.height
                active: root.timerComponent !== null
                sourceComponent: root.timerComponent
                z: 0  // Behind the button
            }
            
            // Dismiss button (always in front)
            ActionButton {
                id: dismissButton
                anchors.centerIn: parent
                width: root.timerComponent !== null ? parent.width / root.timerButtonScaleFactor : parent.width
                height: root.timerComponent !== null ? parent.height / root.timerButtonScaleFactor : parent.height
                z: 1  // In front of timer
                backgroundColor: Colors.red
                borderColor: Colors.red
                textColor: dismissButton.containsMouse ? Colors.text : Colors.red
                icon: Fonts.iconFalse
                iconSize: root.timerComponent !== null ? 0.8 : 0.5
                
                onClicked: {
                    root.handleDismiss()
                }
            }
        }
    }
    
    // Body text
    Text {
        Layout.fillWidth: true
        visible: !root.isGroup && text !== ""
        text: {
            if (root.isGroup || !root.notificationObject) return ""
            
            const body = root.notificationObject.body || ""
            if (!body) return ""
            
            // Process body text (e.g., clean browser notifications)
            const appName = root.notificationObject.appName || root.notificationObject.summary || ""
            const processedBody = NotificationUtils.processNotificationBody(body, appName)
            return processedBody.replace(/\n/g, "<br/>")
        }
        font.pixelSize: root.bodyFontSize
        color: root.bodyColor
        wrapMode: Text.Wrap
        maximumLineCount: root.maxBodyLines
        elide: Text.ElideRight
        textFormat: Text.StyledText
        
        onLinkActivated: (link) => {
            Qt.openUrlExternally(link)
        }
        
        MouseArea {
            anchors.fill: parent
            cursorShape: parent.hoveredLink ? Qt.PointingHandCursor : Qt.ArrowCursor
            acceptedButtons: Qt.NoButton
            propagateComposedEvents: true
        }
    }
    
    // Actions (exclude "default" action as it's triggered by clicking the notification)
    Flow {
        Layout.fillWidth: true
        spacing: 8
        visible: {
            if (root.isGroup || !root.notificationObject) return false
            const actions = root.notificationObject.actions || []
            const nonDefaultActions = actions.filter(action => action.identifier !== "default")
            return nonDefaultActions.length > 0
        }
        
        Repeater {
            model: {
                if (root.isGroup || !root.notificationObject) return []
                const actions = root.notificationObject.actions || []
                return actions.filter(action => action.identifier !== "default")
            }
            
            delegate: NotificationActionButton {
                required property var modelData
                
                action: modelData
                notificationId: root.notificationObject.notificationId
                fontSize: Fonts.h6
                verticalPadding: 12
                horizontalPadding: 20
            }
        }
    }
    
    // Sub-notifications placeholder (for groups)
    Loader {
        Layout.fillWidth: true
        active: root.isGroup && root.subNotificationsComponent !== null
        visible: root.isGroup
        sourceComponent: root.subNotificationsComponent
    }
}

```

## File: `modules/quickshell/config/components/notifications/NotificationIcon.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.settings

/**
 * Unified notification icon component for both popups and notification center
 * 
 * Usage:
 * - For single notifications: shows notification image if available, otherwise app icon, fallback to bell
 * - For grouped notifications: shows only app icon (never notification image), fallback to bell
 * - Always shows bell icon if no other icon is available
 */
Item {
    id: root
    
    property string image: ""
    property string appIcon: ""
    property bool showImage: true
    
    implicitWidth: 48
    implicitHeight: 48
    
    readonly property bool hasImage: showImage && image && image.length > 0
    
    // Notification image (if present and showImage is true)
    Loader {
        id: imageLoader
        active: root.hasImage
        asynchronous: true
        anchors.fill: parent
        
        sourceComponent: Rectangle {
            radius: width / 2
            color: "transparent"
            clip: true
            
            Image {
                anchors.fill: parent
                source: {
                    // Don't prepend file:// if it's already an image:// provider URL
                    if (root.image.startsWith("image://")) {
                        return root.image
                    }
                    return "file://" + root.image
                }
                fillMode: Image.PreserveAspectCrop
                asynchronous: true
                cache: false
            }
        }
    }
    
    // App icon or fallback bell (shown when no image, or as badge over image)
    Loader {
        id: appIconLoader
        active: true  // Always active to show bell fallback
        asynchronous: true
        
        // Positioning
        anchors.centerIn: root.hasImage ? undefined : parent
        anchors.right: root.hasImage ? parent.right : undefined
        anchors.bottom: root.hasImage ? parent.bottom : undefined
        anchors.rightMargin: root.hasImage ? -2 : 0
        anchors.bottomMargin: root.hasImage ? -2 : 0
        
        // Size
        width: root.hasImage ? parent.width * 0.45 : parent.width
        height: root.hasImage ? parent.height * 0.45 : parent.height
        
        sourceComponent: Rectangle {
            implicitWidth: appIconLoader.width
            implicitHeight: appIconLoader.height
            radius: width / 2
            color: Colors.brighten_10
            border.width: root.hasImage ? 2 : 1
            border.color: root.hasImage ? Colors.bg : Colors.brighten_20
            
            // Try to load as icon from theme
            Image {
                id: iconImage
                anchors.centerIn: parent
                // Use explicit pixel sizes instead of parent ratios
                width: root.hasImage ? 18 : 32
                height: root.hasImage ? 18 : 32
                visible: iconImage.source != ""
                
                source: Quickshell.iconPath(root.appIcon, true)
                fillMode: Image.PreserveAspectFit
                asynchronous: true
                smooth: true
                sourceSize: Qt.size(width, height)
            }
            
            // Bell icon fallback (shown when no app icon or when app icon fails to load)
            Text {
                id: fallbackIcon
                anchors.centerIn: parent
                visible: iconImage.source == ""
                text: Fonts.iconBell
                font.family: Fonts.iconFont
                font.pixelSize: parent.height * 0.5
                color: Colors.text
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
}

```

## File: `modules/quickshell/config/components/notifications/notification_utils.js`

```javascript
// Utility functions for notifications

/**
 * Converts a timestamp to a human-readable relative time string
 * @param {number} timestamp - Unix timestamp in milliseconds
 * @returns {string} Formatted time string (e.g., "5 mins ago", "Just now", "1 day ago")
 */
function getFriendlyNotifTimeString(timestamp) {
    const now = Date.now();
    const diff = now - timestamp;
    
    const seconds = Math.floor(diff / 1000);
    const minutes = Math.floor(seconds / 60);
    const hours = Math.floor(minutes / 60);
    const days = Math.floor(hours / 24);
    
    if (seconds < 60) {
        return "Just now";
    } else if (minutes < 60) {
        return minutes === 1 ? "1 min ago" : `${minutes} mins ago`;
    } else if (hours < 24) {
        return hours === 1 ? "1 hour ago" : `${hours} hours ago`;
    } else if (days < 7) {
        return days === 1 ? "1 day ago" : `${days} days ago`;
    } else {
        // Format as date
        const date = new Date(timestamp);
        return date.toLocaleDateString();
    }
}

/**
 * Processes and cleans notification body text
 * Removes extraneous content from Chromium-based browser notifications
 * @param {string} body - The raw notification body text
 * @param {string} appName - The name of the application sending the notification
 * @returns {string} Processed body text with unwanted content removed
 */
function processNotificationBody(body, appName) {
    if (!body) return ""
    let processedBody = body

    // Clean Chromium-based browsers notifications - remove first line
    if (appName) {
        const appNameStr = String(appName)
        const lowerApp = appNameStr.toLowerCase()
        const chromiumBrowsers = [
            "brave", "chrome", "chromium", "vivaldi", "opera", "microsoft edge"
        ]

        if (chromiumBrowsers.some(name => lowerApp.includes(name))) {
            const lines = body.split('\n\n')

            if (lines.length > 1 && lines[0].startsWith('<a')) {
                processedBody = lines.slice(1).join('\n\n')
            }
        }
    }

    return processedBody
}
```

## File: `modules/quickshell/config/components/ActionButton.qml`

```qml
// ActionButton.qml
// Circular action button with icon, loading spinner, and click handling
// Supports disabled state, hover effects, and smooth animations
pragma ComponentBehavior: Bound
import QtQuick
import qs.settings
import qs.components.animations

Rectangle {
    id: root

    // Public properties
    property string icon: ""
    property real iconSize: 0.5
    property color backgroundColor: "transparent"
    property color borderColor: Colors.text
    property color textColor: Colors.text
    property bool loading: false
    property bool enabled: true
    
    // Signal for proper QML signal/slot connections
    signal clicked()
    
    // Expose mouse state
    readonly property alias containsMouse: mouseArea.containsMouse

    // Appearance
    width: parent.height
    height: width
    radius: width
    color: backgroundColor
    border.width: 1
    border.color: borderColor
    scale: mouseArea.containsMouse && enabled && !loading ? 1 : 0.95
    opacity: enabled && !loading ? 1.0 : 0.5

    AnimatedScale on scale {}
    AnimatedColor on color {}
    AnimatedOpacity on opacity {}

    // Icon
    Text {
        anchors.centerIn: parent
        text: root.icon
        color: root.textColor
        font.pixelSize: parent.width * root.iconSize
        font.family: Fonts.iconFont
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        visible: !root.loading
        opacity: root.loading ? 0.0 : 1.0

        AnimatedColor on color {}
        AnimatedOpacity on opacity {}
    }

    // Mouse interaction
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: root.enabled && !root.loading ? Qt.PointingHandCursor : Qt.ArrowCursor
        enabled: root.enabled && !root.loading
        onClicked: root.clicked()
    }
    
    // Modern loading spinner
    Item {
        anchors.centerIn: parent
        width: parent.width * 0.55
        height: width
        visible: root.loading
        opacity: root.loading ? 1.0 : 0.0
        
        AnimatedOpacity on opacity {}
        
        // Circular progress arc
        Canvas {
            id: spinnerCanvas
            anchors.fill: parent
            property real rotation
            
            onRotationChanged: requestPaint()
            
            onPaint: {
                var ctx = getContext("2d");
                var centerX = width / 2;
                var centerY = height / 2;
                var radius = width / 2 - 2;
                
                ctx.clearRect(0, 0, width, height);
                
                // Draw arc
                ctx.lineWidth = 2.5;
                ctx.lineCap = "round";
                ctx.strokeStyle = root.textColor;
                
                var startAngle = rotation * Math.PI / 180;
                var endAngle = startAngle + 270 * Math.PI / 180;
                
                ctx.beginPath();
                ctx.arc(centerX, centerY, radius, startAngle, endAngle, false);
                ctx.stroke();
            }
            
            NumberAnimation on rotation {
                from: 0
                to: 360
                duration: 1200
                loops: Animation.Infinite
                running: root.loading
                easing.type: Easing.Linear
            }
        }
    }
}
```

## File: `modules/quickshell/config/components/Drawer.qml`

```qml
// Drawer.qml
// Configurable slide-in drawer panel for left or right side of screen
// Manages focus grabbing, keyboard input, and provides a flexible layout container
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland
import qs.settings
import qs.services

PanelWindow {
    id: drawer

    // Configuration properties
    property bool isRightDrawer: false // false = left drawer, true = right drawer
    property color accentColor: Config.launcherAccent
    property int drawerWidth: 500
    property bool drawerVisible: false
    property int contentSpacing: 28
    property int contentMargins: Config.drawerMargins

    // Content container - use default property to allow children
    default property alias contentData: columnLayout.data

    // Overlay content that sits above the layout (for MouseAreas, etc.)
    property alias overlayData: overlayContainer.data

    // Internal reference to the focus scope
    property Item internalFocusScope: null

    // Flag to prevent focus grab from closing drawer during focus restoration
    property bool isRestoringFocus: false

    // Set keyboard focus mode to OnDemand to maintain focus better
    WlrLayershell.keyboardFocus: WlrKeyboardFocus.OnDemand

    // Restore focus when a popup closes while launcher is visible
    Connections {
        target: DrawerFocusManager
        function onPopupClosed() {
            if (drawer.visible) {
                drawer.restoreFocus();
            }
        }
    }
    // Method to restore focus to the drawer
    function restoreFocus() {
        isRestoringFocus = true;

        // Temporarily set keyboard focus to Exclusive to force focus, then back to OnDemand
        WlrLayershell.keyboardFocus = WlrKeyboardFocus.Exclusive;

        Qt.callLater(() => {
            WlrLayershell.keyboardFocus = WlrKeyboardFocus.OnDemand;
            // Re-enable focus grab after a small delay
            Qt.callLater(() => {
                focusGrab.active = true;
                isRestoringFocus = false;
            });
        });
    }

    // Expose visibility changed signal
    signal drawerVisibilityChanged(bool visible)
    signal closeRequested

    // Positioning
    anchors {
        top: true
        left: !isRightDrawer
        right: isRightDrawer
        bottom: true
    }

    // Sizing
    implicitWidth: drawerWidth
    color: "transparent"

    // Margins - switch based on drawer side
    margins {
        left: isRightDrawer ? 0 : Config.gapsOut
        right: isRightDrawer ? Config.gapsOut : 0
        bottom: Config.gapsOut
    }

    // Main container with keyboard handling
    FocusScope {
        id: focusScope
        anchors.fill: parent
        focus: drawer.visible

        Component.onCompleted: {
            drawer.internalFocusScope = focusScope;
        }

        // Handle Escape key
        Keys.onPressed: event => {
            if (event.key === Qt.Key_Escape) {
                drawer.closeRequested();
                event.accepted = true;
            }
        }

        Rectangle {
            anchors.fill: parent
            color: Colors.bgBlur
            radius: Config.windowRounding
            border.width: 2
            border.color: drawer.accentColor

            // Overlay container for absolute-positioned items
            Item {
                id: overlayContainer
                anchors.fill: parent
            }

            // Content container with ColumnLayout
            ColumnLayout {
                id: columnLayout
                anchors.fill: parent
                spacing: drawer.contentSpacing
                anchors.margins: drawer.contentMargins
            }
        }
    }

    // Focus grab for auto-close when clicking outside
    HyprlandFocusGrab {
        id: focusGrab
        windows: [drawer]
        active: drawer.visible

        onCleared: {
            // Don't close the drawer if we're in the middle of restoring focus
            if (!drawer.isRestoringFocus) {
                drawer.closeRequested();
            }
        }
    }

    // Sync visibility
    visible: drawerVisible

    // Emit signal when visibility changes
    onVisibleChanged: {
        drawer.drawerVisibilityChanged(visible);
    }
}

```

## File: `modules/quickshell/config/components/IconAndText.qml`

```qml
// IconAndText.qml
// Displays an icon and text label in a horizontal row layout
// Supports customizable colors, fonts, spacing, and layout direction
// Mainly used in SettingsWindow
pragma ComponentBehavior: Bound

import QtQuick
import qs.settings

Item {
    id: root

    property alias labelText: label.text
    property alias iconText: icon.text
    property alias direction: row.layoutDirection

    property color textColor: Colors.text
    property alias iconColor: icon.color
    property int fontSize: Fonts.p
    
    property int spacing: 12
    
    implicitWidth: row.implicitWidth
    implicitHeight: row.implicitHeight
    
    Row {
        id: row
        anchors.fill: parent
        spacing: root.spacing
        layoutDirection: Qt.LeftToRight
        
        Text {
            id: icon
            text: root.iconText
            color: root.textColor
            font.family: Fonts.iconFont
            font.pixelSize: root.fontSize
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenter: parent.verticalCenter
        }
        
        Text {
            id: label
            text: ""
            color: root.textColor
            font.pixelSize: root.fontSize
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
```

## File: `modules/quickshell/config/components/Mainscreen.qml`

```qml
// Mainscreen.qml
// Variants wrapper that targets the main monitor or uses all screens as fallback
pragma ComponentBehavior: Bound
import Quickshell
import qs.settings

Variants {
    id: launcherVariants
    model: {
        const s = Quickshell.screens.find(scr => scr.name === Config.mainMonitorId);
        if (s)
            return [s];
        const active = Quickshell.screens.find(scr => scr === Quickshell.activeScreen);
        return active ? [active] : Quickshell.screens;
    }
}

```

## File: `modules/quickshell/config/components/Popup.qml`

```qml
// Popup.qml
// Basic popup window wrapper with configurable background color and optional animations
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.settings
import qs.components.animations

PopupWindow {
    id: root
    
    property color backgroundColor: Colors.bg

    visible: false
    color: "transparent"

    implicitWidth: 300
    implicitHeight: 400

    Rectangle {
        id: bg
        anchors.fill: parent
        color: root.backgroundColor
        radius: Config.windowRounding
        
        // Popup animations
        opacity: root.visible ? 1.0 : 0.0
        transformOrigin: Item.Top
        
        AnimatedOpacity on opacity {
            animationDuration: AnimationConfig.normal
        }
    }
}

```

## File: `modules/quickshell/config/components/PopupSeparator.qml`

```qml
// PopupSeparator.qml
// Horizontal separator line for dividing sections in popup menus and lists
pragma ComponentBehavior: Bound

import QtQuick
import qs.settings

Rectangle {
    id: root
    width: parent.width
    height: 3
    color: "transparent"

    Rectangle {
        id: separator
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width * 0.9
        height: 1
        color: Colors.brighten_20
        radius: 1
    }
}

```

## File: `modules/quickshell/config/components/QsMenu.qml`

```qml
// QsMenu.qml
// Displays context menus with checkbox, radio button, and action items
// Handles menu popup positioning, item interaction, and focus management
import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Hyprland
import qs.components
import qs.settings

Item {
    id: root
    
    // The QsMenuHandle to display
    property var menu: null
    
    // The item to anchor the popup to
    property var anchorItem: null
    
    // Read-only property to check visibility
    readonly property bool isVisible: popupMenu.visible
    
    // Signal emitted when a menu item is clicked
    signal itemClicked(var menuEntry)
    
    // Function to open the menu
    function open() {
        if (anchorItem) {
            popupMenu.visible = true
            focusGrab.active = true
        }
    }
    
    // Function to close the menu
    function close() {
        popupMenu.visible = false
        focusGrab.active = false
    }
    
    HyprlandFocusGrab {
        id: focusGrab
        windows: [popupMenu]
        onCleared: {
            popupMenu.visible = false
        }
    }
    
    QsMenuOpener {
        id: menuOpener
        menu: root.menu
    }
    
    // Menu popup
    Popup {
        id: popupMenu
        anchor.item: root.anchorItem
        anchor.rect.x: -((popupMenu.width - (root.anchorItem ? root.anchorItem.width : 32)) / 2)
        anchor.rect.y: (root.anchorItem ? root.anchorItem.height : 32) + 8
        visible: false
        
        property int padding: 8
        property int minWidth: 120
        property real maxChildWidth: 0
        
        implicitWidth: Math.max(minWidth, maxChildWidth + padding * 2)
        implicitHeight: menuColumn.implicitHeight + padding * 2
        
        onVisibleChanged: {
            if (!visible) {
                focusGrab.active = false
                // Don't reset maxChildWidth - keep it for next opening
            }
        }
        
        Column {
            id: menuColumn
            anchors.fill: parent
            anchors.margins: popupMenu.padding
            spacing: 2
            
            Repeater {
                id: menuRepeater
                model: menuOpener.children
                
                Item {
                    id: itemDelegate
                    required property var modelData
                    required property int index
                    
                    width: parent.width
                    height: modelData.isSeparator ? 8 : 32
                    
                    // Separator
                    PopupSeparator {
                        anchors.fill: parent
                        visible: itemDelegate.modelData.isSeparator
                    }
                    
                    // Regular menu item
                    Rectangle {
                        anchors.fill: parent
                        visible: !itemDelegate.modelData.isSeparator
                        radius: 6
                        color: itemMouseArea.containsMouse ? Colors.brighten_5 : "transparent"
                        
                        Row {
                            id: itemRow
                            anchors.fill: parent
                            anchors.leftMargin: 8
                            anchors.rightMargin: 8
                            spacing: 8
                            
                            Component.onCompleted: {
                                popupMenu.maxChildWidth = Math.max(popupMenu.maxChildWidth, implicitWidth + 16)
                            }
                            
                            // Checkbox/Radio button indicator
                            Text {
                                anchors.verticalCenter: parent.verticalCenter
                                text: {
                                    if (itemDelegate.modelData.buttonType === QsMenuButtonType.CheckBox) {
                                        return itemDelegate.modelData.checkState === Qt.Checked ? Fonts.iconCheckboxChecked : Fonts.iconCheckboxUnchecked
                                    } else if (itemDelegate.modelData.buttonType === QsMenuButtonType.RadioButton) {
                                        return itemDelegate.modelData.checkState === Qt.Checked ? Fonts.iconRadioChecked : Fonts.iconRadioUnchecked
                                    }
                                    return ""
                                }
                                color: Colors.text
                                font.family: Fonts.iconFont
                                font.pixelSize: Fonts.h3
                                visible: text !== ""
                            }
                            
                            // Icon
                            Image {
                                anchors.verticalCenter: parent.verticalCenter
                                source: itemDelegate.modelData.icon
                                sourceSize.width: 16
                                sourceSize.height: 16
                                width: 16
                                height: 16
                                visible: itemDelegate.modelData.icon !== ""
                            }
                            
                            // Text
                            Text {
                                anchors.verticalCenter: parent.verticalCenter
                                text: itemDelegate.modelData.text
                                color: itemDelegate.modelData.enabled ? Colors.text : Colors.brighten_20
                                font.pixelSize: Fonts.p
                                elide: Text.ElideRight
                            }
                            
                            // Submenu indicator
                            Text {
                                anchors.verticalCenter: parent.verticalCenter
                                text: Fonts.iconChevronRight
                                color: Colors.text
                                font.family: Fonts.iconFont
                                font.pixelSize: Fonts.h4
                                visible: itemDelegate.modelData.hasChildren
                            }
                        }
                        
                        MouseArea {
                            id: itemMouseArea
                            anchors.fill: parent
                            hoverEnabled: true
                            cursorShape: itemDelegate.modelData.enabled ? Qt.PointingHandCursor : Qt.ForbiddenCursor
                            enabled: itemDelegate.modelData.enabled
                            
                            onClicked: {
                                if (itemDelegate.modelData.enabled) {
                                    itemDelegate.modelData.triggered()
                                    root.itemClicked(itemDelegate.modelData)
                                    popupMenu.visible = false
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/components/Searchbar.qml`

```qml
// Searchbar.qml
// Text input field with integrated search functionality and keyboard navigation support
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import qs.settings
import qs.modules.launcher

FocusScope {
    id: root

    property alias text: textField.text
    property alias placeholderText: textField.placeholderText
    property color textColor: Colors.text
    property color backgroundColor: Colors.brighten_10
    property int borderRadius: 32

    signal navigateDown
    signal navigateUp
    signal navigateRight
    signal executeSelected
    signal closeRequested
    signal tabPressed
    signal tabPressedReverse

    implicitHeight: LauncherConfig.searchBarHeight
    implicitWidth: 400
    focus: true

    Rectangle {
        id: backgroundRect
        anchors.fill: parent
        color: root.backgroundColor
        radius: root.borderRadius

        TextField {
            id: textField
            anchors.fill: parent
            anchors.margins: 8
            background: null
            selectByMouse: true
            horizontalAlignment: TextInput.AlignHCenter
            verticalAlignment: TextInput.AlignVCenter
            focus: true
            color: root.textColor
            font.pixelSize: Fonts.h4

            Keys.onPressed: event => {
                switch (event.key) {
                case Qt.Key_Tab:
                    root.tabPressed();
                    event.accepted = true;
                    break;
                case Qt.Key_Backtab:
                    root.tabPressedReverse();
                    event.accepted = true;
                    break;
                case Qt.Key_Down:
                    root.navigateDown();
                    event.accepted = true;
                    break;
                case Qt.Key_Up:
                    root.navigateUp();
                    event.accepted = true;
                    break;
                case Qt.Key_Right:
                    root.navigateRight();
                    event.accepted = true;
                    break;
                case Qt.Key_Return:
                case Qt.Key_Enter:
                    root.executeSelected();
                    event.accepted = true;
                    break;
                default:
                    break;
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/components/Tabs.qml`

```qml
// Tabs.qml
// Tab bar with smooth animated indicator that follows the active tab selection
pragma ComponentBehavior: Bound

import QtQuick
import qs.settings

Rectangle {
    id: root

    property int currentTab: 0
    property var tabModel: ["Apps", "Files", "Web"]
    property color activeColor: Config.launcherAccent
    property color inactiveColor: Colors.textSubdued
    property color activeBgColor: Colors.brighten_10
    property color inactiveBgColor: Colors.brighten_3

    signal tabChanged(int index)

    color: "transparent"
    implicitWidth: parent.width

    Row {
        id: tabRow
        anchors.fill: parent
        spacing: 0

        Repeater {
            model: root.tabModel

            delegate: Rectangle {
                id: tabDelegate

                required property int index
                required property string modelData

                width: tabRow.width / root.tabModel.length
                height: parent.height
                radius: 8
                color: root.currentTab === tabDelegate.index ? "transparent" : tabMouseArea.containsMouse ? Colors.brighten_5 : "transparent"

                Text {
                    anchors.centerIn: parent
                    text: tabDelegate.modelData
                    color: root.currentTab === tabDelegate.index ? root.activeColor : root.inactiveColor
                    font.pixelSize: Fonts.h5
                    font.bold: root.currentTab === tabDelegate.index
                }

                MouseArea {
                    id: tabMouseArea
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    hoverEnabled: true
                    onClicked: {
                        root.tabChanged(tabDelegate.index);
                    }
                }
            }
        }
    }

    // Animated bottom border
    Rectangle {
        id: bottomBorder
        height: 4
        width: (parent.width / root.tabModel.length) * 0.9
        color: root.activeColor
        anchors.bottom: parent.bottom
        x: root.currentTab * (parent.width / root.tabModel.length) + (parent.width / root.tabModel.length) * 0.05

        Behavior on x {
            NumberAnimation {
                duration: 250
                easing.type: Easing.OutCubic
            }
        }
    }
}

```

## File: `modules/quickshell/config/components/Toggle.qml`

```qml
// Toggle.qml
// Interactive toggle switch with smooth sliding animation and configurable state
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import qs.settings
import qs.components.animations

Item {
    id: root

    property alias checked: toggle.checked
    property color checkedColor: Colors.lavender
    
    signal toggled(bool checked)
    
    implicitWidth: 48
    implicitHeight: 24
    
    Switch {
        id: toggle
        anchors.fill: parent
        padding: 0
        leftPadding: 0
        rightPadding: 0
        topPadding: 0
        bottomPadding: 0
        
        onToggled: root.toggled(toggle.checked)
        
        // Custom styling
        indicator: Rectangle {
            implicitWidth: 48
            implicitHeight: 24
            x: 0
            y: parent.height / 2 - height / 2
            radius: 12
            color: toggle.checked ? root.checkedColor : Colors.brighten_20
            border.color: toggle.checked ? root.checkedColor : Colors.brighten_20
            
            AnimatedColor on color {}
            AnimatedColor on border.color {}
            
            Rectangle {
                x: toggle.checked ? parent.width - width - 2 : 2
                y: 2
                width: 20
                height: 20
                radius: 10
                color: Colors.bg
                
                AnimatedPosition on x {}
            }
        }
    }
}

```

## File: `modules/quickshell/config/components/TrayIcon.qml`

```qml
// TrayIcon.qml
// Reusable tray icon with 3-tier fallback system
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import qs.settings
import qs.components.animations
import Qt5Compat.GraphicalEffects

Item {
    id: root

    required property string iconName
    required property bool isHovered
    property real iconScale: 0.9

    // Primary icon from desktop entry
    Item {
        id: primaryIconContainer
        width: parent.height * root.iconScale
        height: parent.height * root.iconScale
        anchors.centerIn: parent
        visible: primaryIcon.source != ""

        Image {
            id: primaryIcon
            width: parent.width
            height: parent.height
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
            asynchronous: true
            smooth: true
            mipmap: true
            source: Quickshell.iconPath(root.iconName, true)
            scale: root.isHovered ? 0.95 : 0.9
            AnimatedScale on scale {}
        }

        layer.enabled: true
        layer.smooth: true
        layer.samples: 4
    }

    // Fallback 1: Try /usr/share/icons path
    Item {
        id: fallbackIconContainer
        width: parent.height * root.iconScale
        height: parent.height * root.iconScale
        anchors.centerIn: parent
        visible: !primaryIconContainer.visible && fallbackIcon.source != ""

        Image {
            id: fallbackIcon
            width: parent.width
            height: parent.height
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
            asynchronous: true
            smooth: true
            mipmap: true
            source: Quickshell.iconPath("/usr/share/icons/" + root.iconName, true)
            scale: root.isHovered ? 1 : 0.9
            AnimatedScale on scale {}
        }

        layer.enabled: true
        layer.smooth: true
        layer.samples: 4
    }

    // Fallback 2: Hyprland icon
    Item {
        id: fallbackTextContainer
        width: parent.height * root.iconScale
        height: parent.height * root.iconScale
        anchors.centerIn: parent
        visible: !primaryIconContainer.visible && !fallbackIconContainer.visible

        Text {
            id: fallbackText
            width: parent.width
            height: parent.height
            anchors.centerIn: parent
            text: Fonts.iconHyprland
            font.family: Fonts.iconFont
            font.pixelSize: parent.height * 0.5
            color: Colors.text
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            scale: root.isHovered ? 0.95 : 0.9
            AnimatedScale on scale {}
        }

        layer.enabled: true
        layer.smooth: true
        layer.samples: 4
    }
}

```

## File: `modules/quickshell/config/components/WindowActionPopup.qml`

```qml
// WindowActionPopup.qml
// Simple popup with Open/Close buttons for special workspace windows
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import qs.components
import qs.settings
import qs.services

Item {
    id: root
    
    // The window address to act upon
    property string windowAddress: ""
    property string windowTitle: ""
    property string windowClass: ""
    
    // Helper to ensure address has 0x prefix
    readonly property string formattedAddress: {
        if (windowAddress.startsWith("0x")) {
            return windowAddress;
        } else {
            return "0x" + windowAddress;
        }
    }
    
    // The item to anchor the popup to
    property var anchorItem: null
    
    // Read-only property to check visibility
    readonly property bool isVisible: popupWindow.visible
    
    // Signal emitted when an action is taken
    signal actionTaken()
    
    // Function to open the popup
    function open() {
        if (anchorItem && windowAddress) {
            popupWindow.visible = true
            focusGrab.active = true
        } else {
            console.error("WindowActionPopup: Cannot open - missing anchorItem or windowAddress");
        }
    }
    
    // Function to directly focus the window in its current workspace
    function openWindow() {
        if (windowAddress) {
            moveWindowProcess.running = true;
        } else {
            console.error("WindowActionPopup: Cannot open window - missing windowAddress");
        }
    }
    
    // Function to close the popup
    function close() {
        popupWindow.visible = false
        focusGrab.active = false
    }
    
    HyprlandFocusGrab {
        id: focusGrab
        windows: [popupWindow]
        onCleared: {
            popupWindow.visible = false
        }
    }
    
    // Popup window
    Popup {
        id: popupWindow
        anchor.item: root.anchorItem
        anchor.rect.x: -((popupWindow.width - (root.anchorItem ? root.anchorItem.width : 32)) / 2)
        anchor.rect.y: (root.anchorItem ? root.anchorItem.height : 32) + 8
        visible: false
        
        property int padding: 8
        property int buttonHeight: 32
        
        implicitWidth: 140
        implicitHeight: buttonColumn.implicitHeight + padding * 2
        
        onVisibleChanged: {
            if (!visible) {
                focusGrab.active = false
            }
        }
        
        Column {
            id: buttonColumn
            anchors.fill: parent
            anchors.margins: popupWindow.padding
            spacing: 4
            
            // Open button
            Rectangle {
                width: parent.width
                height: popupWindow.buttonHeight
                radius: 6
                color: openMouseArea.containsMouse ? Colors.brighten_5 : "transparent"
                
                Row {
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 8
                    
                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        text: Fonts.iconMonitor
                        color: Colors.text
                        font.family: Fonts.iconFont
                        font.pixelSize: Fonts.h3
                    }
                    
                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Open"
                        color: Colors.text
                        font.pixelSize: Fonts.p
                    }
                }
                
                MouseArea {
                    id: openMouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    
                    onClicked: {
                        // Move window to workspace 5 and focus it
                        moveWindowProcess.running = true;
                    }
                }
            }
            
            // Separator
            PopupSeparator {
                width: parent.width
                height: 8
            }
            
            // Close button
            Rectangle {
                width: parent.width
                height: popupWindow.buttonHeight
                radius: 6
                color: closeMouseArea.containsMouse ? Colors.brighten_5 : "transparent"
                
                Row {
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 8
                    
                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        text: Fonts.iconFalse
                        color: Colors.red
                        font.family: Fonts.iconFont
                        font.pixelSize: Fonts.h3
                    }
                    
                    Text {
                        anchors.verticalCenter: parent.verticalCenter
                        text: "Close"
                        color: Colors.red
                        font.pixelSize: Fonts.p
                    }
                }
                
                MouseArea {
                    id: closeMouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    
                    onClicked: {
                        // Close the window
                        closeWindowProcess.running = true;
                    }
                }
            }
        }
    }

    // Process to move window to workspace 5
    Process {
        id: moveWindowProcess
        running: false
        command: ["hyprctl", "dispatch", "movetoworkspacesilent", "5,address:" + root.formattedAddress]
        
        stdout: SplitParser {
            onRead: (data) => { }
        }
        
        stderr: SplitParser {
            onRead: (data) => { }
        }
        
        onExited: (exitCode) => {
            // Now focus the window
            focusWindowProcess.running = true;
        }
    }

    // Process to focus the window
    Process {
        id: focusWindowProcess
        running: false
        command: ["hyprctl", "dispatch", "focuswindow", "address:" + root.formattedAddress]
        
        stdout: SplitParser {
            onRead: (data) => { }
        }
        
        stderr: SplitParser {
            onRead: (data) => { }
        }
        
        onExited: (exitCode) => {
            root.actionTaken();
            popupWindow.visible = false;
        }
    }

    // Process to close the window
    Process {
        id: closeWindowProcess
        running: false
        command: ["hyprctl", "dispatch", "closewindow", "address:" + root.formattedAddress]
        
        stdout: SplitParser {
            onRead: (data) => { }
        }
        
        stderr: SplitParser {
            onRead: (data) => { }
        }
        
        onExited: (exitCode) => {
            root.actionTaken();
            popupWindow.visible = false;
        }
    }
}

```

## File: `modules/quickshell/config/modules/bar/components/UnifiedTaskbar/UnifiedTaskbar.qml`

```qml
import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.settings
import qs.components

// Unified taskbar for Mango / dwl using DwlService and DwlWindows
Background {
    id: root

    readonly property color pillColor: Colors.bg_1Blur
    readonly property color activeColor: Colors.blue
    readonly property color borderColor: Colors.bg_4Blur
    readonly property color glassHighlight: Qt.rgba(1,1,1,0.04)

    // windows that should be shown on the unified taskbar (computed)
    property var visibleWindows: []
    // keyboard selection index for navigation
    property int selectedIndex: 0

    function refreshWindows() {
        var out = DwlService.activeOutput
        if (!out || !DwlService.dwlAvailable) {
            visibleWindows = []
            return
        }

        var activeTags = DwlService.getActiveTags(out)
        var result = []

        for (var i = 0; i < DwlWindows.windowList.length; i++) {
            var w = DwlWindows.windowList[i]
            if (!w) continue
            if (w.monitorName !== out) continue
            if (activeTags.indexOf(w.tagIndex) === -1) continue
            result.push({
                toplevel: w.toplevel || null,
                address: w.address || "",
                appId: w.appId || w.class || "unknown",
                title: w.title || "",
                tagIndex: w.tagIndex,
                monitorName: w.monitorName,
                activated: w.activated || false
            })
        }

        visibleWindows = result
        // clamp selectedIndex
        if (visibleWindows.length === 0) selectedIndex = 0
        else if (selectedIndex >= visibleWindows.length) selectedIndex = visibleWindows.length - 1
    }

    // react to service events
    Connections { target: DwlWindows; function onWindowsChanged() { refreshWindows() } }
    Connections { target: DwlService; function onStateChanged() { refreshWindows() } }
    Connections { target: WorkspaceService; function onActiveWorkspaceIdChanged() { refreshWindows() } }

    Component.onCompleted: refreshWindows()

    FocusScope {
        id: focusScope
        // only focus when user explicitly clicks into the taskbar
        property bool hadFocus: false

        Keys.onLeftPressed: {
            if (root.visibleWindows.length > 0) {
                root.selectedIndex = Math.max(0, root.selectedIndex - 1)
                hadFocus = true
            }
        }
        Keys.onRightPressed: {
            if (root.visibleWindows.length > 0) {
                root.selectedIndex = Math.min(root.visibleWindows.length - 1, root.selectedIndex + 1)
                hadFocus = true
            }
        }
        Keys.onReturnPressed: {
            if (root.visibleWindows.length > 0) {
                var md = root.visibleWindows[root.selectedIndex]
                if (md && md.toplevel && typeof md.toplevel.activate === "function") md.toplevel.activate()
            }
        }

        Row {
            anchors.centerIn: parent
            spacing: 6

        Repeater {
            model: root.visibleWindows

            delegate: Rectangle {
                id: windowPill
                property var modelData: modelData
                readonly property int indexVal: index

                width: 40
                height: 32
                radius: 8

                property bool isActive: modelData.activated || (modelData.toplevel && modelData.toplevel.activated)
                property bool isHovered: false

                // visual selected state when navigated via keyboard
                readonly property bool isSelected: root.selectedIndex === indexVal

                // glassomorphic pill styling
                color: isActive ? activeColor : (isSelected ? Colors.blue : pillColor)
                border.width: 1
                border.color: borderColor
                scale: isHovered ? 1.03 : 1.0
                layer.enabled: true
                layer.effect: OpacityMask {
                    source: Rectangle { color: "white" }
                }

                Behavior on color { ColorAnimation { duration: 140 } }
                Behavior on scale { NumberAnimation { duration: 120; easing.type: Easing.OutQuad } }

                Row {
                    anchors.fill: parent
                    anchors.margins: 6
                    spacing: 6

                    // App icon (uses BackgroundWindows helper if available)
                    Image {
                        id: appIcon
                        width: 18
                        height: 18
                        fillMode: Image.PreserveAspectFit
                        // Prefer Quickshell.iconPath (scalable/cached icon), fallback to BackgroundWindows helper
                        source: (typeof Quickshell !== 'undefined' && Quickshell.iconPath) ? Quickshell.iconPath(modelData.appId, true) : (BackgroundWindows ? BackgroundWindows.getIconForAppId(modelData.appId) : "")
                        visible: source !== ""
                    }

                    Text {
                        text: modelData.title || "untitled"
                        color: Colors.text
                        font.pixelSize: 12
                        elide: Text.ElideRight
                        visible: parent.width > 120
                    }

                    // subtle highlight strip for glass effect
                    Rectangle {
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.margins: -2
                        width: parent.width * 0.6
                        height: parent.height * 0.35
                        color: glassHighlight
                        radius: 6
                        opacity: isHovered ? 0.9 : 0.6
                        z: 3
                    }
                }

                MouseArea {
                    id: ma
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onEntered: { windowPill.isHovered = true; titleTip.openIfNeeded(); focusScope.focus = true; focusScope.hadFocus = true }
                    onExited: { windowPill.isHovered = false; titleTip.close() }
                    onClicked: {
                        if (modelData && modelData.toplevel && typeof modelData.toplevel.activate === "function") {
                            modelData.toplevel.activate()
                        }
                    }
                    onPressed: {
                        if (mouse.button === Qt.RightButton) {
                            actionPopup.open()
                        }
                    }
                    onClicked: {
                        // set keyboard selection to clicked item
                        root.selectedIndex = index
                    }
                }

                // Tooltip showing full title on hover
                Popup {
                    id: titleTip
                    anchor.item: ma
                    anchor.rect.x: -((width - (ma ? ma.width : 40)) / 2)
                    anchor.rect.y: (ma ? ma.height : 32) + 6
                    implicitWidth: Math.min(300, modelData.title.length * 8 + 24)
                    implicitHeight: 28
                    visible: false
                    property bool openIfNeeded: function() { if (modelData.title && modelData.title.length > 0) { visible = true } }
                    onVisibleChanged: if (!visible) titleTip.visible = false

                    Rectangle {
                        anchors.fill: parent
                        color: Colors.bg_2
                        radius: 6
                        border.width: 1
                        border.color: Colors.bg_3

                        Text {
                            anchors.centerIn: parent
                            text: modelData.title || ""
                            color: Colors.text
                            font.pixelSize: 12
                            elide: Text.ElideRight
                        }
                    }
                }

                // Context action popup for dwl windows
                Popup {
                    id: actionPopup
                    anchor.item: ma
                    anchor.rect.x: -((width - (ma ? ma.width : 40)) / 2)
                    anchor.rect.y: (ma ? ma.height : 32) + 6
                    implicitWidth: 220
                    visible: false

                    Rectangle {
                        anchors.fill: parent
                        color: Colors.bg_1
                        radius: 8
                        border.width: 1
                        border.color: Colors.bg_2

                        Column {
                            anchors.fill: parent
                            anchors.margins: 8
                            spacing: 6

                            // Focus/Open
                            Rectangle {
                                height: 34
                                radius: 6
                                color: openMouse.containsMouse ? Colors.brighten_5 : "transparent"
                                Row {
                                    anchors.fill: parent
                                    anchors.margins: 6
                                    spacing: 8
                                    Text { text: Fonts.iconMonitor; font.family: Fonts.iconFont; color: Colors.text }
                                    Text { text: "Focus"; color: Colors.text }
                                }
                                MouseArea { id: openMouse; anchors.fill: parent; onClicked: { if (modelData && modelData.toplevel && typeof modelData.toplevel.activate === "function") { modelData.toplevel.activate(); actionPopup.visible = false } } }
                            }

                            // Move to tag chips
                            Rectangle {
                                color: "transparent"
                                implicitHeight: 40
                                Flow { anchors.fill: parent; spacing: 6; anchors.margins: 6; }
                                Repeater {
                                    model: DwlService.tagCount
                                    delegate: Rectangle {
                                        height: 28
                                        width: 28
                                        radius: 6
                                        color: Colors.bg_2
                                        border.width: 1
                                        border.color: Colors.bg_3
                                        Text { anchors.centerIn: parent; text: index+1; color: Colors.text }
                                        MouseArea { anchors.fill: parent; onClicked: { if (modelData && modelData.toplevel) { DwlWindows.moveWindowToTag(modelData.toplevel, index); actionPopup.visible = false } } }
                                    }
                                }
                            }

                            // Close
                            Rectangle {
                                height: 34
                                radius: 6
                                color: closeMouse.containsMouse ? Colors.brighten_5 : "transparent"
                                Row {
                                    anchors.fill: parent
                                    anchors.margins: 6
                                    spacing: 8
                                    Text { text: Fonts.iconFalse; font.family: Fonts.iconFont; color: Colors.red }
                                    Text { text: "Close"; color: Colors.red }
                                }
                                MouseArea { id: closeMouse; anchors.fill: parent; onClicked: { if (modelData && modelData.toplevel) { DwlWindows.closeWindow(modelData.toplevel); actionPopup.visible = false } } }
                            }
                        }
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/bar/components/UnifiedTaskbar/UnifiedTaskbarSettings.qml`

```qml
import QtQuick
import qs.Common
import qs.Widgets
import qs.Modules.Plugins

PluginSettings {
    pluginId: "unifiedTaskbar"

    StyledText {
        width: parent.width
        text: "Display"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    ToggleSetting {
        settingKey: "compactMode"
        label: "Compact Mode"
        description: "Show only app icons without window titles"
        defaultValue: false
    }

    ToggleSetting {
        settingKey: "groupByApp"
        label: "Group by App"
        description: "Collapse multiple windows of the same app into one entry with a count badge"
        defaultValue: false
    }

    ToggleSetting {
        settingKey: "allMonitors"
        label: "Show All Monitors"
        description: "Show workspaces from all monitors instead of only the current one"
        defaultValue: false
    }

    ToggleSetting {
        settingKey: "reverseMonitorOrder"
        label: "Reverse Monitor Order"
        description: "Reverse the order in which monitors are displayed when showing all monitors"
        defaultValue: false
    }
}

```

## File: `modules/quickshell/config/modules/bar/components/Audio.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets
import qs.settings
import qs.services
import qs.components.animations

Item {
    id: root
    
    implicitWidth: layout.implicitWidth
    implicitHeight: Config.barHeight
    
    RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 8
        
        // Volume icon button
        Rectangle {
            Layout.preferredWidth: Config.barHeight
            Layout.preferredHeight: Config.barHeight
            radius: root.height / 3
            color: Colors.brighten_5
            
            AnimatedColor on color {}
            
            Text {
                anchors.centerIn: parent
                text: Audio.volumeIcon
                font.family: Fonts.iconFont
                font.pixelSize: 20
                color: Audio.muted ? Colors.red : Colors.text
                
                AnimatedColor on color {}
            }
            
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                hoverEnabled: true
                
                onClicked: {
                    Audio.toggleMute();
                }
                
                onEntered: {
                    parent.color = Colors.brighten_10;
                }
                
                onExited: {
                    parent.color = Colors.brighten_5;
                }
            }
        }
        
        // Volume bar container
        ClippingRectangle {
            id: volumeBar
            Layout.preferredWidth: 120
            Layout.preferredHeight: Config.barHeight
            
            radius: root.height / 3
            color: Colors.brighten_3
            
            // Prevents animation jank during user drag interactions
            property bool userInteracting: false
            // Prevents initial animation on component load - only animate after first real volume change
            property bool animationsReady: false
            property real lastVolume: Audio.volume
            
            AnimatedColor on color {}
            
            // Enable animations only after the first actual volume change (prevents startup animation)
            Connections {
                target: Audio
                function onVolumeChanged() {
                    if (volumeBar.lastVolume !== Audio.volume) {
                        volumeBar.animationsReady = true;
                        volumeBar.lastVolume = Audio.volume;
                    }
                }
            }
            
            // Volume fill bar
            Rectangle {
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: parent.width * Math.max(0, Math.min(1, Audio.volume))
                color: Audio.muted ? Qt.alpha(Config.controlCenterAccent, 0.3) : Config.controlCenterAccent
                
                AnimatedWidth on width {
                    enabled: !volumeBar.userInteracting && volumeBar.animationsReady
                    animationDuration: AnimationConfig.fast
                }
                
                AnimatedColor on color {}
            }
            
            // Volume percentage text
            Text {
                anchors.centerIn: parent
                text: Audio.volumePercent + "%"
                color: Colors.text
                font.pixelSize: Fonts.p
                font.bold: true
                
                AnimatedColor on color {}
            }
            
            // Interactive volume control - click and drag to adjust volume
            MouseArea {
                anchors.fill: parent
                enabled: !Audio.muted
                hoverEnabled: !Audio.muted
                cursorShape: Audio.muted ? Qt.ArrowCursor : Qt.PointingHandCursor
                
                // Debounce volume updates to prevent excessive Audio service calls
                property real lastSetVolume: -1
                
                onPressed: (mouse) => {
                    volumeBar.userInteracting = true;
                    lastSetVolume = -1;
                    updateVolume(mouse.x);
                }
                
                onPositionChanged: (mouse) => {
                    if (pressed) {
                        updateVolume(mouse.x);
                    }
                }
                
                onReleased: {
                    volumeBar.userInteracting = false;
                    lastSetVolume = -1;
                }
                
                onEntered: {
                    if (!Audio.muted) {
                        volumeBar.color = Colors.brighten_5;
                    }
                }
                
                onExited: {
                    volumeBar.color = Colors.brighten_3;
                }
                
                // Convert mouse position to volume value (0.0 - 1.0)
                function updateVolume(x: real): void {
                    const rawVolume = Math.max(0, Math.min(1, x / width));
                    const roundedVolume = Math.round(rawVolume * 100) / 100;
                    
                    // Only update if volume actually changed (prevents redundant service calls)
                    if (roundedVolume !== lastSetVolume) {
                        lastSetVolume = roundedVolume;
                        Audio.setVolume(roundedVolume);
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/bar/components/Background.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import qs.settings

Rectangle {
    id: root

    // Styling properties
    property color chipColor: Colors.bgBlur
    property int chipRadius: Config.barHeight / 3
    property int padding: Config.gapsOut * 2

    // Content
    default property alias contentData: contentItem.data
    property alias contentItem: contentItem

    // Sizing
    implicitWidth: contentItem.childrenRect.width + padding
    implicitHeight: parent ? parent.height : 32

    // Glass base
    color: chipColor
    radius: chipRadius
    border.width: 1
    border.color: Colors.bg_4Blur

    // Subtle inner gradient to give depth
    Rectangle {
        anchors.fill: parent
        radius: root.chipRadius
        color: "transparent"
        layer.enabled: false
        gradient: Gradient {
            GradientStop { position: 0.0; color: Qt.rgba(1,1,1, root.chipColor.a ? Math.min(root.chipColor.a + 0.02, 0.15) : 0.05) }
            GradientStop { position: 1.0; color: Qt.rgba(0,0,0, root.chipColor.a ? Math.min(0.02 + root.chipColor.a * 0.4, 0.12) : 0.02) }
        }
        opacity: 0.6
        z: 1
        visible: true
    }

    // Content container
    Item {
        id: contentItem
        anchors.centerIn: parent
        width: childrenRect.implicitWidth
        height: parent.height
        z: 2
    }
}

```

## File: `modules/quickshell/config/modules/bar/components/DateTime.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import qs.settings
import qs.services

MouseArea {
    id: root
    
    implicitWidth: chip.implicitWidth
    implicitHeight: parent ? parent.height : 32
    hoverEnabled: true
    
    Background {
        id: chip
        anchors.fill: parent
        
        Row {
            id: clockContent
            anchors.centerIn: parent
            spacing: 12
            
            Text {
                text: Time.date
                color: Colors.text
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 16
                font.bold: true
            }
            
            Text {
                text: Fonts.iconClock
                font.family: Fonts.iconFont
                color: Colors.text
                font.pixelSize: 12
                anchors.verticalCenter: parent.verticalCenter
                font.bold: true
            }
            
            Text {
                text: Time.time
                color: Colors.text
                font.pixelSize: 16
                anchors.verticalCenter: parent.verticalCenter
                font.bold: true
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/bar/components/MenuButton.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import qs.settings
import qs.components.animations

MouseArea {
    id: root
    
    implicitWidth: parent ? parent.height * 2.5 : 80
    implicitHeight: parent ? parent.height : 32
    
    hoverEnabled: true
    cursorShape: Qt.PointingHandCursor

    property bool isActive: false
    property string icon: Fonts.iconCircle
    property color activeColor: Colors.text
    property color inactiveColor: Colors.bgBlur

    Background {
        anchors.fill: parent
        chipColor: root.isActive ? root.activeColor : root.inactiveColor
        border.width: 1
        border.color: parent.containsMouse ? root.activeColor : this.chipColor
        
        AnimatedColor on border.color {}

        Text {
            anchors.centerIn: parent
            color: root.isActive ? root.inactiveColor : root.activeColor
            font.pixelSize: parent.height * 0.9
            text: root.icon
        }
    }
}

```

## File: `modules/quickshell/config/modules/bar/components/SystemTray.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import Quickshell.Services.SystemTray
import qs.settings
import qs.services
import qs.components
import qs.components.animations

/**
 * SystemTray - Displays system tray icons and background workspace windows
 * 
 * Features:
 * - Regular system tray items with left-click activation, right-click menu
 * - Background workspace windows (workspace -98) with window management actions
 * - Uses TrayIcon component for consistent icon rendering
 * - Automatically hides when both tray and background windows are empty
 */

Background {
    id: root

    visible: trayRepeater.count > 0 || backgroundWindowsRepeater.count > 0

    // === BACKGROUND WINDOWS DATA ===

    property var backgroundWindowsList: []

    function updateBackgroundWindows() {
        const appIds = BackgroundWindows.getAppIdsOnSpecial();
        const windows = [];

        for (let i = 0; i < appIds.length; i++) {
            const appId = appIds[i];
            const windowData = BackgroundWindows.getWindowsByAppId(appId);
            
            // Add all windows for this app, not just the first one
            for (let j = 0; j < windowData.length; j++) {
                const window = windowData[j];
                // Only include if on special workspace
                if (window.workspaceName && window.workspaceName.includes("special")) {
                    windows.push({
                        address: window.address,
                        title: window.title,
                        iconName: BackgroundWindows.getIconForAppId(appId),
                        appId: appId
                    });
                }
            }
        }

        // Create a new array to ensure Qt recognizes the change
        root.backgroundWindowsList = [...windows];
    }

    Connections {
        target: BackgroundWindows
        function onWorkspacesRefreshed() {
            root.updateBackgroundWindows();
        }
    }

    Component.onCompleted: {
        root.updateBackgroundWindows();
    }

    // === LAYOUT ===

    Row {
        id: trayRow
        spacing: Config.gapsIn
        height: parent.height
        anchors.centerIn: parent

        // === BACKGROUND WINDOWS ===

        Repeater {
            id: backgroundWindowsRepeater
            model: root.backgroundWindowsList

            delegate: Item {
                id: windowItem
                required property var modelData

                width: parent ? parent.height : 32
                height: parent ? parent.height : 32

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    acceptedButtons: Qt.LeftButton | Qt.RightButton

                    onClicked: function (mouse) {
                        if (mouse.button === Qt.RightButton) {
                            // Right-click: Open menu
                            windowActionPopup.windowAddress = windowItem.modelData.address;
                            windowActionPopup.windowTitle = windowItem.modelData.title;
                            windowActionPopup.windowClass = windowItem.modelData.iconName;
                            windowActionPopup.anchorItem = windowItem;
                            windowActionPopup.open();
                        } else {
                            // Left-click: Open window directly
                            windowActionPopup.windowAddress = windowItem.modelData.address;
                            windowActionPopup.openWindow();
                        }
                    }

                    TrayIcon {
                        anchors.fill: parent
                        iconName: windowItem.modelData.iconName
                        isHovered: mouseArea.containsMouse
                    }
                }
            }
        }

        // === SYSTEM TRAY ITEMS ===

        Repeater {
            id: trayRepeater
            model: SystemTray.items

            delegate: Item {
                id: trayItem
                required property var modelData

                width: parent ? parent.height : 32
                height: parent ? parent.height : 32

                MouseArea {
                    id: trayMouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    acceptedButtons: Qt.LeftButton | Qt.RightButton

                    onClicked: function (mouse) {
                        if (mouse.button === Qt.RightButton) {
                            qsMenu.menu = trayItem.modelData.menu;
                            qsMenu.anchorItem = trayItem;
                            qsMenu.open();
                        } else {
                            trayItem.modelData.activate();
                        }
                    }

                    Image {
                        id: trayIconImage
                        anchors.centerIn: parent
                        width: parent.width * 0.9
                        height: parent.height * 0.9
                        source: trayItem.modelData.icon
                        sourceSize.width: width
                        sourceSize.height: height
                        fillMode: Image.PreserveAspectFit
                        asynchronous: true
                        smooth: true
                        scale: trayMouseArea.containsMouse ? 1 : 0.9
                        AnimatedScale on scale {}
                    }
                }
            }
        }
    }

    // === POPUPS ===

    QsMenu {
        id: qsMenu
    }

    WindowActionPopup {
        id: windowActionPopup
    }
}

```

## File: `modules/quickshell/config/modules/bar/components/VolumeBar.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell.Widgets
import qs.settings
import qs.services
import qs.modules.bar.components
import qs.components.animations

Background {
    id: root
    
    implicitWidth: volumeContent.width + padding
    visible: (Config.showVolumeBarAlways || showTimer.running || root.opacity > 0) && (!AppState.controlCenterVisible || Config.showVolumeBarAlways)
    opacity: Config.showVolumeBarAlways ? 1.0 : (showTimer.running && !AppState.controlCenterVisible ? 1.0 : 0.0)
    
    // Custom opacity animation: slower fade-in, faster fade-out
    AnimatedOpacity on opacity {
        animationDuration: root.opacity === 1.0 ? AnimationConfig.slow : AnimationConfig.fast
        animationEasing: root.opacity === 1.0 ? Easing.OutQuad : Easing.InOutQuad
    }
    
    // Auto-hide timer: shows volume bar temporarily after volume changes (unless always visible)
    Timer {
        id: showTimer
        interval: 3000
        running: false
        repeat: false
    }
    
    // Watch for volume changes
    Connections {
        target: Audio
        function onVolumeChanged() {
            if (!Config.showVolumeBarAlways && !AppState.controlCenterVisible) {
                showTimer.restart();
            }
        }
        function onMutedChanged() {
            if (!Config.showVolumeBarAlways && !AppState.controlCenterVisible) {
                showTimer.restart();
            }
        }
    }
    
    // Hide immediately when Control Center opens
    Connections {
        target: AppState
        function onControlCenterVisibleChanged() {
            if (AppState.controlCenterVisible && !Config.showVolumeBarAlways) {
                showTimer.stop();
            }
        }
    }
    
    Row {
        id: volumeContent
        anchors.centerIn: parent
        spacing: 12
        height: parent.height
        
        // Volume icon
        Text {
            id: icon
            anchors.verticalCenter: parent.verticalCenter
            width: icon.height
            text: Audio.volumeIcon
            font.family: Fonts.iconFont
            font.pixelSize: icon.width
            verticalAlignment: Text.AlignVCenter
            color: Audio.muted ? Colors.red : Colors.text
            
            AnimatedColor on color {}
        }
        
        // Volume bar container
        Item {
            anchors.verticalCenter: parent.verticalCenter
            width: 80
            height: parent.height * 0.5
            
            ClippingRectangle {
                id: volumeBar
                anchors.fill: parent
                
                radius: 8
                color: Colors.brighten_3
                
                // Prevents animation jank during user drag interactions
                property bool userInteracting: false
                // Prevents initial animation on component load - only animate after first real volume change
                property bool animationsReady: false
                property real lastVolume: Audio.volume
                
                AnimatedColor on color {}
                
                // Enable animations only after the first actual volume change (prevents startup animation)
                Connections {
                    target: Audio
                    function onVolumeChanged() {
                        if (volumeBar.lastVolume !== Audio.volume) {
                            volumeBar.animationsReady = true;
                            volumeBar.lastVolume = Audio.volume;
                        }
                    }
                }
                
                // Volume fill bar
                Rectangle {
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    width: parent.width * Math.max(0, Math.min(1, Audio.volume))
                    color: Audio.muted ? Qt.alpha(Config.controlCenterAccent, 0.3) : Config.controlCenterAccent
                    
                    AnimatedWidth on width {
                        enabled: !volumeBar.userInteracting && volumeBar.animationsReady
                        animationDuration: AnimationConfig.fast
                    }
                    
                    AnimatedColor on color {}
                }
                
                // Interactive volume control - click and drag to adjust volume
                MouseArea {
                    anchors.fill: parent
                    enabled: !Audio.muted
                    hoverEnabled: true
                    cursorShape: Audio.muted ? Qt.ArrowCursor : Qt.PointingHandCursor
                    
                    // Debounce volume updates to prevent excessive Audio service calls
                    property real lastSetVolume: -1
                    
                    onPressed: (mouse) => {
                        volumeBar.userInteracting = true;
                        lastSetVolume = -1;
                        updateVolume(mouse.x);
                        if (!Config.showVolumeBarAlways && !AppState.controlCenterVisible) {
                            showTimer.restart();
                        }
                    }
                    
                    onPositionChanged: (mouse) => {
                        if (pressed) {
                            updateVolume(mouse.x);
                        }
                    }
                    
                    onReleased: {
                        volumeBar.userInteracting = false;
                        lastSetVolume = -1;
                    }
                    
                    onEntered: {
                        if (!Audio.muted) {
                            volumeBar.color = Colors.brighten_5;
                        }
                    }
                    
                    onExited: {
                        volumeBar.color = Colors.brighten_3;
                    }
                    
                    // Convert mouse position to volume value (0.0 - 1.0)
                    function updateVolume(x: real): void {
                        const rawVolume = Math.max(0, Math.min(1, x / width));
                        const roundedVolume = Math.round(rawVolume * 100) / 100;
                        
                        // Only update if volume actually changed (prevents redundant service calls)
                        if (roundedVolume !== lastSetVolume) {
                            lastSetVolume = roundedVolume;
                            Audio.setVolume(roundedVolume);
                        }
                    }
                }
            }
        }
    }
    
    // Middle-click anywhere on volume bar to toggle mute
    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.MiddleButton
        cursorShape: Qt.PointingHandCursor
        
        onClicked: (mouse) => {
            if (mouse.button === Qt.MiddleButton) {
                Audio.toggleMute();
                if (!Config.showVolumeBarAlways && !AppState.controlCenterVisible) {
                    showTimer.restart();
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/bar/components/WindowTitle.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import qs.settings
import qs.services

Background {
    id: root
    
    property int maxLength: 60
    property string fallbackText: "Hyprland"
    
    readonly property string currentText: {
        if (!HyprStats.activeToplevel || !HyprStats.activeToplevel.title) {
            return fallbackText;
        }
        const title = HyprStats.activeToplevel.title;
        return title.length > maxLength 
            ? title.substring(0, maxLength) + "..." 
            : title;
    }
    
    Text {
        id: titleText
        anchors.centerIn: parent
        text: root.currentText
        color: Colors.text
        font.pixelSize: 14
    }
}

```

## File: `modules/quickshell/config/modules/bar/components/WorkspaceIndicator.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import Quickshell.Hyprland
import qs.settings
import qs.components.animations

Background {
    id: root
    
    signal workspaceClicked(int workspaceId)
    
    // Constants for visual consistency
    readonly property int dotSpacing: 0
    readonly property int separatorSpacing: 4
    readonly property int separatorWidth: 2
    
    // Build visible workspaces list from collected data
    readonly property var visibleWorkspacesData: {
        const data = [];
        const workspaceRules = Config.workspaceRules || {};
        const wsInfo = workspaceInstantiator.workspaceInfo;
        
        // Force re-evaluation when updateCounter changes
        workspaceInstantiator.updateCounter;
        
        // Sort screens by x position to match monitor layout
        const sortedScreens = [...Quickshell.screens].sort((a, b) => a.x - b.x);
        
        // Process each monitor
        for (const screen of sortedScreens) {
            const monitorName = screen.name;
            const ruleWorkspaces = workspaceRules[monitorName] || [];
            
            // Only process monitors with defined workspace rules
            if (ruleWorkspaces.length === 0) continue;
            
            // Collect workspaces for this monitor - ONLY from rules or those assigned to this monitor
            const monitorWorkspaces = [];
            
            for (const ruleWsId of ruleWorkspaces) {
                const wsInfoEntry = wsInfo[ruleWsId];
                monitorWorkspaces.push({
                    id: ruleWsId,
                    hasWindows: wsInfoEntry ? wsInfoEntry.hasWindows : false
                });
            }
            
            // Sort by ID
            monitorWorkspaces.sort((a, b) => a.id - b.id);
            
            // Filter visible workspaces: all with windows + first empty one
            const visibleWorkspaces = [];
            let hasEmptyWorkspace = false;
            
            for (const ws of monitorWorkspaces) {
                if (ws.hasWindows) {
                    visibleWorkspaces.push(ws.id);
                } else if (!hasEmptyWorkspace) {
                    visibleWorkspaces.push(ws.id);
                    hasEmptyWorkspace = true;
                }
            }
            
            // DON'T add "new workspace" button - only show predefined workspaces
            
            if (visibleWorkspaces.length > 0) {
                data.push({
                    monitorName: monitorName,
                    workspaces: visibleWorkspaces
                });
            }
        }
        
        return data;
    }
    
    // Collect workspace information reactively
    Instantiator {
        id: workspaceInstantiator
        model: Hyprland.workspaces
        
        property var workspaceInfo: ({})
        property int updateCounter: 0  // Trigger to force re-evaluation
        
        delegate: Item {
            id: workspaceItem
            required property var modelData
            
            readonly property int wsId: modelData.id
            readonly property string wsMonitorName: modelData.monitor ? modelData.monitor.name : ""
            
            // Count toplevels
            property int toplevelCount: 0
            
            Repeater {
                model: workspaceItem.modelData.toplevels
                delegate: Item {
                    Component.onCompleted: workspaceItem.toplevelCount++
                    Component.onDestruction: workspaceItem.toplevelCount--
                }
            }
            
            readonly property bool hasWindows: toplevelCount > 0
            
            // Track if this workspace is currently visible on its monitor
            readonly property bool isVisibleOnMonitor: modelData.monitor ? 
                modelData.monitor.activeWorkspace === modelData : false
            
            // Update workspace info when relevant properties change
            function updateInfo() {
                const info = Object.assign({}, workspaceInstantiator.workspaceInfo);
                info[wsId] = {
                    monitorName: wsMonitorName,
                    hasWindows: hasWindows,
                    isVisibleOnMonitor: isVisibleOnMonitor
                };
                workspaceInstantiator.workspaceInfo = info;
                workspaceInstantiator.updateCounter++;  // Trigger re-evaluation
            }
            
            Component.onCompleted: updateInfo()
            onHasWindowsChanged: updateInfo()
            onWsMonitorNameChanged: updateInfo()
            onIsVisibleOnMonitorChanged: updateInfo()
        }
    }
    
    Row {
        id: workspaceDotsRow
        anchors.centerIn: parent
        spacing: 0
        
        Repeater {
            model: root.visibleWorkspacesData
            
            delegate: Item {
                id: monitorGroup
                required property var modelData
                required property int index
                
                // Calculate width based on content
                readonly property int dotWidth: root.height
                readonly property int totalDots: modelData.workspaces.length
                readonly property bool isLastMonitor: index >= root.visibleWorkspacesData.length - 1
                
                width: (dotWidth * totalDots) + 
                       (isLastMonitor ? 0 : root.separatorSpacing * 2 + root.separatorWidth)
                height: root.height
                
                // Workspace dots for this monitor
                Row {
                    anchors.left: parent.left
                    spacing: root.dotSpacing
                    height: parent.height
                    
                    Repeater {
                        model: monitorGroup.modelData.workspaces
                        
                        delegate: MouseArea {
                            id: workspaceDelegate
                            required property int modelData
                            
                            width: monitorGroup.dotWidth
                            height: root.height
                            hoverEnabled: true
                            
                            readonly property int workspaceId: modelData
                            readonly property bool hasWindows: 
                                (workspaceInstantiator.workspaceInfo[workspaceId]?.hasWindows || false)
                            readonly property bool isVisibleOnMonitor:
                                (workspaceInstantiator.workspaceInfo[workspaceId]?.isVisibleOnMonitor || false)
                            
                            cursorShape: Qt.PointingHandCursor

                            onClicked: {
                                // Only switch to predefined workspaces
                                Hyprland.dispatch("workspace " + workspaceId);
                                root.workspaceClicked(workspaceId);
                            }
                            
                            Rectangle {
                                anchors.centerIn: parent
                                color: {
                                    if (workspaceDelegate.isVisibleOnMonitor) {
                                        // Currently visible on monitor - full opacity
                                        return Colors.text;
                                    } else if (workspaceDelegate.hasWindows) {
                                        // Non-visible with windows - medium opacity
                                        return Qt.alpha(Colors.text, 0.85);
                                    } else {
                                        // Empty workspace - dimmed
                                        return Qt.alpha(Colors.text, 0.4);
                                    }
                                }
                                width: height
                                height: parent.height / 1.5
                                radius: height / 2
                                
                                scale: {
                                    if (workspaceDelegate.isVisibleOnMonitor) return 0.9;
                                    if (workspaceDelegate.containsMouse) return 0.8;
                                    return 0.7;
                                }
                                
                                AnimatedScale on scale {
                                }
                                
                                AnimatedColor on color {
                                }
                            }
                        }
                    }
                }
                
                // Separator between monitors
                Rectangle {
                    anchors.right: parent.right
                    anchors.rightMargin: root.separatorSpacing
                    anchors.verticalCenter: parent.verticalCenter
                    width: root.separatorWidth
                    height: root.height / 2
                    color: Qt.alpha(Colors.text, 0.3)
                    radius: 1
                    visible: !monitorGroup.isLastMonitor
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/bar/Bar.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.settings
import qs.components
import qs.modules.bar.components
import qs.modules.bar.components.UnifiedTaskbar
import qs.modules.mangowcLayoutSwitcher

Scope {
    id: root
    property color barBackground: "transparent"
    property int margin: Config.gapsIn
    property int radius: Config.barHeight / 3
    Mainscreen {

        PanelWindow {
            id: topbar
            required property var modelData
            screen: modelData
            anchors {
                bottom: true
                left: true
                right: true
            }
            margins {
                top: root.margin
                bottom: root.margin
                left: Config.gapsOut
                right: Config.gapsOut
            }

            implicitHeight: Config.barHeight
            color: root.barBackground

            Item {
                id: barContainer
                width: parent.width
                height: parent.height
                anchors.fill: parent

                Row {
                    id: leftContent
                    height: parent.height
                    spacing: Config.gapsIn

                    // Start Menu Button
                    MenuButton {
                        height: parent.height
                        icon: Fonts.iconArch
                        isActive: AppState.launcherVisible
                        activeColor: Config.launcherAccent
                        inactiveColor: Config.launcherBackground

                        onClicked: {
                            AppState.toggleLauncher()
                        }

                    }

                    // Window Title Component
                    WindowTitle {
                        height: parent.height
                    }
                }

                Item {
                    id: centerZone
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                        top: parent.top
                        bottom: parent.bottom
                    }
                    width: centerDateTime.width

                    DateTime {
                        id: centerDateTime
                        height: parent.height
                        anchors.centerIn: parent
                    }
                }

                Item {
                    id: rightZone
                    anchors {
                        right: parent.right
                        top: parent.top
                        bottom: parent.bottom
                    }
                    width: rightContent.width

                    Row {
                        id: rightContent
                        height: parent.height
                        spacing: Config.gapsIn
                        anchors.right: parent.right

        // Unified Taskbar
        UnifiedTaskbar {
          height: parent.height
        }

        // Audio Volume Bar
        VolumeBar {
          height: parent.height
        }

        // MangOWC Layout Switcher
        MangowcLayoutSwitcher.BarWidget {
          height: parent.height
          pluginApi: MangowcLayoutSwitcher.Main
        }

        // Workspace Indicator
        WorkspaceIndicator {
          height: parent.height
        }

        // System Tray
        SystemTray {
          height: parent.height
        }

        // Control Center Button
        MenuButton {
          height: parent.height
          icon: Fonts.iconMenu
          isActive: AppState.controlCenterVisible ?? false
          activeColor: Config.controlCenterAccent
          inactiveColor: Config.controlCenterBackground

          onClicked: {
            AppState.toggleControlCenter()
          }
        }
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/cheatsheet/Cheatsheet.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import qs.settings
import qs.components.animations

Item {
    id: root
    visible: false
    
    // Keybinds data structure
    readonly property var keybinds: [
        { category: "General", shortcuts: [
            { keys: "Super+R", action: "Reload config" },
            { keys: "Super+Shift+Return", action: "Open launcher" },
            { keys: "Super+Return", action: "Open terminal" },
            { keys: "Super+L", action: "Lock screen" },
            { keys: "Super+C", action: "Control center" },
            { keys: "Super+S", action: "Settings" },
            { keys: "Super+H", action: "Clipboard history" },
        ]},
        { category: "Window Management", shortcuts: [
            { keys: "Super+Q", action: "Close window" },
            { keys: "Super+T", action: "Toggle floating" },
            { keys: "Super+F", action: "Toggle fullscreen" },
            { keys: "Super+Tab", action: "Focus next" },
            { keys: "Super+Arrows", action: "Focus direction" },
            { keys: "Super+Shift+Arrows", action: "Move window" },
        ]},
        { category: "Workspaces", shortcuts: [
            { keys: "Super+1-9", action: "Switch workspace" },
            { keys: "Ctrl+1-9", action: "Move to workspace" },
            { keys: "Alt+Left/Right", action: "Navigate workspaces" },
        ]},
        { category: "Layouts", shortcuts: [
            { keys: "Super+Shift+Space", action: "Switch layout" },
            { keys: "Super+Space", action: "Toggle overview" },
        ]},
    ]
    
    property int currentCategory: 0
    
    signal open()
    signal close()
    signal toggle()
    
    // IPC handler
    IpcHandler {
        target: "cheatsheet"
        
        function toggle(): void {
            root.visible = !root.visible
        }
        
        function close(): void {
            root.visible = false
        }
        
        function open(): void {
            root.visible = true
        }
    }
    
    // Global shortcut (optional - can be configured in mangowc bindings)
    Shortcut {
        enabled: root.visible
        sequence: "Escape"
        onActivated: root.visible = false
    }
    
    Keys.onPressed: event => {
        if (event.key === Qt.Key_Escape) {
            root.visible = false
        }
    }
}

```

## File: `modules/quickshell/config/modules/cheatsheet/CheatsheetKeybinds.qml`

```qml
pragma ComponentBehavior: Bound

import qs.services
import qs.modules.common
import qs.modules.common.widgets
import QtQuick
import QtQuick.Layouts

Item {
    id: root
    readonly property var keybinds: HyprlandKeybinds.keybinds
    property real spacing: 20
    property real titleSpacing: 7
    property real padding: 4
    implicitWidth: row.implicitWidth + padding * 2
    implicitHeight: row.implicitHeight + padding * 2
    // Excellent symbol explaination and source :
    // http://xahlee.info/comp/unicode_computing_symbols.html
    // https://www.nerdfonts.com/cheat-sheet
    property var macSymbolMap: ({
        "Ctrl": "󰘴",
        "Alt": "󰘵",
        "Shift": "󰘶",
        "Space": "󱁐",
        "Tab": "↹",
        "Equal": "󰇼",
        "Minus": "",
        "Print": "",
        "BackSpace": "󰭜",
        "Delete": "⌦",
        "Return": "󰌑",
        "Period": ".",
        "Escape": "⎋"
      })
    property var functionSymbolMap: ({
        "F1":  "󱊫",
        "F2":  "󱊬",
        "F3":  "󱊭",
        "F4":  "󱊮",
        "F5":  "󱊯",
        "F6":  "󱊰",
        "F7":  "󱊱",
        "F8":  "󱊲",
        "F9":  "󱊳",
        "F10": "󱊴",
        "F11": "󱊵",
        "F12": "󱊶",
    })

    property var mouseSymbolMap: ({
        "mouse_up": "󱕐",
        "mouse_down": "󱕑",
        "mouse:272": "L󰍽",
        "mouse:273": "R󰍽",
        "Scroll ↑/↓": "󱕒",
        "Page_↑/↓": "⇞/⇟",
    })

    property var keyBlacklist: ["Super_L"]
    property var keySubstitutions: Object.assign({
        "Super": "",
        "mouse_up": "Scroll ↓",    // ikr, weird
        "mouse_down": "Scroll ↑",  // trust me bro
        "mouse:272": "LMB",
        "mouse:273": "RMB",
        "mouse:275": "MouseBack",
        "Slash": "/",
        "Hash": "#",
        "Return": "Enter",
        // "Shift": "",
      },
      !!Config.options.cheatsheet.superKey ? {
          "Super": Config.options.cheatsheet.superKey,
      }: {},
      Config.options.cheatsheet.useMacSymbol ? macSymbolMap : {},
      Config.options.cheatsheet.useFnSymbol ? functionSymbolMap : {},
      Config.options.cheatsheet.useMouseSymbol ? mouseSymbolMap : {},
    )

    Row { // Keybind columns
        id: row
        spacing: root.spacing
        
        Repeater {
            model: keybinds.children
            
            delegate: Column { // Keybind sections
                spacing: root.spacing
                required property var modelData
                anchors.top: row.top

                Repeater {
                    model: modelData.children

                    delegate: Item { // Section with real keybinds
                        id: keybindSection
                        required property var modelData
                        implicitWidth: sectionColumn.implicitWidth
                        implicitHeight: sectionColumn.implicitHeight

                        Column {
                            id: sectionColumn
                            anchors.centerIn: parent
                            spacing: root.titleSpacing
                            
                            StyledText {
                                id: sectionTitle
                                font {
                                    family: Appearance.font.family.title
                                    pixelSize: Appearance.font.pixelSize.title
                                    variableAxes: Appearance.font.variableAxes.title
                                }
                                color: Appearance.colors.colOnLayer0
                                text: keybindSection.modelData.name
                            }

                            GridLayout {
                                id: keybindGrid
                                columns: 2
                                columnSpacing: 4
                                rowSpacing: 4

                                Repeater {
                                    model: {
                                        var result = [];
                                        for (var i = 0; i < keybindSection.modelData.keybinds.length; i++) {
                                            const keybind = keybindSection.modelData.keybinds[i];

                                            if (!Config.options.cheatsheet.splitButtons) {
                                                for (var j = 0; j < keybind.mods.length; j++) {
                                                    keybind.mods[j] = keySubstitutions[keybind.mods[j]] || keybind.mods[j];
                                                }
                                                keybind.mods = [keybind.mods.join(' ') ]
                                                keybind.mods[0] += !keyBlacklist.includes(keybind.key) && keybind.mods[0].length ? ' ' : ''
                                                keybind.mods[0] += !keyBlacklist.includes(keybind.key) ? (keySubstitutions[keybind.key] || keybind.key) : ''
                                            } 

                                            result.push({
                                                "type": "keys",
                                                "mods": keybind.mods,
                                                "key": keybind.key,
                                            });
                                            result.push({
                                                "type": "comment",
                                                "comment": keybind.comment,
                                            });
                                        }
                                        return result;
                                    }
                                    delegate: Item {
                                        required property var modelData
                                        implicitWidth: keybindLoader.implicitWidth
                                        implicitHeight: keybindLoader.implicitHeight

                                        Loader {
                                            id: keybindLoader
                                            sourceComponent: (modelData.type === "keys") ? keysComponent : commentComponent
                                        }

                                        Component {
                                            id: keysComponent
                                            Row {
                                                spacing: 4
                                                Repeater {
                                                    model: modelData.mods
                                                    delegate: KeyboardKey {
                                                        required property var modelData
                                                        key: keySubstitutions[modelData] || modelData
                                                        pixelSize: Config.options.cheatsheet.fontSize.key
                                                    }
                                                }
                                                StyledText {
                                                    id: keybindPlus
                                                    visible: Config.options.cheatsheet.splitButtons && !keyBlacklist.includes(modelData.key) && modelData.mods.length > 0
                                                    text: "+"
                                                }
                                                KeyboardKey {
                                                    id: keybindKey
                                                    visible: Config.options.cheatsheet.splitButtons && !keyBlacklist.includes(modelData.key)
                                                    key: keySubstitutions[modelData.key] || modelData.key
                                                    pixelSize: Config.options.cheatsheet.fontSize.key
                                                    color: Appearance.colors.colOnLayer0
                                                }
                                            }
                                        }

                                        Component {
                                            id: commentComponent
                                            Item {
                                                id: commentItem
                                                implicitWidth: commentText.implicitWidth + 8 * 2
                                                implicitHeight: commentText.implicitHeight

                                                StyledText {
                                                    id: commentText
                                                    anchors.centerIn: parent
                                                    font.pixelSize: Config.options.cheatsheet.fontSize.comment || Appearance.font.pixelSize.smaller
                                                    text: modelData.comment
                                                }
                                            }
                                        }
                                    }

                                }
                            }
                        }
                    }

                }
            }
            
        }
    }
    
}

```

## File: `modules/quickshell/config/modules/cheatsheet/CheatsheetPeriodicTable.qml`

```qml
import "periodic_table.js" as PTable
import QtQuick

Item {
    id: root
    readonly property var elements: PTable.elements
    readonly property var series: PTable.series
    property real spacing: 6
    implicitWidth: mainLayout.implicitWidth
    implicitHeight: mainLayout.implicitHeight

    Column {
        id: mainLayout
        anchors.centerIn: parent
        spacing: root.spacing

        Repeater { // Main table rows
            model: root.elements
            
            delegate: Row { // Table cells
                id: tableRow
                spacing: root.spacing
                required property var modelData
                
                Repeater {
                    model: tableRow.modelData
                    delegate: ElementTile {
                        required property var modelData
                        element: modelData
                    }

                }
            }
            
        }

        Item {
            id: gap
            implicitHeight: 20
        }

        Repeater { // Main table rows
            model: root.series
            
            delegate: Row { // Table cells
                id: seriesTableRow
                spacing: root.spacing
                required property var modelData
                
                Repeater {
                    model: seriesTableRow.modelData
                    delegate: ElementTile {
                        required property var modelData
                        element: modelData
                    }

                }
            }
            
        }
    }
    
}
```

## File: `modules/quickshell/config/modules/cheatsheet/ElementTile.qml`

```qml
import qs.modules.common
import qs.modules.common.functions
import qs.modules.common.widgets
import QtQuick

RippleButton {
    id: root
    required property var element
    opacity: element.type != "empty" ? 1 : 0
    implicitHeight: 70
    implicitWidth: 70
    colBackground: Appearance.colors.colLayer2
    buttonRadius: Appearance.rounding.small

    Rectangle {
        anchors {
            top: parent.top
            left: parent.left
            topMargin: 4
            leftMargin: 4
        }
        color: ColorUtils.transparentize(Appearance.colors.colLayer2)
        radius: Appearance.rounding.full
        implicitWidth: Math.max(20, elementNumber.implicitWidth)
        implicitHeight: Math.max(20, elementNumber.implicitHeight)
        width: height

        StyledText {
            id: elementNumber
            anchors.left: parent.left
            color: Appearance.colors.colOnLayer2
            text: root.element.number
            font.pixelSize: Appearance.font.pixelSize.smallest
        }
    }

    Rectangle {
        anchors {
            top: parent.top
            right: parent.right
            topMargin: 4
            rightMargin: 4
        }
        color: ColorUtils.transparentize(Appearance.colors.colLayer2)
        radius: Appearance.rounding.full
        implicitWidth: Math.max(20, elementWeight.implicitWidth)
        implicitHeight: Math.max(20, elementWeight.implicitHeight)
        width: height

        StyledText {
            id: elementWeight
            anchors.right: parent.right
            color: Appearance.colors.colOnLayer2
            text: root.element.weight
            font.pixelSize: Appearance.font.pixelSize.smallest
        }
    }

    StyledText {
        id: elementSymbol
        anchors.centerIn: parent
        color: Appearance.colors.colSecondary
        font.pixelSize: Appearance.font.pixelSize.huge
        text: root.element.symbol
    }

    StyledText {
        id: elementName
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 4
        }
        font.pixelSize: Appearance.font.pixelSize.smallest
        color: Appearance.colors.colOnLayer2
        text: root.element.name
    }
}

```

## File: `modules/quickshell/config/modules/cheatsheet/periodic_table.js`

```javascript
// List of rows
const elements = [
    [
        { name: 'Hydrogen', symbol: 'H', number: 1, weight: 1.01, type: 'nonmetal' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: 'Helium', symbol: 'He', number: 2, weight: 4.00, type: 'noblegas' },
    ],
    [
        { name: 'Lithium', symbol: 'Li', number: 3, weight: 6.94, type: 'metal' },
        { name: 'Beryllium', symbol: 'Be', number: 4, weight: 9.01, type: 'metal' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: 'Boron', symbol: 'B', number: 5, weight: 10.81, type: 'nonmetal' },
        { name: 'Carbon', symbol: 'C', number: 6, weight: 12.01, type: 'nonmetal' },
        { name: 'Nitrogen', symbol: 'N', number: 7, weight: 14.01, type: 'nonmetal' },
        { name: 'Oxygen', symbol: 'O', number: 8, weight: 16, type: 'nonmetal' },
        { name: 'Fluorine', symbol: 'F', number: 9, weight: 19, type: 'nonmetal' },
        { name: 'Neon', symbol: 'Ne', number: 10, weight: 20.18, type: 'noblegas' },


    ],
    [
        { name: 'Sodium', symbol: 'Na', number: 11, weight: 22.99, type: 'metal' },
        { name: 'Magnesium', symbol: 'Mg', number: 12, weight: 24.31, type: 'metal' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: 'Aluminum', symbol: 'Al', number: 13, weight: 26.98, type: 'metal' },
        { name: 'Silicon', symbol: 'Si', number: 14, weight: 28.09, type: 'nonmetal' },
        { name: 'Phosphorus', symbol: 'P', number: 15, weight: 30.97, type: 'nonmetal' },
        { name: 'Sulfur', symbol: 'S', number: 16, weight: 32.07, type: 'nonmetal' },
        { name: 'Chlorine', symbol: 'Cl', number: 17, weight: 35.45, type: 'nonmetal' },
        { name: 'Argon', symbol: 'Ar', number: 18, weight: 39.95, type: 'noblegas' },
    ],
    [
        { name: 'Potassium', symbol: 'K', number: 19, weight: 39.098, type: 'metal' },
        { name: 'Calcium', symbol: 'Ca', number: 20, weight: 40.078, type: 'metal' },
        { name: 'Scandium', symbol: 'Sc', number: 21, weight: 44.956, type: 'metal' },
        { name: 'Titanium', symbol: 'Ti', number: 22, weight: 47.87, type: 'metal' },
        { name: 'Vanadium', symbol: 'V', number: 23, weight: 50.94, type: 'metal' },
        { name: 'Chromium', symbol: 'Cr', number: 24, weight: 52, type: 'metal'/*, icon: 'chromium-browser'*/ },
        { name: 'Manganese', symbol: 'Mn', number: 25, weight: 54.94, type: 'metal' },
        { name: 'Iron', symbol: 'Fe', number: 26, weight: 55.85, type: 'metal' },
        { name: 'Cobalt', symbol: 'Co', number: 27, weight: 58.93, type: 'metal' },
        { name: 'Nickel', symbol: 'Ni', number: 28, weight: 58.69, type: 'metal' },
        { name: 'Copper', symbol: 'Cu', number: 29, weight: 63.55, type: 'metal' },
        { name: 'Zinc', symbol: 'Zn', number: 30, weight: 65.38, type: 'metal' },
        { name: 'Gallium', symbol: 'Ga', number: 31, weight: 69.72, type: 'metal' },
        { name: 'Germanium', symbol: 'Ge', number: 32, weight: 72.63, type: 'metal' },
        { name: 'Arsenic', symbol: 'As', number: 33, weight: 74.92, type: 'nonmetal' },
        { name: 'Selenium', symbol: 'Se', number: 34, weight: 78.96, type: 'nonmetal' },
        { name: 'Bromine', symbol: 'Br', number: 35, weight: 79.904, type: 'nonmetal' },
        { name: 'Krypton', symbol: 'Kr', number: 36, weight: 83.8, type: 'noblegas' },
    ],
    [
        { name: 'Rubidium', symbol: 'Rb', number: 37, weight: 85.47, type: 'metal' },
        { name: 'Strontium', symbol: 'Sr', number: 38, weight: 87.62, type: 'metal' },
        { name: 'Yttrium', symbol: 'Y', number: 39, weight: 88.91, type: 'metal' },
        { name: 'Zirconium', symbol: 'Zr', number: 40, weight: 91.22, type: 'metal' },
        { name: 'Niobium', symbol: 'Nb', number: 41, weight: 92.91, type: 'metal' },
        { name: 'Molybdenum', symbol: 'Mo', number: 42, weight: 95.94, type: 'metal' },
        { name: 'Technetium', symbol: 'Tc', number: 43, weight: 98, type: 'metal' },
        { name: 'Ruthenium', symbol: 'Ru', number: 44, weight: 101.07, type: 'metal' },
        { name: 'Rhodium', symbol: 'Rh', number: 45, weight: 102.91, type: 'metal' },
        { name: 'Palladium', symbol: 'Pd', number: 46, weight: 106.42, type: 'metal' },
        { name: 'Silver', symbol: 'Ag', number: 47, weight: 107.87, type: 'metal' },
        { name: 'Cadmium', symbol: 'Cd', number: 48, weight: 112.41, type: 'metal' },
        { name: 'Indium', symbol: 'In', number: 49, weight: 114.82, type: 'metal' },
        { name: 'Tin', symbol: 'Sn', number: 50, weight: 118.71, type: 'metal' },
        { name: 'Antimony', symbol: 'Sb', number: 51, weight: 121.76, type: 'metal' },
        { name: 'Tellurium', symbol: 'Te', number: 52, weight: 127.6, type: 'nonmetal' },
        { name: 'Iodine', symbol: 'I', number: 53, weight: 126.9, type: 'nonmetal' },
        { name: 'Xenon', symbol: 'Xe', number: 54, weight: 131.29, type: 'noblegas' },
    ],
    [
        { name: 'Cesium', symbol: 'Cs', number: 55, weight: 132.91, type: 'metal' },
        { name: 'Barium', symbol: 'Ba', number: 56, weight: 137.33, type: 'metal' },
        { name: 'Lanthanum', symbol: 'La', number: 57, weight: 138.91, type: 'lanthanum' },
        { name: 'Hafnium', symbol: 'Hf', number: 72, weight: 178.49, type: 'metal' },
        { name: 'Tantalum', symbol: 'Ta', number: 73, weight: 180.95, type: 'metal' },
        { name: 'Tungsten', symbol: 'W', number: 74, weight: 183.84, type: 'metal' },
        { name: 'Rhenium', symbol: 'Re', number: 75, weight: 186.21, type: 'metal' },
        { name: 'Osmium', symbol: 'Os', number: 76, weight: 190.23, type: 'metal' },
        { name: 'Iridium', symbol: 'Ir', number: 77, weight: 192.22, type: 'metal' },
        { name: 'Platinum', symbol: 'Pt', number: 78, weight: 195.09, type: 'metal' },
        { name: 'Gold', symbol: 'Au', number: 79, weight: 196.97, type: 'metal' },
        { name: 'Mercury', symbol: 'Hg', number: 80, weight: 200.59, type: 'metal' },
        { name: 'Thallium', symbol: 'Tl', number: 81, weight: 204.38, type: 'metal' },
        { name: 'Lead', symbol: 'Pb', number: 82, weight: 207.2, type: 'metal' },
        { name: 'Bismuth', symbol: 'Bi', number: 83, weight: 208.98, type: 'metal' },
        { name: 'Polonium', symbol: 'Po', number: 84, weight: 209, type: 'metal' },
        { name: 'Astatine', symbol: 'At', number: 85, weight: 210, type: 'nonmetal' },
        { name: 'Radon', symbol: 'Rn', number: 86, weight: 222, type: 'noblegas' },
    ],
    [
        { name: 'Francium', symbol: 'Fr', number: 87, weight: 223, type: 'metal' },
        { name: 'Radium', symbol: 'Ra', number: 88, weight: 226, type: 'metal' },
        { name: 'Actinium', symbol: 'Ac', number: 89, weight: 227, type: 'actinium' },
        { name: 'Rutherfordium', symbol: 'Rf', number: 104, weight: 267, type: 'metal' },
        { name: 'Dubnium', symbol: 'Db', number: 105, weight: 268, type: 'metal' },
        { name: 'Seaborgium', symbol: 'Sg', number: 106, weight: 271, type: 'metal' },
        { name: 'Bohrium', symbol: 'Bh', number: 107, weight: 272, type: 'metal' },
        { name: 'Hassium', symbol: 'Hs', number: 108, weight: 277, type: 'metal' },
        { name: 'Meitnerium', symbol: 'Mt', number: 109, weight: 278, type: 'metal' },
        { name: 'Darmstadtium', symbol: 'Ds', number: 110, weight: 281, type: 'metal' },
        { name: 'Roentgenium', symbol: 'Rg', number: 111, weight: 280, type: 'metal' },
        { name: 'Copernicium', symbol: 'Cn', number: 112, weight: 285, type: 'metal' },
        { name: 'Nihonium', symbol: 'Nh', number: 113, weight: 286, type: 'metal' },
        { name: 'Flerovium', symbol: 'Fl', number: 114, weight: 289, type: 'metal' },
        { name: 'Moscovium', symbol: 'Mc', number: 115, weight: 290, type: 'metal' },
        { name: 'Livermorium', symbol: 'Lv', number: 116, weight: 293, type: 'metal' },
        { name: 'Tennessine', symbol: 'Ts', number: 117, weight: 294, type: 'metal' },
        { name: 'Oganesson', symbol: 'Og', number: 118, weight: 294, type: 'noblegas' },
    ],
]

const series = [
    [
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: 'Cerium', symbol: 'Ce', number: 58, weight: 140.12, type: 'lanthanum' },
        { name: 'Praseodymium', symbol: 'Pr', number: 59, weight: 140.91, type: 'lanthanum' },
        { name: 'Neodymium', symbol: 'Nd', number: 60, weight: 144.24, type: 'lanthanum' },
        { name: 'Promethium', symbol: 'Pm', number: 61, weight: 145, type: 'lanthanum' },
        { name: 'Samarium', symbol: 'Sm', number: 62, weight: 150.36, type: 'lanthanum' },
        { name: 'Europium', symbol: 'Eu', number: 63, weight: 151.96, type: 'lanthanum' },
        { name: 'Gadolinium', symbol: 'Gd', number: 64, weight: 157.25, type: 'lanthanum' },
        { name: 'Terbium', symbol: 'Tb', number: 65, weight: 158.93, type: 'lanthanum' },
        { name: 'Dysprosium', symbol: 'Dy', number: 66, weight: 162.5, type: 'lanthanum' },
        { name: 'Holmium', symbol: 'Ho', number: 67, weight: 164.93, type: 'lanthanum' },
        { name: 'Erbium', symbol: 'Er', number: 68, weight: 167.26, type: 'lanthanum' },
        { name: 'Thulium', symbol: 'Tm', number: 69, weight: 168.93, type: 'lanthanum' },
        { name: 'Ytterbium', symbol: 'Yb', number: 70, weight: 173.04, type: 'lanthanum' },
        { name: 'Lutetium', symbol: 'Lu', number: 71, weight: 174.97, type: 'lanthanum' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
    ],
    [
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
        { name: 'Thorium', symbol: 'Th', number: 90, weight: 232.04, type: 'actinium' },
        { name: 'Protactinium', symbol: 'Pa', number: 91, weight: 231.04, type: 'actinium' },
        { name: 'Uranium', symbol: 'U', number: 92, weight: 238.03, type: 'actinium' },
        { name: 'Neptunium', symbol: 'Np', number: 93, weight: 237, type: 'actinium' },
        { name: 'Plutonium', symbol: 'Pu', number: 94, weight: 244, type: 'actinium' },
        { name: 'Americium', symbol: 'Am', number: 95, weight: 243, type: 'actinium' },
        { name: 'Curium', symbol: 'Cm', number: 96, weight: 247, type: 'actinium' },
        { name: 'Berkelium', symbol: 'Bk', number: 97, weight: 247, type: 'actinium' },
        { name: 'Californium', symbol: 'Cf', number: 98, weight: 251, type: 'actinium' },
        { name: 'Einsteinium', symbol: 'Es', number: 99, weight: 252, type: 'actinium' },
        { name: 'Fermium', symbol: 'Fm', number: 100, weight: 257, type: 'actinium' },
        { name: 'Mendelevium', symbol: 'Md', number: 101, weight: 258, type: 'actinium' },
        { name: 'Nobelium', symbol: 'No', number: 102, weight: 259, type: 'actinium' },
        { name: 'Lawrencium', symbol: 'Lr', number: 103, weight: 262, type: 'actinium' },
        { name: '', symbol: '', number: -1, weight: 0, type: 'empty' },
    ],
];

const niceTypes = {
    'metal': "Metal",
    'nonmetal': "Nonmetal",
    'noblegas': "Noble gas",
    'lanthanum': "Lanthanum",
    'actinium': "Actinium"
}

```

## File: `modules/quickshell/config/modules/clipHistory/ClipHistory.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell
import qs.settings
import qs.components
import qs.services


Scope {
    // ClipHistory Logic
    ClipHistoryLogic {
        id: clipLogic
        onItemExecuted: AppState.closeClipHist()
    }

    Mainscreen {
        Drawer {
            id: clipHistoryDrawer

            required property var modelData
            screen: modelData

            // Drawer configuration (right-sided like Control Center)
            isRightDrawer: true
            drawerWidth: Config.clipHistWidth !== 0 ? Config.clipHistWidth : (ScreenGeometry.getGeometry(screen.name).width) * 0.2
            accentColor: Config.clipHistAccent
            drawerVisible: AppState.clipHistVisible
            contentSpacing: 20

            // Handle close request from focus grab
            onCloseRequested: {
                AppState.closeClipHist();
            }

            // Handle visibility changes
            onDrawerVisibilityChanged: visible => {
                if (visible) {
                    ClipService.refresh();
                    searchBar.forceActiveFocus();
                    clipLogic.resetState();
                    timeUpdateTimer.running = true;
                } else {
                    timeUpdateTimer.running = false;
                }
            }

            // Timer to periodically update "time ago" text
            Timer {
                id: timeUpdateTimer
                interval: 60000  // Update every minute
                repeat: true
                running: false
                onTriggered: {
                    // Trigger a refresh of the preparedEntries to update timeAgo
                    ClipService.lastRefreshTime = ClipService.lastRefreshTime;
                }
            }

            // Search bar at the top
            Searchbar {
                id: searchBar
                Layout.fillWidth: true
                Layout.preferredHeight: 64
                placeholderText: "Search clipboard history..."
                backgroundColor: Colors.darken_20

                onTextChanged: {
                    clipLogic.searchText = searchBar.text;
                    clipLogic.onSearchChanged();
                }

                onNavigateDown: clipLogic.navigateDown()
                onNavigateUp: clipLogic.navigateUp()
                onExecuteSelected: clipLogic.executeSelected()
                
                onCloseRequested: {
                    AppState.closeClipHist();
                }
            }

            // Header with title and clear all button
            RowLayout {
                Layout.fillWidth: true
                spacing: 8

                Text {
                    text: "Clipboard History"
                    color: Colors.text
                    font.pixelSize: Fonts.h4
                    font.weight: Font.Medium
                    Layout.fillWidth: true
                }

                // Clear all button
                ActionButton {
                    id: clearAllButton
                    visible: ClipService.preparedEntries.length > 0
                    Layout.preferredWidth: 24
                    Layout.preferredHeight: 24
                    radius: 12
                    backgroundColor: "transparent"
                    borderColor: Colors.red
                    textColor: Colors.red
                    icon: Fonts.iconClear
                    iconSize: 0.6

                    onClicked: {
                        ClipService.clearAll();
                    }
                }
            }

            // Empty state when no clipboard entries
            Item {
                visible: ClipService.preparedEntries.length === 0
                Layout.fillWidth: true
                Layout.fillHeight: true

                ColumnLayout {
                    anchors.centerIn: parent
                    spacing: 8

                    Text {
                        Layout.alignment: Qt.AlignHCenter
                        text: "\uf0c5"
                        font.family: Fonts.iconFont
                        font.pixelSize: 48
                        color: Qt.alpha(Colors.text, 0.3)
                    }

                    Text {
                        Layout.alignment: Qt.AlignHCenter
                        text: "No clipboard history"
                        font.pixelSize: 16
                        color: Qt.alpha(Colors.text, 0.5)
                    }
                }
            }

            // Clipboard history list - ListView handles its own scrolling
            ListView {
                id: clipHistList
                Layout.fillWidth: true
                Layout.fillHeight: true
                clip: true
                interactive: true
                boundsBehavior: Flickable.StopAtBounds
                spacing: 8
                visible: ClipService.preparedEntries.length > 0

                // Bind to filtered model from logic
                model: clipLogic.filteredItems

                // Auto-scroll when currentIndex changes
                onCurrentIndexChanged: {
                    if (currentIndex >= 0 && currentIndex < count) {
                        positionViewAtIndex(currentIndex, ListView.Contain);
                    }
                }

                // Watch for logic's currentItemIndex changes
                Connections {
                    target: clipLogic
                    
                    function onCurrentItemIndexChanged() {
                        if (clipLogic.currentItemIndex >= 0 && 
                            clipLogic.currentItemIndex < clipHistList.count) {
                            clipHistList.positionViewAtIndex(clipLogic.currentItemIndex, ListView.Contain);
                        }
                    }
                }

                // Delegate for each clipboard item
                delegate: ClipListItem {
                    width: clipHistList.width
                    logic: clipLogic
                    itemIndex: index
                }
            }
        }
    }
}
```

## File: `modules/quickshell/config/modules/clipHistory/ClipHistoryLogic.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.services

/**
 * ClipHistoryLogic - Logic component for clipboard history navigation
 * 
 * Provides keyboard and mouse navigation for clipboard entries
 */
QtObject {
    id: logic

    // ===== State Properties =====
    property int currentItemIndex: 0
    property bool keyboardNavigationActive: false
    property bool mouseHoverEnabled: true

    // ===== External Properties =====
    property string searchText: ""

    // ===== Computed Properties =====
    readonly property var filteredItems: {
        if (searchText.trim() === "") {
            return ClipService.preparedEntries;
        }
        return ClipService.preparedEntries.filter(entry => 
            entry.text.toLowerCase().includes(searchText.toLowerCase())
        );
    }

    // ===== Signals =====
    signal itemExecuted

    // ===== Navigation Functions =====
    
    /**
     * Navigate down through items (wraps to top when reaching bottom)
     */
    function navigateDown() {
        logic.keyboardNavigationActive = true;
        
        if (logic.filteredItems.length === 0) return;

        // Use modulo to wrap around to the beginning
        logic.currentItemIndex = (logic.currentItemIndex + 1) % logic.filteredItems.length;
    }

    /**
     * Navigate up through items (wraps to bottom when reaching top)
     */
    function navigateUp() {
        logic.keyboardNavigationActive = true;
        
        if (logic.filteredItems.length === 0) return;

        // Add length before modulo to handle negative wrap-around
        logic.currentItemIndex = (logic.currentItemIndex - 1 + logic.filteredItems.length) % logic.filteredItems.length;
    }

    /**
     * Execute the currently selected item
     */
    function executeSelected() {
        if (logic.filteredItems.length === 0 || logic.currentItemIndex >= logic.filteredItems.length) return;

        const currentItem = logic.filteredItems[logic.currentItemIndex];
        ClipService.copyAndPaste(currentItem.entry);
        logic.itemExecuted();
    }

    /**
     * Delete the currently selected item
     */
    function deleteSelected() {
        if (logic.filteredItems.length === 0 || logic.currentItemIndex >= logic.filteredItems.length) return;

        const currentItem = logic.filteredItems[logic.currentItemIndex];
        ClipService.deleteEntry(currentItem.entry);
        
        // Adjust index if needed
        if (logic.currentItemIndex >= logic.filteredItems.length - 1) {
            logic.currentItemIndex = Math.max(0, logic.filteredItems.length - 2);
        }
    }

    // ===== Mouse Interaction Helpers =====

    /**
     * Select an item by index (typically from mouse hover)
     * @param {int} itemIndex - The index of the item to select
     */
    function selectItem(itemIndex) {
        if (logic.keyboardNavigationActive || !logic.mouseHoverEnabled) return;
        
        if (itemIndex >= 0 && itemIndex < logic.filteredItems.length) {
            logic.currentItemIndex = itemIndex;
        }
    }

    /**
     * Re-enable mouse selection (called on mouse movement)
     */
    function enableMouseSelection() {
        logic.keyboardNavigationActive = false;
        logic.mouseHoverEnabled = true;
    }

    // ===== State Reset =====

    /**
     * Reset all state to defaults
     */
    function resetState() {
        logic.currentItemIndex = 0;
        logic.keyboardNavigationActive = false;
        logic.mouseHoverEnabled = true;
    }

    /**
     * Reset indices when search changes
     */
    function onSearchChanged() {
        logic.currentItemIndex = 0;
    }
}

```

## File: `modules/quickshell/config/modules/clipHistory/ClipListItem.qml`

```qml
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import qs.settings
import qs.services

// Delegate for each clipboard item
Rectangle {
    id: root
    // These properties are provided by the ListView delegate context
    required property var modelData
    required property int index

    // Properties passed from parent
    required property var logic
    required property int itemIndex

    readonly property bool itemSelected: (itemIndex === logic.currentItemIndex)
    property bool isHovered: false

    width: ListView.view.width
    // Dynamic height based on content type
    height: {
        if (modelData.isImage) {
            const imgH = Math.min(140, Math.max(64, (modelData.height || 120)));
            return imgH + 24; // padding
        }
        return 80; // text entries
    }
    // Color is determined by selection state and hover state
    color: {
        if (itemSelected) return Colors.brighten_10;
        if (isHovered) return Colors.darken_10;
        return Colors.darken_20;
    }
    radius: 12

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor

        onPositionChanged: logic.enableMouseSelection()
        onEntered: {
            root.isHovered = true;
            logic.selectItem(root.itemIndex);
        }
        onExited: {
            root.isHovered = false;
        }
        onClicked: {
            ClipService.copyAndPaste(root.modelData.entry);
            AppState.closeClipHist();
        }
    }

    RowLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 12

        // Image preview for image entries
        Item {
            id: imageContainer
            Layout.fillWidth: true
            Layout.fillHeight: true
            visible: root.modelData.isImage

            readonly property int previewHeight: {
                const h = root.modelData.height || 0;
                return Math.min(140, Math.max(64, h || 120));
            }

            // Temp file path for decoded image
            property string tmpPath: "/tmp/qs-cliphist-" + (root.modelData.id || 0)

            // Helper to escape single quotes in shell
            function shellSingleQuoteEscape(s) {
                return String(s).replace(/'/g, "'\\''");
            }

            // Decode process; sets image source when finished
            Process {
                id: decodeProc
                command: ["bash", "-c", `echo '${imageContainer.shellSingleQuoteEscape(root.modelData.entry)}' | cliphist decode > '${imageContainer.tmpPath}'`]
                onRunningChanged: {
                    if (!running && previewImage.status !== Image.Loading) {
                        previewImage.source = imageContainer.tmpPath + "?t=" + Date.now();
                    }
                }
            }

            Component.onCompleted: {
                if (visible) {
                    decodeProc.running = true;
                }
            }

            Component.onDestruction: {
                // Clean up temp file
                Quickshell.execDetached(["bash", "-c", `[ -f '${tmpPath}' ] && rm -f '${tmpPath}'`]);
            }

            Image {
                id: previewImage
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                asynchronous: true
                source: ""
            }
        }

        // Text content for non-image entries
        ColumnLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 4
            visible: !root.modelData.isImage

            // Clipboard text preview
            Text {
                Layout.fillWidth: true
                text: root.modelData.text.length > 200 ? root.modelData.text.substring(0, 200) + "..." : root.modelData.text
                color: Colors.text
                font.pixelSize: Fonts.p
                elide: Text.ElideRight
                wrapMode: Text.Wrap
                maximumLineCount: 2
            }

            // Entry info display
            Text {
                text: `${root.modelData.timeAgo}`
                color: Qt.alpha(Colors.text, 0.5)
                font.pixelSize: 12
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/AudioDevicePicker.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Pipewire
import qs.settings
import qs.services
import qs.components.animations

Item {
    id: root
    
    property bool isInput: false
    property var selectedDevice: null
    
    signal deviceSelected(var device)
    signal cancelled()
    
    readonly property var availableDevices: isInput ? Audio.inputDevices : Audio.outputDevices
    
    // Semi-transparent overlay
    Rectangle {
        id: overlay
        anchors.fill: parent
        color: Colors.bg
        opacity: 0.95
        
        MouseArea {
            anchors.fill: parent
            onClicked: root.cancelled()
        }
    }
    
    // Dialog box
    Rectangle {
        id: dialog
        anchors.centerIn: parent
        width: Math.min(parent.width - 60, 500)
        height: Math.min(parent.height - 120, contentColumn.implicitHeight + 48)
        
        color: Colors.brighten_10
        radius: 12
        
        ColumnLayout {
            id: contentColumn
            anchors.fill: parent
            anchors.margins: 24
            spacing: 16
            
            // Header
            Text {
                Layout.fillWidth: true
                text: root.isInput ? "Select Input Device" : "Select Output Device"
                color: Colors.text
                font.pixelSize: Fonts.h4
                font.bold: true
            }
            
            // Divider
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: Colors.textSubdued
                opacity: 0.3
            }
            
            // Device list
            Flickable {
                Layout.fillWidth: true
                Layout.fillHeight: true
                clip: true
                
                contentHeight: deviceColumn.implicitHeight
                
                ColumnLayout {
                    id: deviceColumn
                    width: parent.width
                    spacing: 8
                    
                    Repeater {
                        model: root.availableDevices
                        
                        delegate: Rectangle {
                            required property var modelData
                            required property int index
                            
                            id: deviceItem
                            
                            Layout.fillWidth: true
                            Layout.preferredHeight: 50
                            
                            radius: 8
                            color: deviceMouseArea.containsMouse ? Colors.brighten_10 : "transparent"
                            border.width: deviceItem.isSelected ? 2 : 0
                            border.color: Config.controlCenterAccent
                            
                            property bool isSelected: {
                                const currentDevice = root.isInput ? Audio.source : Audio.sink;
                                return currentDevice?.id === deviceItem.modelData.id;
                            }
                            
                            AnimatedColor on color {}
                            AnimatedColor on border.color {}
                            
                            RowLayout {
                                anchors.fill: parent
                                anchors.margins: 12
                                spacing: 12
                                
                                // Radio indicator
                                Rectangle {
                                    Layout.preferredWidth: 20
                                    Layout.preferredHeight: 20
                                    radius: 10
                                    color: "transparent"
                                    border.width: 2
                                    border.color: deviceItem.isSelected ? Config.controlCenterAccent : Colors.textSubdued
                                    
                                    Rectangle {
                                        anchors.centerIn: parent
                                        width: 10
                                        height: 10
                                        radius: 5
                                        color: Config.controlCenterAccent
                                        visible: deviceItem.isSelected
                                    }
                                    
                                    AnimatedColor on border.color {}
                                }
                                
                                // Device name
                                Text {
                                    Layout.fillWidth: true
                                    text: deviceItem.modelData.description || deviceItem.modelData.name || "Unknown Device"
                                    color: Colors.text
                                    font.pixelSize: Fonts.p
                                    elide: Text.ElideRight
                                    
                                    AnimatedColor on color {}
                                }
                            }
                            
                            MouseArea {
                                id: deviceMouseArea
                                anchors.fill: parent
                                hoverEnabled: true
                                cursorShape: Qt.PointingHandCursor
                                
                                onClicked: {
                                    root.selectedDevice = deviceItem.modelData;
                                    root.deviceSelected(deviceItem.modelData);
                                }
                            }
                        }
                    }
                }
            }
            
            // Divider
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: Colors.textSubdued
                opacity: 0.3
            }
            
            // Buttons
            RowLayout {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignRight
                spacing: 12
                
                // Cancel button
                Rectangle {
                    Layout.preferredWidth: 80
                    Layout.preferredHeight: 36
                    radius: 8
                    color: cancelMouse.containsMouse ? Colors.brighten_10 : "transparent"
                    border.width: 1
                    border.color: Colors.textSubdued
                    
                    AnimatedColor on color {}
                    
                    Text {
                        anchors.centerIn: parent
                        text: "Cancel"
                        color: Colors.text
                        font.pixelSize: Fonts.p
                    }
                    
                    MouseArea {
                        id: cancelMouse
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                        onClicked: root.cancelled()
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/AudioDeviceSelector.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Pipewire
import qs.settings
import qs.services
import qs.components.animations

Rectangle {
    id: root
    
    required property bool input
    
    implicitHeight: 60
    radius: 8
    color: Colors.brighten_10
    
    AnimatedColor on color {}
    
    // Scale effect on hover
    scale: mouseArea.containsMouse ? 1.02 : 1.0
    AnimatedScale on scale {}
    
    RowLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 12
        
        // Icon
        Text {
            Layout.alignment: Qt.AlignVCenter
            text: root.input ? Fonts.iconHeadset : Fonts.iconSpeaker
            font.family: Fonts.iconFont
            font.pixelSize: 28
            color: Colors.text
            
            AnimatedColor on color {}
        }
        
        // Labels
        ColumnLayout {
            Layout.fillWidth: true
            spacing: 2
            
            Text {
                Layout.fillWidth: true
                text: root.input ? "Input" : "Output"
                color: Colors.text
                font.pixelSize: Fonts.h6
                font.bold: true
                elide: Text.ElideRight
                
                AnimatedColor on color {}
            }
            
            Text {
                Layout.fillWidth: true
                text: (root.input ? Audio.sourceName : Audio.sinkName) || "No Device"
                color: Colors.textSubdued
                font.pixelSize: Fonts.p
                elide: Text.ElideRight
                
                AnimatedColor on color {}
            }
        }
        
        // Chevron icon
        Text {
            Layout.alignment: Qt.AlignVCenter
            text: Fonts.iconChevronRight
            font.family: Fonts.iconFont
            font.pixelSize: 16
            color: Colors.textSubdued
            
            AnimatedColor on color {}
        }
    }
    
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        
        onClicked: {
            root.clicked();
        }
    }
    
    signal clicked()
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/BluetoothDeviceItem.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import qs.settings
import qs.services
import qs.components
import qs.components.animations

Rectangle {
    id: root
    
    required property var device
    
    signal connectClicked()
    signal disconnectClicked()
    signal forgetClicked()
    
    height: mainContent.implicitHeight + 24  // 12px margins top+bottom
    color: (mouseArea.containsMouse && !root.device.connected) ? Colors.brighten_10 : "transparent"
    radius: 8
    
    AnimatedColor on color {}
    
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        z: 0
        enabled: !root.device.connected && !root.device.pairing
        cursorShape: enabled ? Qt.PointingHandCursor : Qt.ArrowCursor
        
        onClicked: {
            if (!root.device.connected) {
                root.connectClicked();
            }
        }
    }
    
    // Subtle separator line at bottom
    Rectangle {
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 12
        anchors.rightMargin: 12
        height: 1
        color: Colors.brighten_3
        z: 1
    }
    
    ColumnLayout {
        id: mainContent
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 12
        spacing: 8
        z: 10  // Ensure content and buttons are above the MouseArea
        
        // Main device info row
        RowLayout {
            Layout.fillWidth: true
            spacing: 12

            // Connected checkmark
            Text {
                visible: root.device.connected
                text: Fonts.iconTrue
                color: Colors.green
                font.pixelSize: 18
                font.family: Fonts.iconFont
            }

            // Device type icon
            Text {
                text: root.getDeviceIconText()
                color: Colors.text
                Layout.preferredWidth: 20
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
                font.family: Fonts.iconFont
            }
            
            // Device name
            Text {
                Layout.fillWidth: true
                text: {
                    const name = root.device.name || root.device.deviceName || "";
                    const macPattern = /^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$/;
                    const isMacAddress = name.match(macPattern) !== null;
                    return (name.length > 0 && !isMacAddress) ? name : "Unknown Device";
                }
                horizontalAlignment: Text.AlignLeft
                color: Colors.text
                font.pixelSize: Fonts.h5
                elide: Text.ElideRight
            }
            
            // Battery indicator
            RowLayout {
                spacing: 4
                visible: root.device.batteryAvailable
                
                Text {
                    text: Fonts.iconBattery
                    color: Colors.textSubdued
                    font.pixelSize: 14
                    font.family: Fonts.iconFont
                }
                
                Text {
                    text: Math.round(root.device.battery * 100) + "%"
                    color: Colors.textSubdued
                    font.pixelSize: Fonts.p
                }
            }
            
            // Pairing spinner
            Text {
                id: pairingSpinner
                visible: root.device.pairing
                text: Fonts.iconSpinner
                color: Colors.text
                font.pixelSize: 16
                font.family: Fonts.iconFont
                
                RotationAnimator on rotation {
                    running: pairingSpinner.visible
                    from: 0
                    to: 360
                    duration: 1000
                    loops: Animation.Infinite
                }
            }
            
            // Status text for non-connected devices
            Text {
                visible: !root.device.connected && !root.device.pairing
                text: root.device.paired ? "Paired" : "Available"
                color: root.device.paired ? Config.controlCenterAccent : Colors.textSubdued
                font.pixelSize: Fonts.p
            }

            // Disconnect Button
            ActionButton {
                visible: root.device.connected
                Layout.preferredWidth: 20
                Layout.preferredHeight: 20
                radius: 12
                icon: Fonts.iconFalse
                textColor: Colors.text
                backgroundColor: Colors.red
                borderColor: Colors.red
                onClicked: root.disconnectClicked()
            }
            
            // Forget/Unpair Button (shown for paired but not connected devices)
            ActionButton {
                visible: root.device.paired && !root.device.connected
                Layout.preferredWidth: 20
                Layout.preferredHeight: 20
                radius: 12
                icon: Fonts.iconFalse
                textColor: Colors.text
                backgroundColor: Colors.red
                borderColor: Colors.red
                onClicked: root.forgetClicked()
            }
        }
    }
    
    function getDeviceIconText(): string {
        const icon = root.device.icon || "";
        
        if (icon.includes("audio") || icon.includes("headset") || icon.includes("headphone")) {
            return Fonts.iconHeadset;
        } else if (icon.includes("phone") || icon.includes("smartphone")) {
            return Fonts.iconPhone;
        } else if (icon.includes("computer") || icon.includes("laptop")) {
            return Fonts.iconComputer;
        } else if (icon.includes("input") || icon.includes("keyboard")) {
            return Fonts.iconKeyboard;
        } else if (icon.includes("mouse")) {
            return Fonts.iconMouse;
        } else if (icon.includes("speaker")) {
            return Fonts.iconSpeaker;
        } else {
            return Fonts.iconBluetooth;
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/BluetoothExpanded.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import qs.settings
import qs.services
import qs.components

ExpandedBubble {
    id: root
    
    title: "Bluetooth"
    showHeader: true
    property color background: "transparent"
    
    // Stop discovery when becoming invisible (handles both collapse and close)
    onVisibleChanged: {
        if (!visible) {
            Bluetooth.stopDiscovery();
        }
    }
    
    ColumnLayout {
        anchors.fill: parent
        spacing: 8
        
        // Discoverable Status (when enabled and discoverable)
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 48
            visible: Bluetooth.enabled && Bluetooth.discoverable
            color: "transparent"
            radius: 8
            
            RowLayout {
                anchors.fill: parent
                anchors.margins: 0
                spacing: 12
                
                Text {
                    text: Fonts.iconEye
                    color: Colors.text
                    Layout.preferredWidth: 16
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 20
                    font.family: Fonts.iconFont
                }

                Text {
                    text: "Discoverable"
                    color: Colors.text
                    font.pixelSize: Fonts.h5
                }

                Item {
                    Layout.fillWidth: true
                }

                Text {
                    text: "Visible " + Fonts.iconTrue
                    color: Colors.green
                    font.pixelSize: Fonts.h5
                }
            }
        }
        
        // Bluetooth Toggle
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 48
            color: root.background
            radius: 8
            
            RowLayout {
                anchors.fill: parent
                anchors.margins: 0
                spacing: 12
                
                Text {
                    text: Bluetooth.bluetoothIcon
                    color: Colors.text
                    Layout.preferredWidth: 16
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 20
                    font.family: Fonts.iconFont
                }
                
                Text {
                    Layout.fillWidth: true
                    text: "Bluetooth"
                    color: Colors.text
                    font.pixelSize: Fonts.h5
                }
                
                Toggle {
                    checkedColor: Config.controlCenterAccent
                    checked: Bluetooth.enabled
                    
                    onToggled: (checked) => {
                        Bluetooth.enableBluetooth(checked);
                        if (checked) {
                            Bluetooth.startDiscovery();
                        }
                    }
                }
            }
        }

        // Bluetooth Devices List
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: Colors.brighten_3
            radius: 8
            visible: Bluetooth.enabled
            
            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 0
                
                // Devices list
                ScrollView {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.minimumHeight: 200
                    clip: true
                    
                    ListView {
                        id: devicesList
                        width: parent.width
                        model: Bluetooth.sortedDevices
                        spacing: 4
                        interactive: true
                        boundsBehavior: Flickable.StopAtBounds
                        
                        delegate: BluetoothDeviceItem {
                            required property var modelData
                            required property int index
                            
                            width: devicesList.width
                            device: modelData
                            
                            onConnectClicked: {
                                // Use the service connect function which handles pairing + connection
                                Bluetooth.connectDevice(device);
                            }
                            
                            onDisconnectClicked: {
                                Bluetooth.disconnectDevice(device);
                            }
                            
                            onForgetClicked: {
                                Bluetooth.forgetDevice(device);
                            }
                        }
                        
                        // Scan status and button as footer
                        footer: Item {
                            width: devicesList.width
                            height: 48
                            
                            RowLayout {
                                anchors.centerIn: parent
                                spacing: 12
                                
                                // Scanning indicator text
                                Text {
                                    visible: Bluetooth.discovering
                                    text: "Scanning for devices..."
                                    color: Colors.textSubdued
                                    font.pixelSize: Fonts.p
                                    
                                    // Subtle pulsing animation
                                    opacity: scanPulse.running ? 0.5 + (scanPulse.value * 0.5) : 1.0
                                    
                                    SequentialAnimation {
                                        id: scanPulse
                                        running: Bluetooth.discovering
                                        loops: Animation.Infinite
                                        
                                        property real value: 0
                                        
                                        NumberAnimation {
                                            target: scanPulse
                                            property: "value"
                                            from: 0
                                            to: 1
                                            duration: 1000
                                            easing.type: Easing.InOutQuad
                                        }
                                        NumberAnimation {
                                            target: scanPulse
                                            property: "value"
                                            from: 1
                                            to: 0
                                            duration: 1000
                                            easing.type: Easing.InOutQuad
                                        }
                                    }
                                }
                                
                                ReloadButton {
                                    isLoading: false  // Never spin, just show button
                                    onClicked: {
                                        if (Bluetooth.discovering) {
                                            Bluetooth.stopDiscovery();
                                        } else {
                                            Bluetooth.startDiscovery();
                                        }
                                    }
                                }
                            }
                        }
                        
                        // Show message when no devices
                        ColumnLayout {
                            anchors.centerIn: parent
                            visible: devicesList.count === 0
                            spacing: 12
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: Bluetooth.discovering ? "Scanning for devices..." : "No devices found"
                                color: Colors.textSubdued
                                font.pixelSize: Fonts.p
                                horizontalAlignment: Text.AlignHCenter
                            }
                            
                            ReloadButton {
                                Layout.alignment: Qt.AlignHCenter
                                visible: !Bluetooth.discovering
                                isLoading: false
                                onClicked: Bluetooth.startDiscovery()
                            }
                        }
                    }
                }
            }
        }
        
        // Bluetooth disabled message
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: Colors.brighten_3
            radius: 8
            visible: !Bluetooth.enabled
            
            Text {
                anchors.centerIn: parent
                text: "Bluetooth is disabled"
                color: Colors.textSubdued
                font.pixelSize: Fonts.h5
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/Bubble.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import Quickshell.Widgets
import qs.settings
import qs.components.animations

MouseArea {
    id: root

    // Orientation: "horizontal" (2x1) or "vertical" (1x2)
    required property string orientation
    
    // Quick action button properties
    required property string icon
    required property bool isActive
    property color disabledText: Colors.text
    property color disabledBackground: "transparent"
    property color disabledBorder: Colors.text
    
    // Label properties
    required property string label
    required property string sublabel
    
    // Expand menu properties
    property Component expandedContent: null  // Component to show when expanded
    property real expandedHeight: 600  // Desired height when expanded (default 600)
    
    // Meter/progress bar properties
    property bool showMeter: false  // Enable meter display
    property real meterLevel: 0.0  // Level from 0.0 to 1.0
    property color meterColor: root.accentColor  // Color of the meter fill
    
    // Signals
    signal quickActionClicked()
    signal expandClicked()
    
    // Accent color for active state
    property color accentColor: Config.controlCenterAccent
    property color inactiveColor: Colors.darken_20
    property color textColor: Colors.text
    property color subtextColor: Colors.textSubdued
    
    // Bubble is expanded or not
    property bool expanded: false
    
    // MouseArea configuration
    hoverEnabled: true
    cursorShape: Qt.PointingHandCursor
    onClicked: root.expandClicked()
    
    // Visual background
    Rectangle {
        id: background
        anchors.fill: parent
        color: root.expanded ? "transparent" : root.inactiveColor
        radius: root.orientation === "horizontal" ? height / 4 : width / 4
        scale: parent.containsMouse ? 1.03 : 1

        AnimatedScale on scale{}
        
        // Meter fill (clipped to show level with rounded corners)
        ClippingRectangle {
            id: meterContainer
            anchors.fill: parent
            visible: root.showMeter && !root.expanded
            radius: background.radius
            color: "transparent"
            
            property bool animationsReady: false
            property real lastMeterLevel: root.meterLevel
            
            // Only enable animations after meterLevel actually changes
            Connections {
                target: root
                function onMeterLevelChanged() {
                    if (meterContainer.visible && meterContainer.lastMeterLevel !== root.meterLevel) {
                        meterContainer.animationsReady = true;
                        meterContainer.lastMeterLevel = root.meterLevel;
                    }
                }
            }
            
            // Disable animations when visibility changes (expand/collapse)
            onVisibleChanged: {
                if (visible) {
                    animationsReady = false;
                    lastMeterLevel = root.meterLevel;
                }
            }
            
            Rectangle {
                id: meterFill
                color: root.isActive ? root.meterColor : Qt.alpha(root.meterColor, 0.3)
                
                // Position and size based on orientation
                anchors {
                    left: parent.left
                    bottom: parent.bottom
                    right: root.orientation === "vertical" ? parent.right : undefined
                    top: root.orientation === "horizontal" ? parent.top : undefined
                }
                
                // Width for horizontal, height for vertical
                width: root.orientation === "horizontal" ? parent.width * root.meterLevel : parent.width
                height: root.orientation === "vertical" ? parent.height * root.meterLevel : parent.height
                
                AnimatedWidth on width {
                    enabled: meterContainer.animationsReady
                }
                
                AnimatedHeight on height {
                    enabled: meterContainer.animationsReady
                }
                
                AnimatedColor on color {}
            }
        }
    }
    
    // Main layout
    Item {
        id: bubbleContent
        anchors.fill: parent
        anchors.leftMargin: root.orientation === "horizontal" ? 16 : undefined
        anchors.rightMargin: root.orientation === "horizontal" ? 16 : undefined
        anchors.bottomMargin: root.orientation === "vertical" ? 16 : undefined
        anchors.topMargin: root.orientation === "vertical" ? 16 : undefined
        visible: !root.expanded
        
        // Quick action button (circular, positioned left/bottom depending on orientation)
        Rectangle {
            id: quickActionButton
            
            // Size: 60% of bubble width/height
            width: root.orientation === "horizontal" ? parent.height * 0.6 : parent.width * 0.6
            height: width
            radius: width
                        
            // Position: left for horizontal, bottom for vertical
            anchors {
                left: root.orientation === "horizontal" ? parent.left : undefined
                bottom: root.orientation === "vertical" ? parent.bottom : undefined
                horizontalCenter: root.orientation === "vertical" ? parent.horizontalCenter : undefined
                verticalCenter: root.orientation === "horizontal" ? parent.verticalCenter : undefined
            }
            
            color: root.isActive ? root.accentColor : root.disabledBackground
            border.width: root.isActive ? 0 : 1
            border.color: root.disabledBorder
            
            // Animations
            AnimatedColor on color {}
            AnimatedColor on border.color {}
            
            // Scale on hover
            scale: quickActionMouse.containsMouse ? 1.05 : 1.0
            AnimatedScale on scale {}
            
            // Icon
            Text {
                anchors.centerIn: parent
                text: root.icon
                color: root.isActive ? Colors.textSecondary : root.disabledText
                font.pixelSize: parent.width * 0.5
                font.family: Fonts.iconFont
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                
                AnimatedColor on color {}
            }
            
            // Mouse area for quick action
            MouseArea {
                id: quickActionMouse
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onClicked: root.quickActionClicked()
            }
        }
        
        // Label area (transparent, expands on click)
        Item {
            id: labelArea
            anchors {
                fill: parent
                // Don't overlap with quick action button
                leftMargin: root.orientation === "horizontal" ? quickActionButton.width + 12 : 0
                bottomMargin: root.orientation === "vertical" ? quickActionButton.height + 12 : 0
            }
            
            ColumnLayout {
                anchors.centerIn: parent
                spacing: 2
                width: parent.width
                
                Text {
                    Layout.fillWidth: true
                    text: root.label
                    color: root.textColor
                    font.pixelSize: Fonts.h6
                    font.bold: true
                    horizontalAlignment: root.orientation === "horizontal" ? Text.AlignLeft : Text.AlignHCenter
                    elide: Text.ElideRight
                    
                    AnimatedColor on color {}
                }
                
                Text {
                    Layout.fillWidth: true
                    text: root.sublabel
                    color: root.subtextColor
                    font.pixelSize: Fonts.p
                    horizontalAlignment: root.orientation === "horizontal" ? Text.AlignLeft : Text.AlignHCenter
                    elide: Text.ElideRight
                    
                    AnimatedColor on color {}
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/Clock.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.settings
import qs.services

Column {
    id: timeColumn
    spacing: 4

    Text {
        text: Time.time
        color: Colors.text
        font.pixelSize: Fonts.h1
        font.weight: Font.Bold
    }

    Text {
        text: Time.fulldate
        color: Colors.text
        font.pixelSize: Fonts.p
        font.weight: Font.Light
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/ExpandedBubble.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import qs.settings
import qs.components

Rectangle {
    id: root
    
    // Content to be placed inside
    default property alias contentData: contentItem.data
    
    // Customizable properties
    property string title: ""
    property bool showHeader: title !== ""
    property color backgroundColor: Colors.darken_20
    property real contentSpacing: 16
    property real maxHeight: 600
    
    // Signal when close button is clicked
    signal closeRequested()
    
    // Use explicit height equal to maxHeight - content will be clipped/scrollable
    height: maxHeight
    
    // Default background styling
    color: backgroundColor
    radius: 12
    
    // MouseArea to consume all clicks and prevent propagation to overlay behind
    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.AllButtons
        hoverEnabled: true
        propagateComposedEvents: false
        z: -1  // Behind content but still blocks events
        
        // Allow wheel events for scrolling
        onWheel: (wheel) => { wheel.accepted = false; }
    }
    
    ColumnLayout {
        id: mainLayout
        anchors.fill: parent
        anchors.margins: 16
        spacing: root.contentSpacing
        
        // Header
        RowLayout {
            Layout.fillWidth: true
            visible: root.showHeader
            spacing: 12
            
            Text {
                Layout.fillWidth: true
                text: root.title
                color: Colors.text
                font.pixelSize: Fonts.h3
                font.bold: true
            }
            
            // Close button
            ActionButton {
                id: closeButton
                Layout.preferredWidth: 24
                Layout.preferredHeight: 24
                radius: 12
                backgroundColor: Colors.red
                borderColor: Colors.red
                textColor: closeButton.containsMouse ? Colors.text : Colors.red
                icon: Fonts.iconFalse
                iconSize: 2/3
                
                onClicked: {
                    root.closeRequested();
                }
            }
        }
        
        // Content container
        Item {
            id: contentItem
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/MediaControls.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell
import Qt5Compat.GraphicalEffects
import Quickshell.Services.Mpris
import qs.settings
import qs.components
import qs.components.animations
import qs.services

/*
 MediaControls.qml — Control center media widget

 Quick summary:
 - Shows album art, track title/artist/album, source name and playback controls.
 - Integrates with the MediaService (MPRIS) singleton used across the project.
 - Supports play/pause, previous/next, and click-to-seek on the progress bar.

 Notes:
 - Firefox MPRIS may keep position across autoplayed videos. Clients should
     reset position when metadata (e.g. title) changes. See Bugzilla #1979495.
 - Keep UI logic lightweight; heavy logic belongs in the MediaService backend.
*/
Rectangle {
    id: root

    Layout.fillWidth: true
    Layout.preferredHeight: hasActivePlayer ? (playerColumn.implicitHeight + 32) : 0
    visible: hasActivePlayer

    color: Colors.darken_20
    radius: 16

    // Bound properties from MediaService for current active player
    property var activePlayer: MediaService.activePlayer
    property bool hasActivePlayer: MediaService.hasActivePlayer
    property bool isPlaying: MediaService.isPlaying
    property real displayPosition: MediaService.displayPosition
    property real displayLength: MediaService.displayLength

    // Derived value: fraction of progress (0.0 - 1.0). Keeps progress math in one place.
    readonly property real progressFraction: {
        if (!activePlayer || !activePlayer.lengthSupported)
            return 0;
        const len = displayLength;
        if (!isFinite(len) || len <= 0)
            return 0;
        return Math.min(1, Math.max(0, displayPosition / len));
    }

    AnimatedHeight on Layout.preferredHeight {
        enabled: true
    }

    AnimatedOpacity on opacity {}

    Column {
        id: playerColumn
        anchors.fill: parent
        anchors {
            topMargin: 12
            rightMargin: 12
            bottomMargin: 6
            leftMargin: 12
        }
        spacing: 18

        Item {
            width: parent.width
            height: albumArtSize

            readonly property int albumArtSize: 80

            Rectangle {
                id: albumArtContainer
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                width: parent.albumArtSize
                height: parent.albumArtSize
                radius: 12
                color: Colors.brighten_10
                clip: true

                Image {
                    id: albumArt
                    property int radius: 8
                    anchors.fill: parent
                    source: root.activePlayer?.trackArtUrl || ""
                    fillMode: Image.PreserveAspectCrop
                    smooth: true
                    visible: source != ""
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        id: opacityMaskInstance
                        maskSource: Rectangle {
                            id: maskedRect
                            width: albumArt.width
                            height: albumArt.height
                            radius: albumArt.radius
                        }
                    }
                }

                // Fallback icon when no album art is available
                Text {
                    anchors.centerIn: parent
                    text: Fonts.iconMusic
                    font.family: Fonts.iconFont
                    font.pixelSize: 36
                    color: Colors.textSubdued
                    visible: albumArt.source == ""
                }
            }

            Column {
                id: trackInfoColumn
                anchors {
                    left: albumArtContainer.right
                    leftMargin: 12
                    right: playButton.left
                    rightMargin: 12
                    verticalCenter: parent.verticalCenter
                }
                spacing: 4

                Text {
                    id: trackName
                    width: parent.width
                    text: root.activePlayer?.trackTitle || "No track"
                    color: Colors.text
                    font.pixelSize: Fonts.h5
                    elide: Text.ElideRight
                    horizontalAlignment: Text.AlignLeft
                    wrapMode: Text.NoWrap
                }

                Text {
                    id: artistName
                    width: parent.width
                    text: root.activePlayer?.trackArtist || ""
                    color: Colors.textSubdued
                    font.pixelSize: Fonts.p
                    elide: Text.ElideRight
                    horizontalAlignment: Text.AlignLeft
                    visible: text !== ""
                    wrapMode: Text.NoWrap
                }

                Text {
                    id: albumName
                    width: parent.width
                    text: root.activePlayer?.trackAlbum || ""
                    color: Colors.textSubdued
                    font.pixelSize: Fonts.p - 2
                    elide: Text.ElideRight
                    horizontalAlignment: Text.AlignLeft
                    visible: text !== ""
                    wrapMode: Text.NoWrap
                }

                Text {
                    id: sourceName
                    width: parent.width
                    text: root.activePlayer?.identity || ""
                    color: Colors.textSubdued
                    font.pixelSize: Fonts.p - 4
                    elide: Text.ElideRight
                    horizontalAlignment: Text.AlignLeft
                    visible: text !== ""
                    wrapMode: Text.NoWrap
                }
            }

            ActionButton {
                id: playButton
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                icon: {
                    if (!root.activePlayer)
                        return Fonts.iconPlay;
                    return root.isPlaying ? Fonts.iconPause : Fonts.iconPlay;
                }
                width: 48
                height: 48
                backgroundColor: Config.controlCenterAccent
                borderColor: Config.controlCenterAccent
                textColor: Colors.bg
                enabled: root.activePlayer?.canTogglePlaying || false
                onClicked: {
                    if (root.activePlayer && root.activePlayer.canTogglePlaying) {
                        root.activePlayer.togglePlaying();
                    }
                }
            }
        }

        Item {
            width: parent.width
            height: (previousButton.visible || nextButton.visible) ? 36 : 20
            visible: root.activePlayer?.positionSupported || false

            // Progress row: previous button, progress bar (click-to-seek), next button
            ActionButton {
                id: previousButton
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                icon: Fonts.iconBackward
                width: 36
                height: 36
                enabled: root.activePlayer?.canGoPrevious || false
                visible: root.activePlayer?.canGoPrevious || false
                backgroundColor: "transparent"
                borderColor: "transparent"
                textColor: Colors.text
                onClicked: {
                    if (root.activePlayer && root.activePlayer.canGoPrevious) {
                        root.activePlayer.previous();
                    }
                }
            }

            Rectangle {
                anchors.left: previousButton.visible ? previousButton.right : parent.left
                anchors.leftMargin: previousButton.visible ? 12 : 0
                anchors.right: nextButton.visible ? nextButton.left : parent.right
                anchors.rightMargin: nextButton.visible ? 12 : 0
                anchors.verticalCenter: parent.verticalCenter
                height: 10
                radius: height
                color: Colors.brighten_10

                // Progress indicator width is computed from root.progressFraction
                Rectangle {
                    height: parent.height
                    width: root.progressFraction * parent.width
                    radius: parent.radius
                    color: Config.controlCenterAccent

                    // AnimatedWidth is provided by qs.components.animations; keep it here
                    AnimatedWidth on width {}
                }

                MouseArea {
                    anchors.fill: parent
                    // Only enable seeking if the player supports it
                    enabled: root.activePlayer?.canSeek || false
                    cursorShape: enabled ? Qt.PointingHandCursor : Qt.ArrowCursor
                    onClicked: mouse => {
                        if (!root.activePlayer || !root.activePlayer.canSeek || !root.activePlayer.lengthSupported)
                            return;

                        // Compute ratio relative to the progress track width
                        const ratio = Math.min(1, Math.max(0, mouse.x / width));
                        const newPosition = ratio * root.activePlayer.length;
                        // Update player position and the displayed position
                        root.activePlayer.position = newPosition;
                        root.displayPosition = newPosition;
                    }
                }
            }

            ActionButton {
                id: nextButton
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                icon: Fonts.iconForward
                width: 36
                height: 36
                enabled: root.activePlayer?.canGoNext || false
                visible: root.activePlayer?.canGoNext || false
                backgroundColor: "transparent"
                borderColor: "transparent"
                textColor: Colors.text
                onClicked: {
                    if (root.activePlayer && root.activePlayer.canGoNext) {
                        root.activePlayer.next();
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/NotificationCenter.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import qs.settings
import qs.services
import qs.components

Item {
    id: root

    ColumnLayout {
        anchors.fill: parent
        spacing: 6

        // Title row with dismiss-all button (above background)
        RowLayout {
            Layout.fillWidth: true
            spacing: 8

            Text {
                text: "Notifications"
                color: Colors.text
                font.pixelSize: Fonts.h4
                font.weight: Font.Medium
                Layout.fillWidth: true
            }

            // Dismiss all button
            ActionButton {
                id: closeButton
                visible: Notifications.list.length > 0
                Layout.preferredWidth: 24
                Layout.preferredHeight: 24
                radius: 12
                backgroundColor: "transparent"
                borderColor: Colors.red
                textColor: Colors.red
                icon: Fonts.iconClear
                iconSize: 0.6

                onClicked: {
                    Notifications.discardAllNotifications();
                }
            }
        }

        // Background with margins
        Rectangle {
            id: background
            Layout.fillWidth: true
            Layout.fillHeight: true
            radius: 12
            color: Colors.darken_20

            // Empty state - shown when no notifications
            Item {
                anchors.fill: parent
                visible: Notifications.list.length === 0
                
                Column {
                    anchors.centerIn: parent
                    spacing: 8
                    
                    Text {
                        text: Fonts.iconAllDone // Material icon: delete_sweep
                        font.family: Fonts.iconFont
                        font.pixelSize: 48
                        color: Qt.alpha(Colors.text, 0.3)
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                    
                    Text {
                        text: "All done!"
                        color: Qt.alpha(Colors.text, 0.5)
                        font.pixelSize: Fonts.h3
                        font.weight: Font.Medium
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }

            // Scrollable notification list - shown when notifications exist
            ScrollView {
                id: scrollView
                anchors.fill: parent
                anchors.margins: 16
                visible: Notifications.list.length > 0

                // Disable horizontal scrolling
                ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                ScrollBar.vertical.policy: ScrollBar.AsNeeded

                // Make it scrollable but not draggable (use mouse wheel/touch only)
                contentWidth: availableWidth

                ListView {
                    id: notificationList

                    width: scrollView.availableWidth
                    height: contentHeight
                    interactive: false

                    spacing: 8
                    clip: true

                    model: Notifications.appNameList

                    delegate: NotificationGroup {
                        required property int index
                        required property var modelData
                        width: parent ? parent.width : 0
                        notificationGroup: Notifications.groupsByAppName[modelData]
                    }
                }

            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/NotificationGroup.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import qs.settings
import qs.services
import qs.components.animations
import qs.components.notifications

MouseArea {
    id: root
    
    property var notificationGroup
    property var notifications: notificationGroup?.notifications ?? []
    property int notificationCount: notifications.length
    property bool multipleNotifications: notificationCount > 1
    property bool popup: false
    property real padding: 10
    
    implicitHeight: background.implicitHeight
    hoverEnabled: true
    cursorShape: {
        if (root.multipleNotifications) {
            return Qt.ArrowCursor
        }
        // Single notification - show pointer if default action exists
        const actions = root.notifications[0]?.actions || []
        const hasDefaultAction = actions.some(action => action.identifier === "default")
        return hasDefaultAction ? Qt.PointingHandCursor : Qt.ArrowCursor
    }
    
    onContainsMouseChanged: {
        if (!root.popup) return;
        if (root.containsMouse) {
            root.notifications.forEach(notif => {
                Notifications.cancelTimeout(notif.notificationId);
            });
        } else {
            root.notifications.forEach(notif => {
                Notifications.timeoutNotification(notif.notificationId);
            });
        }
    }
    
    onClicked: (mouse) => {
        if (mouse.button === Qt.LeftButton && !root.multipleNotifications) {
            // Single notification - execute default action
            const actions = root.notifications[0]?.actions || []
            const defaultAction = actions.find(action => action.identifier === "default")
            if (defaultAction) {
                Notifications.attemptInvokeAction(
                    root.notifications[0].notificationId,
                    "default"
                )
            }
        } else if (mouse.button === Qt.RightButton) {
            // Right click dismisses all notifications in group
            root.notifications.forEach((notif) => {
                Notifications.discardNotification(notif.notificationId);
            });
        } else if (mouse.button === Qt.MiddleButton) {
            root.notifications.forEach((notif) => {
                Notifications.discardNotification(notif.notificationId);
            });
        }
    }
    
    Rectangle {
        id: background
        anchors.fill: parent
        color: root.containsMouse ? Colors.brighten_10 : Colors.brighten_5
        radius: 12
        clip: true
        
        AnimatedColor on color {}
        
        implicitHeight: row.implicitHeight + root.padding * 2
        
        Behavior on implicitHeight {
            NumberAnimation {
                duration: 200
                easing.type: Easing.OutCubic
            }
        }
        
        RowLayout {
            id: row
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: root.padding
            spacing: 12
            
            // App icon (for grouped) or notification image (for single)
            NotificationIcon {
                Layout.alignment: Qt.AlignTop
                Layout.preferredWidth: 48
                Layout.preferredHeight: 48
                // Show full image only for single notifications, otherwise just app icon
                image: root.notifications[0]?.image || ""
                appIcon: root.notifications[0]?.appIcon || ""
                showImage: !root.multipleNotifications  // Only show image for single notifications
            }
            
            // Unified notification content (handles both single and group scenarios)
            NotificationContent {
                Layout.fillWidth: true
                
                // Single notification mode
                notificationObject: !root.multipleNotifications ? root.notifications[0] : null
                
                // Group mode
                notificationGroup: root.multipleNotifications ? root.notificationGroup : null
                isGroup: root.multipleNotifications
                
                // Display options
                showTimestamp: true
                showDismissButton: true
                titleFontSize: root.multipleNotifications ? Fonts.h6 : Fonts.p
                bodyFontSize: Fonts.h6
                titleFontWeight: root.multipleNotifications ? Font.Medium : Font.DemiBold
                titleColor: root.multipleNotifications ? Colors.textSubdued : Colors.text
                bodyColor: Colors.textSubdued
                maxBodyLines: 4
                
                onDismissRequested: {
                    if (root.multipleNotifications) {
                        // Dismiss all notifications in group
                        root.notifications.forEach((notif) => {
                            Notifications.discardNotification(notif.notificationId);
                        });
                    } else if (root.notifications[0]) {
                        // Single notification dismiss
                        Notifications.discardNotification(root.notifications[0].notificationId);
                    }
                }
                
                // Sub-notifications component for groups
                subNotificationsComponent: root.multipleNotifications ? subNotificationsList : null
            }
        }
    }
    
    // Sub-notifications list component
    Component {
        id: subNotificationsList
        
        ListView {
            implicitHeight: contentHeight
            width: parent ? parent.width : 0
            spacing: 5
            interactive: false
            
            model: root.notifications.slice().reverse()
            
            delegate: NotificationItem {
                required property int index
                required property var modelData
                notificationObject: modelData
                width: parent ? parent.width : 0
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/NotificationItem.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import qs.settings
import qs.services
import qs.components
import qs.components.animations
import qs.components.notifications
import "../../../components/notifications/notification_utils.js" as NotificationUtils

/**
 * Sub-notification item component for grouped notifications
 * Displays as a single line when collapsed, full content when expanded
 */
Rectangle {
    id: root
    
    property var notificationObject
    property bool expanded: false
    property real padding: 8
    
    implicitHeight: (root.expanded ? expandedContent.implicitHeight : collapsedLayout.implicitHeight) + padding * 2
    width: parent.width
    radius: 8
    color: root.expanded ? Colors.brighten_10 : Colors.brighten_5
    
    AnimatedColor on color {}
    
    Behavior on implicitHeight {
        NumberAnimation { duration: 200; easing.type: Easing.OutCubic }
    }
    
    // Collapsed state: Single line with "summary • body" and dismiss button
    RowLayout {
        id: collapsedLayout
        anchors.fill: parent
        anchors.margins: root.padding
        spacing: 8
        visible: !root.expanded
        
        Text {
            Layout.fillWidth: true
            text: {
                const summary = root.notificationObject?.summary || ""
                const body = root.notificationObject?.body || ""
                const appName = root.notificationObject?.appName || root.notificationObject?.summary || ""
                const processedBody = NotificationUtils.processNotificationBody(body, appName)
                
                // Combine summary and body with bullet separator
                if (processedBody) {
                    return summary + " • " + processedBody
                }
                return summary
            }
            font.pixelSize: Fonts.h6
            color: Colors.text
            elide: Text.ElideRight
            maximumLineCount: 1
            textFormat: Text.StyledText
        }
        
        // Dismiss button for collapsed state
        ActionButton {
            id: collapsedDismissButton
            Layout.alignment: Qt.AlignTop
            Layout.preferredWidth: 20
            Layout.preferredHeight: 20
            backgroundColor: Colors.red
            borderColor: Colors.red
            textColor: collapsedDismissButton.containsMouse ? Colors.text : Colors.red
            icon: Fonts.iconFalse
            iconSize: 0.5
            
            onClicked: {
                Notifications.discardNotification(root.notificationObject?.notificationId ?? 0)
            }
        }
    }
    
    // Expanded state: Full notification content with integrated dismiss button
    NotificationContent {
        id: expandedContent
        anchors.fill: parent
        anchors.margins: root.padding
        visible: root.expanded
        
        notificationObject: root.notificationObject
        isGroup: false
        showTimestamp: false
        showDismissButton: true
        titleFontSize: Fonts.p
        bodyFontSize: Fonts.h6
        titleFontWeight: Font.DemiBold
        titleColor: Colors.text
        bodyColor: Colors.textSubdued
        maxBodyLines: -1  // Show full content when expanded
        
        onDismissRequested: {
            Notifications.discardNotification(root.notificationObject?.notificationId ?? 0)
        }
    }
    
    // Click to expand/collapse or execute default action
    MouseArea {
        anchors.fill: parent
        z: -1
        cursorShape: {
            // Check if default action exists
            const actions = root.notificationObject?.actions || []
            const hasDefaultAction = actions.some(action => action.identifier === "default")
            
            if (!root.expanded) {
                // Collapsed: always show pointer to expand
                return Qt.PointingHandCursor
            } else if (hasDefaultAction) {
                // Expanded with default action: show pointer
                return Qt.PointingHandCursor
            }
            // No default action available
            return Qt.ArrowCursor
        }
        
        onClicked: (mouse) => {
            if (!root.expanded) {
                // Collapsed: expand it
                root.expanded = true
            } else if (root.notificationObject) {
                // Expanded: execute default action if available
                const actions = root.notificationObject?.actions || []
                const defaultAction = actions.find(action => action.identifier === "default")
                if (defaultAction) {
                    Notifications.attemptInvokeAction(
                        root.notificationObject.notificationId,
                        "default"
                    )
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/PowerButtonGroup.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.settings
import qs.components

Item {
    id: root
    implicitWidth: showingDialog ? confirmDialog.implicitWidth : actionButtonsWrapper.implicitWidth
    implicitHeight: showingDialog ? confirmDialog.implicitHeight : actionButtonsWrapper.implicitHeight

    property bool showingDialog: false
    property string pendingAction: ""
    property string actionLabel: ""

    function showConfirmDialog(action: string, label: string) {
        pendingAction = action;
        actionLabel = label;
        showingDialog = true;
    }

    function executeAction() {
        if (pendingAction === "suspend") {
            Quickshell.execDetached({
                command: ["qs", "ipc", "call", "state", "lockScreen"]
            });
            Quickshell.execDetached({
                command: ["sh", "-c", "sleep 2 && systemctl suspend"]
            });
        } else if (pendingAction === "reboot") {
            Quickshell.execDetached({
                command: ["systemctl", "reboot"]
            });
        } else if (pendingAction === "poweroff") {
            Quickshell.execDetached({
                command: ["systemctl", "poweroff"]
            });
        }
        showingDialog = false;
    }

    function cancelAction() {
        showingDialog = false;
        pendingAction = "";
        actionLabel = "";
    }

    // Power buttons - shown when no dialog is active
    Row {
        id: actionButtonsWrapper
        spacing: 8
        height: root.height
        visible: !root.showingDialog

        ActionButton {
            icon: Fonts.iconSleep
            backgroundColor: "transparent"
            onClicked: function () {
                root.showConfirmDialog("suspend", "Suspend");
            }
        }

        // Reboot button
        ActionButton {
            icon: Fonts.iconReboot
            backgroundColor: "transparent"
            onClicked: function () {
                root.showConfirmDialog("reboot", "Reboot");
            }
        }

        // Power off button
        ActionButton {
            icon: Fonts.iconPowerOff
            backgroundColor: Config.controlCenterAccent
            borderColor: Config.controlCenterAccent
            textColor: Colors.textSecondary
            onClicked: function () {
                root.showConfirmDialog("poweroff", "Power Off");
            }
        }
    }

    // Confirmation dialog - shown when an action is pending
    Row {
        id: confirmDialog
        spacing: 8
        height: root.height
        visible: root.showingDialog

        // "Confirm?" text
        Text {
            text: "Confirm? "
            color: Colors.text
            font.pixelSize: Fonts.h4
            anchors.verticalCenter: parent.verticalCenter
        }

        // Cancel button
        ActionButton {
            icon: Fonts.iconFalse
            backgroundColor: "transparent"
            borderColor: Colors.red
            textColor: Colors.red
            onClicked: function () {
                root.cancelAction();
            }
        }

        // Confirm button
        ActionButton {
            icon: Fonts.iconTrue
            backgroundColor: Config.controlCenterAccent
            borderColor: Config.controlCenterAccent
            textColor: Colors.textSecondary
            onClicked: function () {
                root.executeAction();
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/PowerModeExpanded.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell.Services.UPower
import qs.settings
import qs.services
import qs.components.animations

/**
 * PowerModeExpanded.qml
 * 
 * Displays system power management interface with battery status, performance profiles, and warnings.
 * Integrates with UPower service to provide power profile switching (Performance, Balanced, Power Saver).
 * Shows battery percentage, charging state, performance degradation warnings, and active profile holds.
 */
ExpandedBubble {
    id: root

    title: "Power Mode"
    showHeader: true

    ColumnLayout {
        anchors.fill: parent
        spacing: 12

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 64
            visible: Power.hasBattery
            color: Colors.brighten_3
            radius: 12

            RowLayout {
                anchors.fill: parent
                anchors.margins: 16
                spacing: 12

                Text {
                    text: Fonts.iconBattery
                    color: Colors.text
                    font.pixelSize: 24
                    font.family: Fonts.iconFont
                }

                ColumnLayout {
                    Layout.fillWidth: true
                    spacing: 4

                    Text {
                        text: "Battery"
                        color: Colors.text
                        font.pixelSize: Fonts.h5
                        font.weight: Font.Medium
                    }

                    Text {
                        text: {
                            const percentage = Power.batteryPercentage + "%"
                            if (Power.isCharging) return percentage + " (Charging)"
                            if (Power.isDischarging) return percentage + " (Discharging)"
                            if (Power.isFull) return percentage + " (Full)"
                            return percentage
                        }
                        color: Colors.textSubdued
                        font.pixelSize: Fonts.p
                    }
                }

                Text {
                    visible: Power.onBattery
                    text: Fonts.iconTrue
                    color: Colors.green
                    font.pixelSize: 20
                    font.family: Fonts.iconFont
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: contentHeight
            visible: Power.degradationReason !== PerformanceDegradationReason.None
            color: Colors.yellow
            radius: 8
            
            property int contentHeight: degradationLayout.implicitHeight + 24

            RowLayout {
                id: degradationLayout
                anchors.fill: parent
                anchors.margins: 12
                spacing: 12

                Text {
                    text: Fonts.iconInfo
                    color: Colors.bg
                    font.pixelSize: 20
                    font.family: Fonts.iconFont
                }

                Text {
                    Layout.fillWidth: true
                    text: "Performance limited: " + Power.getDegradationReasonString()
                    color: Colors.bg
                    font.pixelSize: Fonts.p
                    wrapMode: Text.WordWrap
                }
            }
        }

        // Power Saver Profile
        PowerProfileItem {
            Layout.fillWidth: true
            Layout.fillHeight: true
            profileType: PowerProfile.PowerSaver
            isActive: Power.isProfileActive(PowerProfile.PowerSaver)
            isAvailable: true

            onClicked: Power.setPowerSaver()
        }

        // Balanced Profile
        PowerProfileItem {
            Layout.fillWidth: true
            Layout.fillHeight: true
            profileType: PowerProfile.Balanced
            isActive: Power.isProfileActive(PowerProfile.Balanced)
            isAvailable: true

            onClicked: Power.setBalanced()
        }

        // Performance Profile
        PowerProfileItem {
            Layout.fillWidth: true
            Layout.fillHeight: true
            profileType: PowerProfile.Performance
            isActive: Power.isProfileActive(PowerProfile.Performance)
            isAvailable: Power.hasPerformanceProfile

            onClicked: Power.setPerformance()
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: holdsColumn.implicitHeight + 24
            visible: Power.holds && Power.holds.length > 0
            color: Colors.brighten_3
            radius: 8

            ColumnLayout {
                id: holdsColumn
                anchors.fill: parent
                anchors.margins: 12
                spacing: 8

                Text {
                    text: "Active Profile Holds"
                    color: Colors.text
                    font.pixelSize: Fonts.h5
                    font.weight: Font.Medium
                }

                Repeater {
                    model: Power.holds

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 8

                        Text {
                            text: Fonts.iconInfo
                            color: Colors.textSubdued
                            font.pixelSize: 14
                            font.family: Fonts.iconFont
                        }

                        Text {
                            Layout.fillWidth: true
                            text: modelData.applicationId + ": " + modelData.reason
                            color: Colors.textSubdued
                            font.pixelSize: Fonts.p
                            wrapMode: Text.WordWrap
                        }
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/PowerProfileItem.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell.Services.UPower
import qs.settings
import qs.services
import qs.components.animations

Rectangle {
    id: root
    
    required property int profileType  // PowerProfile enum value
    required property bool isActive
    required property bool isAvailable
    
    signal clicked()
    
    // No fixed height - will be set by Layout.fillHeight in parent
    color: isActive ? Config.controlCenterAccent : (mouseArea.containsMouse && isAvailable ? Colors.brighten_10 : Colors.brighten_3)
    radius: 12
    opacity: isAvailable ? 1.0 : 0.5
    
    AnimatedColor on color {}
    
    // Profile information
    readonly property string profileName: {
        switch (profileType) {
            case PowerProfile.Performance: return "Performance";
            case PowerProfile.Balanced: return "Balanced";
            case PowerProfile.PowerSaver: return "Power Saver";
            default: return "Unknown";
        }
    }
    
    readonly property string profileIcon: {
        switch (profileType) {
            case PowerProfile.Performance: return Fonts.iconPowerFast;
            case PowerProfile.Balanced: return Fonts.iconPowerMedium;
            case PowerProfile.PowerSaver: return Fonts.iconPowerEco;
            default: return Fonts.iconPowerMedium;
        }
    }
    
    readonly property string profileDescription: {
        switch (profileType) {
            case PowerProfile.Performance: return "Maximum performance";
            case PowerProfile.Balanced: return "Balance performance and power";
            case PowerProfile.PowerSaver: return "Maximize battery life";
            default: return "";
        }
    }
    
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        enabled: root.isAvailable && !root.isActive
        hoverEnabled: true
        cursorShape: enabled ? Qt.PointingHandCursor : Qt.ArrowCursor
        
        onClicked: {
            if (root.isAvailable && !root.isActive) {
                root.clicked();
            }
        }
    }
    
    RowLayout {
        anchors.fill: parent
        anchors.margins: 16
        spacing: 12
        
        // Profile icon
        Text {
            text: root.profileIcon
            color: root.isActive ? Colors.bg : Colors.text
            font.pixelSize: 28
            font.family: Fonts.iconFont
            
            AnimatedColor on color {}
        }
        
        // Profile name
        Text {
            Layout.fillWidth: true
            text: root.profileName
            color: root.isActive ? Colors.bg : Colors.text
            font.pixelSize: Fonts.h4
            font.weight: Font.Medium
            
            AnimatedColor on color {}
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/QuickSettings.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import qs.settings
import qs.services
import qs.components
import qs.components.animations
import qs.modules.controlCenter.components

/**
 * QuickSettings.qml
 * 
 * Provides a grid of interactive quick-action bubbles for system controls including WiFi,
 * Bluetooth, volume, power modes, night light, and wallpaper switching. Supports two states:
 * overview (grid of all bubbles) and expanded (single bubble with detailed controls).
 * 
 * Grid automatically calculates square cells based on available width. When a bubble expands,
 * all other bubbles fade out and the expanded content takes over the space.
 */
Item {
    id: root
    
    property int spacing: 8
    readonly property int columns: 5
    readonly property int rows: 2
    readonly property real cellSize: (width - (columns - 1) * spacing) / columns
    
    property string expandedBubbleId: ""
    readonly property bool isExpanded: expandedBubbleId !== ""
    property Component expandedContentComponent: null
    property real expandedHeight: 600
    
    signal expandedStateChanged(bool expanded)
    
    implicitWidth: gridContainer.implicitWidth
    implicitHeight: gridContainer.implicitHeight
    
    function expandBubble(bubbleId: string, bubble: var): void {
        // Trigger parent animation readiness before state transition
        if (parent && parent.animationsReady !== undefined) {
            parent.animationsReady = true;
        }
        
        root.expandedBubbleId = bubbleId;
        root.expandedContentComponent = bubble.expandedContent;
        root.expandedHeight = bubble.expandedHeight;
        root.expandedStateChanged(true);
    }
    
    function collapseAll(): void {
        root.expandedBubbleId = "";
        root.expandedContentComponent = null;
        root.expandedHeight = 600;
        root.expandedStateChanged(false);
        Bluetooth.stopDiscovery();
    }
    
    GridLayout {
        id: gridContainer
        anchors.fill: parent
        
        columns: root.columns
        rows: root.rows
        columnSpacing: root.spacing
        rowSpacing: root.spacing
        
        Bubble {
            id: wifiBubble
            Layout.column: 0
            Layout.row: 0
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.preferredWidth: root.cellSize * 2 + root.spacing
            Layout.preferredHeight: root.cellSize
            
            orientation: "horizontal"
            icon: Network.wifiIcon
            isActive: Network.wifiEnabled && Network.wifi
            label: "WiFi"
            sublabel: Network.wifiEnabled ? (Network.activeNetwork?.ssid ?? "No Connection") : "Off"
            
            expanded: root.expandedBubbleId === "wifi"
            visible: !root.isExpanded || expanded
            opacity: !root.isExpanded ? 1.0 : (expanded ? 1.0 : 0.0)
            
            AnimatedOpacity on opacity {}
            
            onQuickActionClicked: {
                Network.toggleWifi();
            }
            
            onExpandClicked: {
                root.expandBubble("wifi", wifiBubble);
                if (Network.wifiEnabled) {
                    Network.rescanWifi();
                }
            }
            
            expandedContent: Component {
                WifiExpanded {
                }
            }
        }
        
        Bubble {
            id: bluetoothBubble
            Layout.column: 2
            Layout.row: 0
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.preferredWidth: root.cellSize * 2 + root.spacing
            Layout.preferredHeight: root.cellSize
            
            orientation: "horizontal"
            icon: Bluetooth.bluetoothIcon
            isActive: Bluetooth.enabled
            label: "BT"
            sublabel: Bluetooth.enabled ? (Bluetooth.hasConnectedDevices ? (Bluetooth.firstConnectedDeviceName + (Bluetooth.connectedDeviceCount > 1 ? " +" + (Bluetooth.connectedDeviceCount - 1) : "")) : "On") : "Off"
            
            expanded: root.expandedBubbleId === "bluetooth"
            visible: !root.isExpanded || expanded
            opacity: !root.isExpanded ? 1.0 : (expanded ? 1.0 : 0.0)
            

            AnimatedOpacity on opacity {}
            
            onQuickActionClicked: {
                Bluetooth.toggleBluetooth();
            }
            
            onExpandClicked: {
                root.expandBubble("bluetooth", bluetoothBubble);
                if (Bluetooth.enabled) {
                    Bluetooth.startDiscovery();
                    Bluetooth.setDiscoverable(true);
                    Bluetooth.setPairable(true);
                }
            }
            
            expandedContent: Component {
                BluetoothExpanded {
                }
            }
        }
        
        Bubble {
            id: volumeBubble
            Layout.column: 4
            Layout.row: 0
            Layout.rowSpan: 2
            Layout.fillHeight: true
            Layout.preferredWidth: root.cellSize
            Layout.preferredHeight: root.cellSize * 2 + root.spacing
            
            orientation: "vertical"
            icon: Audio.volumeIcon
            isActive: !Audio.muted
            disabledBackground: Colors.red
            disabledBorder: Colors.red
            disabledText: Colors.textSecondary
            label: ""
            sublabel: ""
            
            showMeter: true
            meterLevel: Audio.volume
            meterColor: Config.controlCenterAccent
            
            expanded: root.expandedBubbleId === "volume"
            visible: !root.isExpanded || expanded
            opacity: !root.isExpanded ? 1.0 : (expanded ? 1.0 : 0.0)
            

            AnimatedOpacity on opacity {}
            
            onQuickActionClicked: {
                Audio.toggleMute();
            }
            
            onExpandClicked: {
                root.expandBubble("volume", volumeBubble);
            }
            
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.NoButton
                propagateComposedEvents: true
                z: 100
                
                onWheel: (wheel) => {
                    if (Audio.muted) {
                        wheel.accepted = true;
                        return;
                    }
                    const delta = (wheel.angleDelta.y / 120) * 0.025;
                    Audio.adjustVolume(delta);
                    wheel.accepted = true;
                }
            }
            
            expandedContent: Component {
                VolumeExpanded {
                }
            }
        }
        
        Bubble {
            id: powerModeBubble
            Layout.column: 0
            Layout.row: 1
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.preferredWidth: root.cellSize * 2 + root.spacing
            Layout.preferredHeight: root.cellSize
            
            orientation: "horizontal"
            icon: Power.currentProfileIcon
            isActive: true
            label: "Power"
            sublabel: Power.currentProfileName
            expandedHeight: 300
            
            expanded: root.expandedBubbleId === "powermode"
            visible: !root.isExpanded || expanded
            opacity: !root.isExpanded ? 1.0 : (expanded ? 1.0 : 0.0)
            

            AnimatedOpacity on opacity {}
            
            onQuickActionClicked: {
                Power.cycleProfile();
            }
            
            onExpandClicked: {
                root.expandBubble("powermode", powerModeBubble);
            }
            
            expandedContent: Component {
                PowerModeExpanded {
                }
            }
        }
        
        Item {
            Layout.column: 2
            Layout.row: 1
            Layout.fillHeight: true
            Layout.preferredWidth: root.cellSize
            Layout.preferredHeight: root.cellSize
            
            visible: !root.isExpanded
            opacity: !root.isExpanded ? 1.0 : 0.0
            
            AnimatedOpacity on opacity {}
            
            ActionButton {
                id: nightLightButton
                anchors.centerIn: parent
                width: Math.min(parent.width, parent.height)
                height: width
                
                icon: Hyprsunset.nightLightEnabled ? Fonts.iconLightNight : Fonts.iconLightOff
                backgroundColor: Hyprsunset.nightLightEnabled ? Config.controlCenterAccent : Colors.darken_20
                borderColor: Hyprsunset.nightLightEnabled ? Config.controlCenterAccent : Colors.darken_20
                textColor: Hyprsunset.nightLightEnabled ? Colors.textSecondary : Colors.text

                AnimatedColor on backgroundColor {}
                AnimatedColor on borderColor {}
                
                onClicked: {
                    Hyprsunset.toggleNightLight();
                }
            }
        }
        
        Item {
            Layout.column: 3
            Layout.row: 1
            Layout.fillHeight: true
            Layout.preferredWidth: root.cellSize
            Layout.preferredHeight: root.cellSize
            
            visible: !root.isExpanded
            opacity: !root.isExpanded ? 1.0 : 0.0
            
            AnimatedOpacity on opacity {}
            
            ActionButton {
                id: nextWallpaperButton
                anchors.centerIn: parent
                width: Math.min(parent.width, parent.height)
                height: width
                
                icon: Fonts.iconWallpaperNext
                backgroundColor: Config.controlCenterAccent
                borderColor: Config.controlCenterAccent
                textColor: Colors.textSecondary
                loading: WallpaperService.isTransitioning
                enabled: WallpaperService.useWallpaperDirectory && !WallpaperService.isTransitioning && WallpaperService.queueLength > 1
                
                onClicked: {
                    WallpaperService.nextWallpaper();
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/ReloadButton.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import qs.settings

Rectangle {
    id: root
    
    // Public properties
    property bool isLoading: false
    property alias icon: iconText.text
    
    // Signal
    signal clicked()
    
    width: 40
    height: 40
    radius: 20
    color: mouseArea.containsMouse ? Colors.brighten_20 : "transparent"
    
    Text {
        id: iconText
        anchors.centerIn: parent
        text: Fonts.iconRepeat
        color: Colors.text
        font.pixelSize: 20
        font.family: Fonts.iconFont
        
        RotationAnimator on rotation {
            from: 0
            to: 360
            duration: 1000
            loops: Animation.Infinite
            running: root.isLoading
        }
    }
    
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: root.clicked()
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/VolumeExpanded.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell.Services.Pipewire
import Quickshell.Widgets
import qs.settings
import qs.services
import qs.components
import qs.components.animations
import qs.modules.controlCenter.components

/**
 * VolumeExpanded: Comprehensive audio control panel for the control center
 * 
 * Provides:
 * - Master volume control with mute toggle and visual feedback
 * - Application volume mixer (Pipewire audio source control)
 * - Output device selection and management
 * - Input device selection and management
 * 
 * Tab-based navigation with smooth animations and real-time audio sync.
 */
ExpandedBubble {
    id: root
    
    title: "Volume"
    showHeader: true
    
    /// Active tab index: 0=Mixer, 1=Output, 2=Input
    property int currentTab: 0
    
    /// Tracks Pipewire sink/source changes for real-time device updates
    PwObjectTracker {
        objects: [Audio.sink, Audio.source]
    }
    
    ColumnLayout {
        anchors.fill: parent
        spacing: 16
        
        // Master Volume Control
        ColumnLayout {
            Layout.fillWidth: true
            spacing: 8
            
            RowLayout {
                Layout.fillWidth: true
                spacing: 12
                
                /// Mute/unmute toggle with dynamic icon and color feedback
                ActionButton {
                    Layout.preferredWidth: 40
                    Layout.preferredHeight: 40
                    
                    icon: Audio.volumeIcon
                    iconSize: 0.5
                    backgroundColor: Audio.muted ? Colors.red : Config.controlCenterAccent
                    borderColor: Audio.muted ? Colors.red : Config.controlCenterAccent
                    textColor: Colors.textSecondary
                    
                    onClicked: Audio.toggleMute()
                }
                
                // Master volume label
                Text {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignVCenter
                    text: "Master Volume"
                    color: Colors.text
                    font.pixelSize: Fonts.h5
                    font.bold: true
                }
                
                // Current volume percentage display
                Text {
                    Layout.alignment: Qt.AlignVCenter
                    text: Audio.volumePercent + "%"
                    color: Colors.textSubdued
                    font.pixelSize: Fonts.h6
                }
            }
            
            /// Interactive volume slider with meter fill and smooth animations
            ClippingRectangle {
                id: masterVolumeBar
                Layout.fillWidth: true
                Layout.preferredHeight: 48
                
                radius: 12
                color: Colors.brighten_5
                
                property bool userInteracting: false
                
                // Meter fill
                Rectangle {
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    width: parent.width * Math.max(0, Math.min(1, Audio.volume))
                    color: Audio.muted ? Qt.alpha(Config.controlCenterAccent, 0.3) : Config.controlCenterAccent
                    
                    AnimatedWidth on width {
                        enabled: !masterVolumeBar.userInteracting
                    }
                    
                    AnimatedColor on color {}
                }
                
                MouseArea {
                    anchors.fill: parent
                    enabled: !Audio.muted
                    hoverEnabled: !Audio.muted
                    cursorShape: Audio.muted ? Qt.ArrowCursor : Qt.PointingHandCursor
                    
                    property real lastSetVolume: -1
                    
                    onPressed: (mouse) => {
                        masterVolumeBar.userInteracting = true;
                        lastSetVolume = -1;
                        updateVolume(mouse.x);
                    }
                    
                    onPositionChanged: (mouse) => {
                        if (pressed) {
                            updateVolume(mouse.x);
                        }
                    }
                    
                    onReleased: {
                        masterVolumeBar.userInteracting = false;
                        lastSetVolume = -1;
                    }
                    
                    /// Convert mouse position to volume (0-1), rounded to 1% increments to reduce rapid updates
                    function updateVolume(x: real): void {
                        const rawVolume = Math.max(0, Math.min(1, x / width));
                        const roundedVolume = Math.round(rawVolume * 100) / 100;
                        
                        if (roundedVolume !== lastSetVolume) {
                            lastSetVolume = roundedVolume;
                            Audio.setVolume(roundedVolume);
                        }
                    }
                }
            }
        }
        
        // Tab Navigation
        Tabs {
            id: tabs
            Layout.fillWidth: true
            Layout.preferredHeight: 40
            currentTab: root.currentTab
            tabModel: ["Mixer", "Output", "Input"]
            activeColor: Config.controlCenterAccent
            
            onTabChanged: (index) => {
                root.currentTab = index;
            }
        }
        
        // Content Loader for different tabs
        Loader {
            id: contentLoader
            Layout.fillWidth: true
            Layout.fillHeight: true
            
            sourceComponent: {
                switch (root.currentTab) {
                    case 0:
                        return volumeMixerComponent;
                    case 1:
                        return outputDevicesComponent;
                    case 2:
                        return inputDevicesComponent;
                    default:
                        return volumeMixerComponent;
                }
            }
        }
    }
    
    // Volume Mixer Component (Apps)
    Component {
        id: volumeMixerComponent
        
        ColumnLayout {
            spacing: 8
            
            // Application Volume Mixer List
            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: Colors.brighten_3
                radius: 8
                
                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 0
                    
                    // Active application audio sources
                    ScrollView {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.minimumHeight: 200
                        visible: Audio.appNodes.length > 0
                        clip: true
                        
                        ListView {
                            id: appList
                            width: parent.width
                            model: Audio.appNodes
                            spacing: 24
                            interactive: true
                            boundsBehavior: Flickable.StopAtBounds
                            
                            delegate: VolumeMixerEntry {
                                required property var modelData
                                required property int index
                                
                                width: appList.width
                                node: modelData
                            }
                        }
                    }
                    
                    // Empty state when no applications are playing audio
                    Item {
                        Layout.fillWidth: true
                        Layout.fillHeight: true 
                        Layout.alignment : Qt.AlignVCenter
                        visible: Audio.appNodes.length === 0
                        
                        ColumnLayout {
                            anchors.centerIn: parent
                            spacing: 12
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: Fonts.iconVolumeMute
                                font.family: Fonts.iconFont
                                font.pixelSize: 48
                                color: Colors.textSubdued
                                opacity: 0.5
                            }
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: "No active audio sources"
                                color: Colors.textSubdued
                                font.pixelSize: Fonts.p
                            }
                        }
                    }
                }
            }
        }
    }
    
    // Output Devices Component
    Component {
        id: outputDevicesComponent
        
        ColumnLayout {
            spacing: 8
            
            // Output Devices List
            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: Colors.brighten_3
                radius: 8
                
                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 0
                    
                    ScrollView {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        clip: true
                        
                        ListView {
                            id: outputDevicesList
                            width: parent.width
                            model: Audio.outputDevices
                            spacing: 8
                            interactive: true
                            boundsBehavior: Flickable.StopAtBounds
                            
                            delegate: Rectangle {
                                required property var modelData
                                required property int index
                                
                                id: outputDeviceItem
                                
                                width: outputDevicesList.width
                                height: 60
                                
                                radius: 8
                                color: deviceMouseArea.containsMouse ? Colors.brighten_10 : "transparent"
                                border.width: outputDeviceItem.isSelected ? 2 : 0
                                border.color: Config.controlCenterAccent
                                
                                /// Determines if this device is currently the active selection
                                property bool isSelected: {
                                    return Audio.sink?.id === outputDeviceItem.modelData.id;
                                }
                                
                                AnimatedColor on color {}
                                AnimatedColor on border.color {}
                                
                                RowLayout {
                                    anchors.fill: parent
                                    anchors.margins: 12
                                    spacing: 12
                                    
                                    /// Device type icon
                                    Text {
                                        Layout.alignment: Qt.AlignVCenter
                                        text: Fonts.iconSpeaker
                                        font.family: Fonts.iconFont
                                        font.pixelSize: 28
                                        color: outputDeviceItem.isSelected ? Config.controlCenterAccent : Colors.text
                                        
                                        AnimatedColor on color {}
                                    }
                                    
                                    /// Device name/description
                                    Text {
                                        Layout.fillWidth: true
                                        text: outputDeviceItem.modelData.description || outputDeviceItem.modelData.name || "Unknown Device"
                                        color: Colors.text
                                        font.pixelSize: Fonts.p
                                        font.bold: outputDeviceItem.isSelected
                                        elide: Text.ElideRight
                                        
                                        AnimatedColor on color {}
                                    }
                                    
                                    /// Selection indicator dot
                                    Rectangle {
                                        Layout.preferredWidth: 20
                                        Layout.preferredHeight: 20
                                        radius: 10
                                        color: "transparent"
                                        border.width: 2
                                        border.color: outputDeviceItem.isSelected ? Config.controlCenterAccent : Colors.textSubdued
                                        
                                        Rectangle {
                                            anchors.centerIn: parent
                                            width: 10
                                            height: 10
                                            radius: 5
                                            color: Config.controlCenterAccent
                                            visible: outputDeviceItem.isSelected
                                        }
                                        
                                        AnimatedColor on border.color {}
                                    }
                                }
                                
                                MouseArea {
                                    id: deviceMouseArea
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    cursorShape: Qt.PointingHandCursor
                                    
                                    onClicked: Audio.setDefaultSink(outputDeviceItem.modelData)
                                }
                            }
                        }
                    }
                    
                    // Empty state when no output devices are available
                    Item {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        visible: Audio.outputDevices.length === 0
                        
                        ColumnLayout {
                            anchors.centerIn: parent
                            spacing: 12
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: Fonts.iconSpeaker
                                font.family: Fonts.iconFont
                                font.pixelSize: 48
                                color: Colors.textSubdued
                                opacity: 0.5
                            }
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: "No output devices available"
                                color: Colors.textSubdued
                                font.pixelSize: Fonts.p
                            }
                        }
                    }
                }
            }
        }
    }
    
    // Input Devices Component
    Component {
        id: inputDevicesComponent
        
        ColumnLayout {
            spacing: 8
            
            // Input Devices List
            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: Colors.brighten_3
                radius: 8
                
                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 0
                    
                    ScrollView {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        clip: true
                        
                        ListView {
                            id: inputDevicesList
                            width: parent.width
                            model: Audio.inputDevices
                            spacing: 8
                            interactive: true
                            boundsBehavior: Flickable.StopAtBounds
                            
                            delegate: Rectangle {
                                required property var modelData
                                required property int index
                                
                                id: inputDeviceItem
                                
                                width: inputDevicesList.width
                                height: 60
                                
                                radius: 8
                                color: deviceMouseArea.containsMouse ? Colors.brighten_10 : "transparent"
                                border.width: inputDeviceItem.isSelected ? 2 : 0
                                border.color: Config.controlCenterAccent
                                
                                /// Determines if this device is currently the active selection
                                property bool isSelected: {
                                    return Audio.source?.id === inputDeviceItem.modelData.id;
                                }
                                
                                AnimatedColor on color {}
                                AnimatedColor on border.color {}
                                
                                RowLayout {
                                    anchors.fill: parent
                                    anchors.margins: 12
                                    spacing: 12
                                    
                                    /// Device type icon
                                    Text {
                                        Layout.alignment: Qt.AlignVCenter
                                        text: Fonts.iconHeadset
                                        font.family: Fonts.iconFont
                                        font.pixelSize: 28
                                        color: inputDeviceItem.isSelected ? Config.controlCenterAccent : Colors.text
                                        
                                        AnimatedColor on color {}
                                    }
                                    
                                    /// Device name/description
                                    Text {
                                        Layout.fillWidth: true
                                        text: inputDeviceItem.modelData.description || inputDeviceItem.modelData.name || "Unknown Device"
                                        color: Colors.text
                                        font.pixelSize: Fonts.p
                                        font.bold: inputDeviceItem.isSelected
                                        elide: Text.ElideRight
                                        
                                        AnimatedColor on color {}
                                    }
                                    
                                    /// Selection indicator dot
                                    Rectangle {
                                        Layout.preferredWidth: 20
                                        Layout.preferredHeight: 20
                                        radius: 10
                                        color: "transparent"
                                        border.width: 2
                                        border.color: inputDeviceItem.isSelected ? Config.controlCenterAccent : Colors.textSubdued
                                        
                                        Rectangle {
                                            anchors.centerIn: parent
                                            width: 10
                                            height: 10
                                            radius: 5
                                            color: Config.controlCenterAccent
                                            visible: inputDeviceItem.isSelected
                                        }
                                        
                                        AnimatedColor on border.color {}
                                    }
                                }
                                
                                MouseArea {
                                    id: deviceMouseArea
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    cursorShape: Qt.PointingHandCursor
                                    
                                    onClicked: Audio.setDefaultSource(inputDeviceItem.modelData)
                                }
                            }
                        }
                    }
                    
                    // Empty state when no input devices are available
                    Item {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        visible: Audio.inputDevices.length === 0
                        
                        ColumnLayout {
                            anchors.centerIn: parent
                            spacing: 12
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: Fonts.iconHeadset
                                font.family: Fonts.iconFont
                                font.pixelSize: 48
                                color: Colors.textSubdued
                                opacity: 0.5
                            }
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: "No input devices available"
                                color: Colors.textSubdued
                                font.pixelSize: Fonts.p
                            }
                        }
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/VolumeMixerEntry.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.Pipewire
import Quickshell.Widgets
import qs.settings
import qs.services
import qs.components.animations

Item {
    id: root

    required property var node

    implicitHeight: 72

    // Track the node
    PwObjectTracker {
        objects: [root.node]
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 8

        // App info row
        RowLayout {
            Layout.fillWidth: true
            spacing: 12

            // Application Symbol
            Rectangle {
                Layout.preferredWidth: 24
                Layout.preferredHeight: 24
                radius: 8
                color: "transparent"

                Text {
                    anchors.centerIn: parent
                    text: {
                        // Get application name/id for symbol lookup
                        const appName = root.node.properties["application.name"] || "";
                        const appId = root.node.properties["application.id"] || "";
                        const iconName = root.node.properties["application.icon-name"] || "";

                        // Try to find symbol in map
                        // Check application.name first (e.g., "zen", "discord")
                        if (appName && Config.appSymbolMap[appName.toLowerCase()]) {
                            return Config.appSymbolMap[appName.toLowerCase()];
                        }

                        // Check application.id (e.g., "dev.zed.Zed")
                        if (appId && Config.appSymbolMap[appId]) {
                            return Config.appSymbolMap[appId];
                        }

                        // Check icon-name (e.g., "org.gnome.Nautilus")
                        if (iconName && Config.appSymbolMap[iconName]) {
                            return Config.appSymbolMap[iconName];
                        }

                        // Default fallback symbol
                        return Fonts.iconVolumeHigh;
                    }
                    font.family: Fonts.iconFont
                    font.pixelSize: 20
                    color: Colors.text
                }
            }

            // Application name and media info
            Text {
                Layout.fillWidth: true
                text: {
                    const app = root.node.properties["application.name"] ??
                    (root.node.description !== "" ? root.node.description : root.node.name);
                    const media = root.node.properties["media.name"];
                    return media !== undefined ? `${app} • ${media}` : app;
                }
                color: Colors.text
                font.pixelSize: Fonts.p
                elide: Text.ElideRight
            }

            // Volume percentage
            Text {
                Layout.alignment: Qt.AlignVCenter
                text: Math.round((root.node.audio?.volume ?? 0) * 100) + "%"
                color: Colors.textSubdued
                font.pixelSize: Fonts.p
            }
        }

        // Volume Slider - Bubble style
        ClippingRectangle {
            id: volumeBar
            Layout.fillWidth: true
            Layout.preferredHeight: 25

            radius: 10
            color: Colors.brighten_3

            property bool userInteracting: false
            property bool animationsReady: false
            property real lastVolume: root.node.audio?.volume ?? 0

            // Only enable animations after volume actually changes
            Connections {
                target: root.node.audio
                function onVolumeChanged() {
                    if (volumeBar.lastVolume !== (root.node.audio?.volume ?? 0)) {
                        volumeBar.animationsReady = true;
                        volumeBar.lastVolume = root.node.audio?.volume ?? 0;
                    }
                }
            }

            // Meter fill
            Rectangle {
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: parent.width * (root.node.audio?.volume ?? 0)
                color: Audio.muted ? Qt.alpha(Config.controlCenterAccent, 0.3) : Config.controlCenterAccent

                AnimatedWidth on width {
                    enabled: !volumeBar.userInteracting && volumeBar.animationsReady
                }

                AnimatedColor on color {}
            }

            MouseArea {
                anchors.fill: parent
                enabled: !(root.node.audio?.muted ?? false)
                hoverEnabled: !(root.node.audio?.muted ?? false)
                cursorShape: (root.node.audio?.muted ?? false) ? Qt.ArrowCursor : Qt.PointingHandCursor

                onPressed: (mouse) => {
                    volumeBar.userInteracting = true;
                    updateVolume(mouse.x);
                }

                onPositionChanged: (mouse) => {
                    if (pressed) {
                        updateVolume(mouse.x);
                    }
                }

                onReleased: {
                    volumeBar.userInteracting = false;
                }

                function updateVolume(x: real): void {
                    if (!root.node.audio) return;
                    const newVolume = Math.max(0, Math.min(1, x / width));
                    root.node.audio.volume = newVolume;
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/WifiExpanded.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import qs.settings
import qs.services
import qs.components

/**
 * WifiExpanded: Network connectivity control panel for the control center
 *
 * Provides:
 * - Ethernet connection status display
 * - WiFi toggle with on/off state
 * - Available WiFi networks discovery and connection
 * - Network scanning with visual feedback
 * - Password-protected network authentication flow
 *
 * Real-time synchronization with Network service for live connectivity updates.
 */
ExpandedBubble {
    id: root

    title: "Network"
    showHeader: true
    
    ColumnLayout {
        anchors.fill: parent
        spacing: 8

        // Ethernet connection status (only visible when connected)
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 48
            visible: Network.ethernet
            color: "transparent"
            radius: 8

            RowLayout {
                anchors.fill: parent
                anchors.margins: 0
                spacing: 12

                Text {
                    text: Fonts.iconLanOn
                    color: Colors.text
                    Layout.preferredWidth: 16
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: Fonts.h5
                    font.family: Fonts.iconFont
                }

                Text {
                    text: "Ethernet"
                    color: Colors.text
                    font.pixelSize: Fonts.h5
                }

                Item {
                    Layout.fillWidth: true
                }

                Text {
                    text: "Connected " + Fonts.iconTrue
                    color: Colors.green
                    font.pixelSize: Fonts.h5
                }
            }
        }

        // WiFi toggle and status indicator
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 48
            color: "transparent"
            radius: 8

            RowLayout {
                anchors.fill: parent
                anchors.margins: 0
                spacing: 12

                Text {
                    text: Network.wifiIcon
                    color: Colors.text
                    Layout.preferredWidth: 16
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: Fonts.h5
                    font.family: Fonts.iconFont
                }

                Text {
                    Layout.fillWidth: true
                    text: "WiFi"
                    color: Colors.text
                    font.pixelSize: Fonts.h5
                }

                Toggle {
                    checkedColor: Config.controlCenterAccent
                    checked: Network.wifiEnabled

                    onToggled: (checked) => {
                        Network.enableWifi(checked);
                    }
                }
            }
        }

        // WiFi network discovery and connection panel
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: Colors.brighten_3
            radius: 8
            visible: Network.wifiEnabled

            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 0

                ScrollView {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.minimumHeight: 200
                    clip: true

                    ListView {
                        id: networksList
                        width: parent.width
                        model: Network.wifiNetworks
                        spacing: 4
                        interactive: true
                        boundsBehavior: Flickable.StopAtBounds

                        delegate: WifiNetworkItem {
                            required property var modelData
                            required property int index

                            width: networksList.width
                            network: modelData

                            onClicked: {
                                if (!network.active) {
                                    if (network.isSecure && !network.askingPassword) {
                                        // Trigger password input for secured networks
                                        network.askingPassword = true;
                                    } else {
                                        Network.connectToWifiNetwork(network);
                                    }
                                }
                            }
                        }

                        // Rescan control in list footer
                        footer: Item {
                            width: networksList.width
                            height: 48

                            ReloadButton {
                                anchors.centerIn: parent
                                isLoading: Network.wifiScanning
                                onClicked: Network.rescanWifi()
                            }
                        }

                        // Empty state and rescan fallback when no networks detected
                        ColumnLayout {
                            anchors.centerIn: parent
                            visible: networksList.count === 0
                            spacing: 12

                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: Network.wifiScanning ? "Scanning for networks...\nPlease wait..." : "No networks found"
                                color: Colors.textSubdued
                                font.pixelSize: Fonts.p
                                horizontalAlignment: Text.AlignHCenter
                            }

                            ReloadButton {
                                Layout.alignment: Qt.AlignHCenter
                                visible: networksList.count === 0 && !Network.wifiScanning
                                isLoading: Network.wifiScanning
                                onClicked: Network.rescanWifi()
                            }
                        }
                    }
                }
            }
        }

        // WiFi unavailable fallback state
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: Colors.brighten_3
            radius: 8
            visible: !Network.wifiEnabled

            Text {
                anchors.centerIn: parent
                text: "WiFi is disabled"
                color: Colors.textSubdued
                font.pixelSize: Fonts.h5
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/components/WifiNetworkItem.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import qs.settings
import qs.services
import qs.components
import qs.components.animations

/**
 * WifiNetworkItem: Individual WiFi network list item for network selection
 *
 * Displays network information with connection status, signal strength, and security indicators.
 * Supports secure network authentication via inline password input with visual feedback during connection.
 * Provides disconnect functionality for active connections and hover state visual feedback.
 */
Rectangle {
    id: root
    
    required property var network
    
    signal clicked()
    
    // Component height: content + top/bottom margins (12px each)
    height: mainContent.implicitHeight + 24
    color: (mouseArea.containsMouse && !root.network.active) ? Colors.brighten_10 : "transparent"
    radius: 8
    
    AnimatedColor on color {}
    
    // Visual separator between network items
    Rectangle {
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 12
        anchors.rightMargin: 12
        height: 1
        color: Colors.brighten_3
    }
    
    ColumnLayout {
        id: mainContent
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 12
        spacing: 8
        
        // Main network information row displaying status and details
        RowLayout {
            Layout.fillWidth: true
            spacing: 12

            // Connected status indicator
            Text {
                visible: root.network.active
                text: Fonts.iconTrue
                color: Colors.green
                font.pixelSize: 18
                font.family: Fonts.iconFont
            }

            // Signal strength icon based on network quality
            Text {
                text: root.network.strengthIcon
                color: Colors.text
                Layout.preferredWidth: 16
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
                font.family: Fonts.iconFont
            }

            // Signal strength percentage display
            Text {
                text: root.network.strength + "%"
                Layout.preferredWidth: 30
                horizontalAlignment: Text.AlignLeft
                color: Colors.textSubdued
                font.pixelSize: Fonts.p
                visible: !root.network.askingPassword
            }
            
            // Network SSID (name) with text truncation for long names
            Text {
                Layout.fillWidth: true
                text: root.network.ssid
                horizontalAlignment: Text.AlignLeft
                color: Colors.text
                font.pixelSize: Fonts.h5
                elide: Text.ElideRight
            }
            
            // Security badge indicator for password-protected networks
            Text {
                visible: root.network.isSecure
                text: Fonts.iconLock
                color: Colors.textSubdued
                font.pixelSize: 14
                font.family: Fonts.iconFont
            }
            
            // Connection progress spinner with continuous rotation animation
            Text {
                id: connectingSpinner
                visible: Network.wifiConnecting && Network.wifiConnectTarget && Network.wifiConnectTarget === root.network
                text: Fonts.iconSpinner
                color: Colors.text
                font.pixelSize: 16
                font.family: Fonts.iconFont
                
                RotationAnimator on rotation {
                    running: connectingSpinner.visible
                    from: 0
                    to: 360
                    duration: AnimationConfig.verySlow
                    loops: Animation.Infinite
                }
            }

            // Disconnect button for active connections
            ActionButton {
                visible: root.network.active
                Layout.preferredWidth: 20
                Layout.preferredHeight: 20
                radius: 12
                icon: Fonts.iconFalse
                textColor: Colors.text
                backgroundColor: Colors.red
                borderColor: Colors.red
                onClicked: Network.disconnectWifiNetwork()
            }
        }
        
        // Password input field for secure network authentication
        RowLayout {
            Layout.fillWidth: true
            Layout.topMargin: 4
            spacing: 8
            visible: root.network.askingPassword
            
            // Cancel password entry and revert to network selection
            ActionButton {
                Layout.preferredWidth: 24
                Layout.preferredHeight: 24
                icon: Fonts.iconFalse
                textColor: Colors.red
                backgroundColor: "transparent"
                borderColor: Colors.red
                iconSize: 0.5
                onClicked: {
                    root.network.askingPassword = false
                    passwordField.text = ""
                }
            }
            
            // Secure password input with focus-based border highlight
            TextField {
                id: passwordField
                Layout.fillWidth: true
                Layout.preferredHeight: 36
                placeholderText: "Password"
                echoMode: TextInput.Password
                color: Colors.text
                font.pixelSize: Fonts.p
                verticalAlignment: TextInput.AlignVCenter
                leftPadding: 6
                rightPadding: 6
                topPadding: 6
                bottomPadding: 6
                
                background: Rectangle {
                    color: Colors.darken_20
                    radius: 4
                    border.width: passwordField.activeFocus ? 2 : 1
                    border.color: passwordField.activeFocus ? Colors.lavender : Colors.brighten_20
                    
                    AnimatedColor on border.color {}
                }
                
                onAccepted: root.attemptNetworkConnection()
            }
            
            // Submit password and connect to network
            ActionButton {
                Layout.preferredWidth: 24
                Layout.preferredHeight: 24
                icon: Fonts.iconTrue
                textColor: Colors.green
                backgroundColor: "transparent"
                borderColor: Colors.green
                iconSize: 0.5
                onClicked: root.attemptNetworkConnection()
            }
        }
    }
    
    // Mouse area for clicking network
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        enabled: !root.network.askingPassword && !root.network.active
        onClicked: root.clicked()
    }
    
    // Helper function to validate and submit password for network connection
    function attemptNetworkConnection() {
        if (passwordField.text.length > 0) {
            Network.changePassword(root.network, passwordField.text)
        }
    }
}

```

## File: `modules/quickshell/config/modules/controlCenter/ControlCenter.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.settings
import qs.services
import qs.components
import qs.components.animations
import qs.modules.controlCenter.components

/// Main Control Center module providing system status and quick settings
/// Features:
/// - Quick settings grid with expandable bubbles for detailed controls
/// - Real-time system monitoring (uptime, audio, media, notifications)
/// - Power management buttons (suspend, reboot, shutdown)
/// - Bluetooth device discovery and connection management
/// - Notification center integration
Scope {
    reloadableId: "controlCenterModule"

    Mainscreen {
        Drawer {
            id: controlCenterDrawer

            required property var modelData
            screen: modelData

            // Drawer configuration
            isRightDrawer: true
            drawerWidth: Config.controlCenterWidth !== 0 ? Config.controlCenterWidth : (ScreenGeometry.getGeometry(screen.name).width) * 0.2
            accentColor: Config.controlCenterAccent
            drawerVisible: AppState.controlCenterVisible
            contentSpacing: 28

            onCloseRequested: {
                AppState.closeControlCenter();
            }

            /// Stop Bluetooth discovery when drawer closes to reduce resource usage
            onDrawerVisibleChanged: {
                if (!drawerVisible) {
                    Bluetooth.stopDiscovery();
                }
            }

            /// Header row: displays current time and power control buttons
            RowLayout {
                id: topRow
                Layout.fillWidth: true
                Layout.fillHeight: false
                Layout.alignment: Qt.AlignTop

                Clock {
                    id: clock
                    Layout.alignment: Qt.AlignLeft
                }

                Item {
                    Layout.fillWidth: true
                }

                PowerButtonGroup {
                    id: actionButtons
                    Layout.preferredHeight: parent.height
                    Layout.preferredWidth: implicitWidth
                }
            }

            /// Animated container for quick settings grid and expanded bubble content
            /// Handles smooth transitions between grid and detail views
            Item {
                id: quickSettingsContainer
                Layout.alignment: Qt.AlignTop
                Layout.fillWidth: true
                Layout.preferredHeight: isExpanded ? quickSettings.expandedHeight : quickSettings.implicitHeight
                Layout.maximumHeight: isExpanded ? (ScreenGeometry.getGeometry(controlCenterDrawer.screen.name).height) * 0.4 : quickSettings.implicitHeight

                property bool isExpanded: false
                property bool animationsReady: false
                property bool hasBeenVisible: false

                AnimatedHeight on Layout.preferredHeight {
                    enabled: quickSettingsContainer.animationsReady
                } 
                AnimatedHeight on Layout.maximumHeight {
                    enabled: quickSettingsContainer.animationsReady
                }

                /// Defer animations until after first drawer visibility to prevent
                /// unnecessary animations on startup
                Connections {
                    target: controlCenterDrawer
                    function onDrawerVisibleChanged() {
                        if (controlCenterDrawer.drawerVisible && !quickSettingsContainer.hasBeenVisible) {
                            quickSettingsContainer.hasBeenVisible = true;
                        } else if (quickSettingsContainer.hasBeenVisible) {
                            quickSettingsContainer.animationsReady = true;
                        }
                    }
                }

                /// Quick settings grid showing toggles and status bubbles
                QuickSettings {
                    id: quickSettings
                    anchors.fill: parent
                    visible: !quickSettingsContainer.isExpanded
                    opacity: quickSettingsContainer.isExpanded ? 0 : 1

                    AnimatedOpacity on opacity {}

                    onExpandedStateChanged: expanded => {
                        quickSettingsContainer.isExpanded = expanded;
                    }
                }

                /// Detailed view for expanded bubble content (audio, WiFi, Bluetooth, etc.)
                Loader {
                    id: expandedContentLoader
                    anchors.fill: parent
                    visible: quickSettingsContainer.isExpanded
                    active: quickSettingsContainer.isExpanded
                    opacity: quickSettingsContainer.isExpanded ? 1 : 0
                    sourceComponent: quickSettings.expandedContentComponent

                    Connections {
                        target: expandedContentLoader.item
                        ignoreUnknownSignals: true

                        function onCloseRequested() {
                            quickSettings.collapseAll();
                        }
                    }

                    AnimatedOpacity on opacity {}
                }
            }

            MediaControls {
                id: mediaControls
            }

            NotificationCenter {
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            /// Footer: displays system uptime and settings access button
            RowLayout {
                Layout.fillWidth: true
                Layout.preferredHeight: 32
                Layout.rightMargin: 6
                Layout.leftMargin: 6
                spacing: 12

                Text {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                    text: {
                        let parts = [];
                        if (System.uptimeDays > 0) {
                            parts.push(System.uptimeDays + "d");
                        }
                        if (System.uptimeHours > 0 || System.uptimeDays > 0) {
                            parts.push(System.uptimeHours + "h");
                        }
                        parts.push(System.uptimeMinutes + "m");
                        return "Uptime: " + parts.join(" ");
                    }
                    font.pixelSize: Fonts.h6
                    color: Colors.textSubdued
                }

                ActionButton {
                    Layout.preferredWidth: 32
                    Layout.preferredHeight: 32
                    icon: Fonts.iconSettings

                    onClicked: {
                        AppState.closeControlCenter();
                        AppState.openSettingsWindow();
                    }
                }
            }

            /// Overlay background for dismissing expanded bubbles on click
            overlayData: [
                MouseArea {
                    anchors.fill: parent
                    visible: quickSettingsContainer.isExpanded
                    z: -1
                    propagateComposedEvents: false
                    cursorShape: Qt.ArrowCursor

                    onClicked: {
                        quickSettings.collapseAll();
                    }
                }
            ]
        }
    }
}

```

## File: `modules/quickshell/config/modules/greeter/components/BlurredWallpaper.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import Qt5Compat.GraphicalEffects
import Quickshell
import qs.services
import qs.components.animations

/**
 * BlurredWallpaper
 *
 * Renders a stretched and blurred wallpaper across multiple monitors.
 * Automatically handles scaling to cover total desktop dimensions while
 * maintaining aspect ratio. Supports dynamic blur toggling and darkening overlay.
 *
 * Usage: Provide monitor geometry (screenX/Y, screenWidth/Height) and total
 * desktop dimensions. The component clips content to the monitor boundaries.
 */
Item {
    id: root
    
    // ============ REQUIRED PROPERTIES ============
    required property real screenX
    required property real screenY
    required property real screenWidth
    required property real screenHeight
    
    // ============ OPTIONAL PROPERTIES ============
    property int blurRadius: 64
    property bool showBlur: true
    property real darkenOpacity: 0.3
    
    // ============ POSITIONING ============
    // Calculate positioning using the centralized ScreenGeometry service
    property var imagePosition: calculatePosition()
    
    function calculatePosition() {
        if (wallpaperImage.status === Image.Ready && wallpaperImage.sourceSize.width > 0) {
            return ScreenGeometry.calculateScreenPositioning(
                wallpaperImage.sourceSize.width,
                wallpaperImage.sourceSize.height,
                screenX,
                screenY
            );
        }
        return { scale: 1, x: 0, y: 0, scaledWidth: 0, scaledHeight: 0 };
    }
    
    // Recalculate when screen position changes
    onScreenXChanged: imagePosition = calculatePosition()
    onScreenYChanged: imagePosition = calculatePosition()
    onScreenWidthChanged: imagePosition = calculatePosition()
    onScreenHeightChanged: imagePosition = calculatePosition()
    
    // ============ WALLPAPER SOURCE ============
    readonly property string wallpaperUrl: WallpaperService.currentWallpaperPath ? "file://" + WallpaperService.currentWallpaperPath : ""

    clip: true

    // ============ WALLPAPER IMAGE ============
    // Single image component used for both direct display and blur source.
    // Visibility and rendering mode controlled by showBlur property.
    Image {
        id: wallpaperImage
        x: root.imagePosition.x
        y: root.imagePosition.y
        width: root.imagePosition.scaledWidth
        height: root.imagePosition.scaledHeight
        
        source: root.wallpaperUrl
        fillMode: Image.Stretch
        smooth: true
        antialiasing: true
        cache: true
        asynchronous: false  // Keep synchronous to avoid flicker on lock screen
        visible: !root.showBlur
        
        // Recalculate position when image loads
        onStatusChanged: {
            if (status === Image.Ready) {
                root.imagePosition = root.calculatePosition();
            }
        }
    }
    
    // ============ BLUR EFFECT ============
    // FastBlur effect using the single wallpaper image as source.
    // Only visible when showBlur is enabled.
    FastBlur {
        x: root.imagePosition.x
        y: root.imagePosition.y
        width: root.imagePosition.scaledWidth
        height: root.imagePosition.scaledHeight
        radius: root.blurRadius
        visible: root.showBlur
        
        source: ShaderEffectSource {
            sourceItem: wallpaperImage
            hideSource: true
        }
    }
    
    // ============ DARKENING OVERLAY ============
    // Semi-transparent black layer for improved readability on top of wallpaper
    Rectangle {
        anchors.fill: parent
        color: "black"
        opacity: root.darkenOpacity
    }
    
    // ============ REACTIVE UPDATES ============
    // Recalculate positioning when desktop geometry changes
    Connections {
        target: ScreenGeometry
        
        function onTotalDesktopWidthChanged() {
            if (wallpaperImage.status === Image.Ready) {
                root.imagePosition = root.calculatePosition();
            }
        }
        
        function onTotalDesktopHeightChanged() {
            if (wallpaperImage.status === Image.Ready) {
                root.imagePosition = root.calculatePosition();
            }
        }
    }
    
    // Recalculate when wallpaper changes
    Connections {
        target: WallpaperService
        
        function onWallpaperChanged() {
            // Image will recalculate on statusChanged when new image loads
        }
    }
    
    // ============ INITIALIZATION ============
    Component.onCompleted: {
        // Force initial calculation
        if (wallpaperImage.status === Image.Ready) {
            imagePosition = calculatePosition();
        }
    }
}

```

## File: `modules/quickshell/config/modules/greeter/components/GreeterBackground.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.settings
import qs.modules.greeter.components

/**
 * GreeterBackground - Full-screen blurred wallpaper background for greeter
 */
Item {
    id: root
    
    required property var context

    // Cache screen geometry
    property var screenGeom: ScreenGeometry.getGeometry(Config.mainMonitorId)

    // Reactive updates when screen geometries change
    Connections {
        target: ScreenGeometry
        
        function onScreenGeometriesChanged() {
            root.screenGeom = ScreenGeometry.getGeometry(Config.mainMonitorId);
        }
    }

    // Background container
    Rectangle {
        anchors.fill: parent
        color: Colors.bgDark
        
        // Blurred wallpaper using the reusable component
        BlurredWallpaper {
            anchors.fill: parent
            screenX: root.screenGeom.x
            screenY: root.screenGeom.y
            screenWidth: root.screenGeom.width
            screenHeight: root.screenGeom.height
            blurRadius: Config.greeterBlurRadius || 64
            showBlur: true
            darkenOpacity: Config.greeterDimming || 0.5
        }
    }
}

```

## File: `modules/quickshell/config/modules/greeter/components/GreeterContext.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import Quickshell.Services.Pam
import qs.settings

/**
 * GreeterContext - Manages shared state and PAM authentication for greetd
 * 
 * Handles username/password input, session selection, and PAM authentication.
 */
Scope {
    id: root

    // Signals
    signal sessionStarted()
    signal authenticationFailed(string message)

    // State properties - shared across all surfaces
    property string username: ""
    property string password: ""
    property string selectedSession: "Hyprland"
    property bool loginInProgress: false
    property bool showFailure: false
    property string failureMessage: ""

    // Available sessions - Loaded from JSON
    readonly property var sessions: Sessions.list

    // Clear failure message when user starts typing
    onPasswordChanged: {
        if (password.length > 0) {
            showFailure = false;
            failureTimer.stop();
        }
    }

    onUsernameChanged: {
        if (username.length > 0) {
            showFailure = false;
            failureTimer.stop();
        }
    }

    // Timer to auto-hide failure message after 3 seconds
    Timer {
        id: failureTimer
        interval: 3000
        repeat: false
        onTriggered: {
            root.showFailure = false;
            root.failureMessage = "";
        }
    }

    // Try to login with current credentials
    function tryLogin() {
        if (username === "" || password === "" || loginInProgress) return;
        
        loginInProgress = true;
        showFailure = false;
        failureTimer.stop();
        pam.start();
    }

    // Clear the input fields
    function clearInput() {
        password = "";
        showFailure = false;
        failureTimer.stop();
    }

    // Handle authentication failure
    function handleAuthFailure(message) {
        password = "";
        showFailure = true;
        failureMessage = message;
        loginInProgress = false;
        failureTimer.start();
        authenticationFailed(message);
    }

    // Select a session
    function selectSession(sessionName) {
        selectedSession = sessionName;
    }

    // PAM authentication context for greetd
    PamContext {
        id: pam

        // Use custom pam config for greetd
        configDirectory: Qt.resolvedUrl("../pam")
        config: "greetd.conf"

        // Set the username for PAM
        user: root.username

        // Handle PAM messages (password prompt)
        onPamMessage: {
            if (this.responseRequired) {
                this.respond(root.password);
            }
        }

        // Handle authentication completion
        onCompleted: function(result) {
            if (result === PamResult.Success) {
                // Start the session
                startSession();
            } else {
                handleAuthFailure("Authentication failed: " + result);
            }
        }

        // Handle errors
        onError: function(error) {
            handleAuthFailure("PAM error: " + error);
        }
    }

    // Start the user session using greetd IPC
    function startSession() {
        // Find the session command
        var sessionCmd = "";
        for (var i = 0; i < sessions.length; i++) {
            if (sessions[i].name === selectedSession) {
                sessionCmd = sessions[i].command;
                break;
            }
        }

        if (sessionCmd === "") {
            sessionCmd = selectedSession;
        }

        // Use greetd's create_session command via IPC
        // This will be handled by the greeter backend
        console.log("Starting session:", sessionCmd, "for user:", username);
        
        // Signal that session is starting
        root.sessionStarted();
        
        // In a real implementation, this would use greetd IPC to start the session
        // For now, we'll just exit quickshell which should hand off to the session
        Qt.quit();
    }
}

```

## File: `modules/quickshell/config/modules/greeter/components/GreeterForm.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Quickshell
import qs.settings
import qs.components.animations

/**
 * GreeterForm - Login form with username/password input
 * 
 * Displays time, date, username field, password field, session selector,
 * and login button. Only visible on main monitor.
 */
Item {
    id: root
    
    required property var context

    // Determines if UI elements should be visible (only on main monitor)
    readonly property bool isMainMonitor: true

    Column {
        anchors.centerIn: parent
        spacing: 30
        width: 400

        // ============ TIME AND DATE DISPLAY ============
        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10

            // Time display with gradient
            Item {
                anchors.horizontalCenter: parent.horizontalCenter
                width: timeText.width
                height: timeText.height

                Text {
                    id: timeText
                    text: Time.time
                    font.pixelSize: 96
                    font.weight: Font.Bold
                    visible: false
                }

                LinearGradient {
                    anchors.fill: timeText
                    source: timeText
                    start: Qt.point(0, 0)
                    end: Qt.point(timeText.width, timeText.height)
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: Colors.blue }
                        GradientStop { position: 0.3; color: Colors.mauve }
                        GradientStop { position: 0.7; color: Colors.pink }
                        GradientStop { position: 1.0; color: Colors.sky }
                    }
                }
            }

            // Date display
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: Time.fulldate
                color: Colors.textSubdued
                font.pixelSize: 20
                font.weight: Font.Light
            }
        }

        // ============ USERNAME INPUT ============
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 350
            height: 55
            color: Colors.darken_20
            border.width: 2
            border.color: usernameInput.activeFocus ? Colors.sky : Colors.blue
            radius: height / 2

            Behavior on border.color {
                ColorAnimation {
                    duration: AnimationConfig.normal
                    easing.type: AnimationConfig.defaultEasing
                }
            }

            TextInput {
                id: usernameInput
                anchors.fill: parent
                anchors.leftMargin: 25
                anchors.rightMargin: 25
                color: Colors.text
                font.pixelSize: 18
                font.weight: Font.Medium
                verticalAlignment: TextInput.AlignVCenter
                horizontalAlignment: TextInput.AlignHCenter
                focus: true
                text: context.username

                onTextChanged: context.username = text
                onAccepted: passwordInput.forceActiveFocus()

                Text {
                    anchors.centerIn: parent
                    text: "Username"
                    color: Colors.textSubdued
                    font.pixelSize: 18
                    visible: !usernameInput.activeFocus && usernameInput.text === ""
                }
            }
        }

        // ============ PASSWORD INPUT ============
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 350
            height: 55
            color: Colors.darken_20
            border.width: 3
            radius: height / 2
            
            // Dynamic border color based on authentication state
            border.color: {
                if (root.context.showFailure) {
                    return Colors.red;
                }
                if (passwordInput.activeFocus || context.password.length > 0) {
                    return Colors.sky;
                }
                return Colors.blue;
            }
            
            Behavior on border.color {
                ColorAnimation {
                    duration: AnimationConfig.normal
                    easing.type: AnimationConfig.defaultEasing
                }
            }

            TextInput {
                id: passwordInput
                anchors.fill: parent
                anchors.leftMargin: 25
                anchors.rightMargin: 25
                color: Colors.text
                font.pixelSize: 18
                font.weight: Font.Medium
                echoMode: TextInput.Password
                passwordCharacter: "●"
                enabled: !root.context.loginInProgress
                verticalAlignment: TextInput.AlignVCenter
                horizontalAlignment: TextInput.AlignHCenter
                focus: false

                onAccepted: root.context.tryLogin()
                onTextChanged: context.password = text

                Keys.onEscapePressed: {
                    root.context.clearInput();
                    usernameInput.forceActiveFocus();
                }
            }

            // Failure message overlay
            Text {
                anchors.centerIn: parent
                text: root.context.failureMessage
                color: Colors.red
                font.pixelSize: 14
                visible: root.context.showFailure
            }
        }

        // ============ SESSION SELECTOR ============
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 350
            height: 45
            color: Colors.darken_20
            border.width: 1
            border.color: Colors.bg_2
            radius: 10

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 15
                anchors.rightMargin: 15
                spacing: 10

                Text {
                    text: "Session:"
                    color: Colors.textSubdued
                    font.pixelSize: 14
                }

                ComboBox {
                    Layout.fillWidth: true
                    model: context.sessions.map(s => s.name)
                    currentIndex: context.sessions.findIndex(s => s.name === context.selectedSession)
                    
                    contentItem: Text {
                        text: parent.currentText
                        color: Colors.text
                        font.pixelSize: 14
                        verticalAlignment: Text.AlignVCenter
                    }

                    background: Rectangle {
                        color: "transparent"
                        border.color: Colors.bg_2
                        border.width: 1
                        radius: 5
                    }

                    popup: Popup {
                        y: parent.height
                        width: parent.width
                        implicitHeight: contentItem.implicitHeight
                        
                        contentItem: ListView {
                            clip: true
                            implicitHeight: contentHeight
                            model: parent.parent.model
                            
                            delegate: ItemDelegate {
                                width: parent.width
                                highlighted: parent.parent.currentIndex === index
                                
                                contentItem: Text {
                                    text: modelData
                                    color: highlighted ? Colors.blue : Colors.text
                                    font.pixelSize: 14
                                }

                                background: Rectangle {
                                    color: highlighted ? Colors.bg_1 : "transparent"
                                }

                                onClicked: {
                                    context.selectSession(modelData);
                                    parent.parent.popup.close();
                                }
                            }
                        }

                        background: Rectangle {
                            color: Colors.bgDark
                            border.color: Colors.bg_2
                            border.width: 1
                            radius: 10
                        }
                    }
                }
            }
        }

        // ============ LOGIN BUTTON ============
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 350
            height: 50
            color: context.loginInProgress ? Colors.bg_2 : Colors.blue
            radius: 25

            Behavior on color {
                ColorAnimation {
                    duration: AnimationConfig.normal
                    easing.type: AnimationConfig.defaultEasing
                }
            }

            MouseArea {
                anchors.fill: parent
                enabled: !context.loginInProgress
                onClicked: root.context.tryLogin()

                Text {
                    anchors.centerIn: parent
                    text: context.loginInProgress ? "Logging in..." : "Login"
                    color: Colors.bg
                    font.pixelSize: 18
                    font.weight: Font.Bold
                }
            }
        }

        // ============ SPLASH TEXT ============
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 400
            wrapMode: Text.WordWrap
            text: Config.greeterSplashText || "Welcome to MangoWC"
            horizontalAlignment: Text.AlignHCenter
            color: Colors.textSubdued
            font.pixelSize: Fonts.p
            visible: Config.showSplashOnGreeter || true
        }
    }
}

```

## File: `modules/quickshell/config/modules/greeter/pam/greetd.conf`

```conf
# PAM configuration for greetd
# This file should be installed to /etc/pam.d/greetd

@include common-auth
@include common-account
@include common-session

```

## File: `modules/quickshell/config/modules/greeter/Greeter.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import Quickshell.Io
import qs.modules.greeter.components
import qs.settings

/**
 * Greeter - Main greeter component for greetd
 * 
 * This is the login screen that appears when greetd starts.
 * It uses the same styling as the lockscreen but with username selection.
 */
Item {
    id: root

    // Create greeter context to manage state
    GreeterContext {
        id: greeterContext

        onSessionStarted: {
            // Session started successfully, quickshell will exit
            console.log("Session started, exiting greeter...");
        }
    }

    // Background layer - full screen blurred wallpaper
    GreeterBackground {
        anchors.fill: parent
        context: greeterContext
    }

    // Login form - centered on main monitor only
    GreeterForm {
        anchors.fill: parent
        context: greeterContext
    }
}

```

## File: `modules/quickshell/config/modules/launcher/assets/wikipedia-icon.png`

```png
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<!-- Uploaded to: SVG Repo, www.svgrepo.com, Transformed by: SVG Repo Mixer Tools -->
<svg fill="#ffffff" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="800px" height="800px" viewBox="0 0 97.75 97.75" xml:space="preserve">

<g id="SVGRepo_bgCarrier" stroke-width="0"/>

<g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"/>

<g id="SVGRepo_iconCarrier"> <g> <path d="M48.875,0C21.883,0,0,21.883,0,48.875S21.883,97.75,48.875,97.75S97.75,75.867,97.75,48.875S75.867,0,48.875,0z M77.691,37.503c-2.779,6.28-11.279,26.171-16.951,39.136c-0.008,0.006-1.486-0.003-1.49-0.005l-8.945-21.069 c-3.545,6.953-7.473,14.181-10.832,21.059c-0.02,0.035-1.625,0.016-1.627-0.006c-5.135-11.986-10.459-23.893-15.621-35.87 c-1.195-2.928-5.387-7.637-8.256-7.61c0-0.34-0.016-1.099-0.02-1.558l17.682-0.002l-0.014,1.531 c-2.076,0.096-5.664,1.421-4.734,3.713c2.492,5.381,11.316,26.227,13.701,31.519c1.664-3.257,6.311-11.939,8.225-15.609 c-1.5-3.078-6.457-14.57-7.943-17.464c-1.121-1.887-3.934-2.118-6.1-2.151c0-0.483,0.025-0.855,0.016-1.518l15.543,0.048v1.412 c-2.104,0.058-4.096,0.841-3.193,2.853c2.091,4.34,3.312,7.43,5.231,11.444c0.613-1.176,3.755-7.622,5.253-11.024 c0.905-2.262-0.447-3.109-4.232-3.211c0.05-0.372,0.017-1.119,0.05-1.475l13.424,0.013l0.006,1.401 c-2.467,0.096-5.021,1.41-6.354,3.45l-6.464,13.406c0.709,1.773,6.924,15.58,7.578,17.111L74.988,36.18 c-0.951-2.497-3.984-3.055-5.17-3.082c0.008-0.398,0.01-1.005,0.012-1.512l13.951,0.04l0.02,0.07l-0.023,1.394 C80.717,33.183,78.824,34.82,77.691,37.503z"/> </g> </g>

</svg>
```

## File: `modules/quickshell/config/modules/launcher/components/ActionListItem.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.settings
import qs.modules.launcher
import qs.components.animations

/**
 * ActionListItem: Launcher action list item with selection state and icon support
 * 
 * A reusable list item component for launcher actions with visual selection feedback.
 * Displays a prefixed icon, action name, and custom content with smooth animations.
 * 
 * Properties:
 * - selected: Controls visual selection state and color animation
 * - actionName: The display name of the action
 * - content: Custom children for flexible content layout
 */
Item {
    id: root
    
    property bool selected: false
    property string actionName: ""
    property alias content: actionContent.children
    
    width: parent.width
    height: LauncherConfig.actionItemHeight
    
    // Background with dynamic color based on selection state
    Rectangle {
        anchors.fill: parent
        radius: 8
        color: root.selected ? Colors.brighten_10 : "transparent"
        
        AnimatedColor on color {
            animationDuration: AnimationConfig.fast
        }
    }
    
    Row {
        anchors.fill: parent
        anchors.margins: 8
        anchors.leftMargin: 36
        spacing: 12
        
        // Action prefix icon
        Text {
            id: actionPrefix
            anchors.verticalCenter: parent.verticalCenter
            text: Fonts.iconChevronRight
            color: Colors.textSubdued
            font.pixelSize: Fonts.h5
            font.family: Fonts.iconFont
        }
        
        // Content container with flexible width and custom children
        Column {
            id: actionContent
            anchors.verticalCenter: parent.verticalCenter
            spacing: 2
            width: parent.width - actionPrefix.width - parent.spacing
            
            Text {
                text: root.actionName
                color: Colors.text
                font.pixelSize: Fonts.p
                elide: Text.ElideRight
                width: parent.width
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/launcher/components/Applications.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.modules.launcher
import qs.modules.launcher.functions

/// Container for the applications tab in the launcher.
///
/// Manages application discovery, filtering, and execution through a list view.
/// Coordinates between the application logic layer (ApplicationsLogic) and UI components.
/// Supports keyboard navigation, search filtering, and application usage tracking.
///
/// Public API:
/// - searchText: Current search filter text
/// - navigateDown/Up(): Move selection in list
/// - executeSelected(): Launch the selected application
/// - expandSelected(): Toggle expanded details for selected item
/// - resetState(): Clear filters and selection
/// - onTabActivated(): Lifecycle callback when this tab becomes active
Item {
    id: root

    /// Current search filter text, propagated from parent launcher
    property alias searchText: appLogic.searchText

    /// Emitted when an application has been successfully executed
    signal appExecuted

    // ===== Internal Components =====

    /// Tracks application launch frequency and usage patterns
    UsageTracker {
        id: usageTracker
    }

    /// Core business logic for filtering, sorting, and executing applications
    ApplicationsLogic {
        id: appLogic
        usageTracker: usageTracker
        usageData: usageTracker.usageData

        onModelRebuilt: {
            appList.currentIndex = appLogic.currentItemIndex;
        }

        onItemExecuted: {
            root.appExecuted();
        }
    }

    /// Synchronizes usage data changes with filtered application list
    Connections {
        target: usageTracker

        function onUsageDataChanged() {
            appLogic.usageData = usageTracker.usageData;
            appLogic.rebuildFilteredApps();
        }
    }

    // ===== UI Components =====

    /// Displays the filtered list of applications
    ApplicationsList {
        id: appList
        anchors.fill: parent
        logic: appLogic
        model: appLogic.filteredApps
        currentIndex: appLogic.currentItemIndex
        emptyMessage: root.searchText.length > 0
            ? LauncherConfig.emptyStateMessages.apps.search
            : LauncherConfig.emptyStateMessages.apps.empty
        emptySearchMessage: root.searchText.length ? `Search: "${root.searchText}"` : ""
    }

    // ===== Public API =====

    function navigateDown() {
        appLogic.navigateDown();
    }

    function navigateUp() {
        appLogic.navigateUp();
    }

    function executeSelected() {
        appLogic.executeSelected();
    }

    function expandSelected() {
        appLogic.expandSelected();
    }

    function resetState() {
        appLogic.resetState();
    }

    function onTabActivated() {
        // No special handling needed for applications tab activation
    }

    // ===== Signal Handlers =====

    onSearchTextChanged: {
        appLogic.onSearchChanged();
    }
}

```

## File: `modules/quickshell/config/modules/launcher/components/ApplicationsList.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.settings

/**
 * ApplicationsList: Displays searchable list of installed applications with action expansion
 *
 * Renders applications with name, description, and icon. Applications with available actions
 * display a chevron that expands to show additional actions. Left-click executes the app,
 * right-click expands actions. Keyboard navigation via inherited BaseListView logic.
 */
BaseListView {
    id: listView

    emptyMessage: "No applications found"
    emptySearchMessage: ""

    delegate: Column {
        id: itemColumn

        required property int index
        required property var modelData

        width: ListView.view.width
        spacing: 2

        readonly property bool isExpanded: !!(listView.logic.expandedItems[itemColumn.modelData.name])
        readonly property bool itemSelected: (itemColumn.index === listView.logic.currentItemIndex && listView.logic.currentActionIndex === -1)

        SelectableListItem {
            id: mainItem
            selected: itemColumn.itemSelected

            Row {
                anchors.fill: parent
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                spacing: 14

                Image {
                    id: itemIcon
                    width: height
                    height: parent.height / 1.5
                    anchors.verticalCenter: parent.verticalCenter
                    fillMode: Image.PreserveAspectFit
                    visible: itemIcon.source != ""
                    asynchronous: true
                    smooth: true
                    source: Quickshell.iconPath(itemColumn.modelData.icon, true)
                }

                // Fallback 1
                Image {
                    id: itemIconFallback
                    width: height
                    height: parent.height / 1.5
                    anchors.verticalCenter: parent.verticalCenter
                    fillMode: Image.PreserveAspectFit
                    visible: !itemIcon.visible && itemIconFallback.source != ""
                    asynchronous: true
                    smooth: true
                    source: Quickshell.iconPath("/usr/share/icons/" + itemColumn.modelData.icon, true)
                }

                // Fallback 2
                Text {
                    id: itemIconFallbackText
                    width: height
                    height: parent.height / 1.5
                    anchors.verticalCenter: parent.verticalCenter
                    visible: !itemIcon.visible && !itemIconFallback.visible
                    text: Fonts.iconHyprland
                    font.family: Fonts.iconFont
                    font.pixelSize: parent.height * 0.5
                    color: Colors.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Column {
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2
                    width: parent.width - itemIcon.width - itemChevron.width - (2 * parent.spacing)

                    Text {
                        text: itemColumn.modelData.name
                        color: Colors.text
                        font.pixelSize: Fonts.h5
                        elide: Text.ElideRight
                        width: parent.width
                    }

                    Text {
                        text: itemColumn.modelData.comment || itemColumn.modelData.genericName || ""
                        visible: text.length > 0
                        width: parent.width
                        color: Colors.textSubdued
                        font.pixelSize: Fonts.p
                        elide: Text.ElideRight
                    }
                }

                Item {
                    id: itemChevron
                    width: height
                    height: parent.height
                    visible: itemColumn.modelData.actions && itemColumn.modelData.actions.length > 0

                    ExpandChevron {
                        anchors.fill: parent
                        expanded: itemColumn.isExpanded
                    }
                }
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onPositionChanged: listView.logic.enableMouseSelection()

                onEntered: listView.logic.selectItem(itemColumn.index)

                onClicked: mouse => {
                    if (mouse.button === Qt.RightButton && itemColumn.modelData.actions && itemColumn.modelData.actions.length > 0) {
                        listView.logic.toggleExpansion(itemColumn.modelData.name);
                    } else {
                        listView.logic.executeApp(itemColumn.modelData);
                    }
                }
            }
        }

        Repeater {
            model: itemColumn.isExpanded && itemColumn.modelData.actions ? itemColumn.modelData.actions : []

            delegate: ActionListItem {
                id: actionItem

                required property int index
                required property var modelData

                readonly property bool actionSelected: (itemColumn.index === listView.logic.currentItemIndex && actionItem.index === listView.logic.currentActionIndex)

                selected: actionItem.actionSelected
                actionName: actionItem.modelData.name

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor

                    onPositionChanged: listView.logic.enableMouseSelection()

                    onEntered: listView.logic.selectAction(itemColumn.index, actionItem.index)

                    onClicked: listView.logic.executeAction(actionItem.modelData)
                }
            }
        }
    }
}
```

## File: `modules/quickshell/config/modules/launcher/components/BaseListView.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.modules.launcher

/**
 * BaseListView - Reusable base ListView component for launcher lists
 * 
 * Provides common functionality for:
 * - Auto-scrolling to keep current item visible
 * - Empty state display
 * - Consistent spacing and clipping
 * - Connection to logic component for index tracking
 * 
 * Usage:
 *   BaseListView {
 *       logic: myLogic
 *       model: myLogic.filteredItems
 *       emptyMessage: "No items found"
 *       delegate: myDelegateComponent
 *   }
 */
ListView {
    id: listView

    // ===== Required Properties =====
    required property var logic
    
    // ===== Optional Properties =====
    property string emptyMessage: "No items found"
    property string emptySearchMessage: ""

    // ===== ListView Configuration =====
    clip: true
    focus: false
    spacing: LauncherConfig.listSpacing
    boundsBehavior: Flickable.DragAndOvershootBounds

    // ===== Auto-scroll Management =====
    
    /**
     * Auto-scroll when currentIndex changes to keep item visible
     */
    onCurrentIndexChanged: {
        if (currentIndex >= 0 && currentIndex < count) {
            positionViewAtIndex(currentIndex, ListView.Contain);
        }
    }

    /**
     * Watch for logic's currentItemIndex changes
     * This ensures smooth scrolling when using keyboard navigation
     */
    Connections {
        target: listView.logic
        
        function onCurrentItemIndexChanged() {
            if (listView.logic && 
                listView.logic.currentItemIndex >= 0 && 
                listView.logic.currentItemIndex < listView.count) {
                listView.positionViewAtIndex(listView.logic.currentItemIndex, ListView.Contain);
            }
        }
    }

    // ===== Empty State =====
    
    // Empty state only shows when the list is actually empty AND the list is visible
    // Parent components control overall visibility via hasResults
    EmptyListState {
        visible: listView.count === 0 && listView.visible
        message: listView.emptyMessage
        searchMessage: listView.emptySearchMessage
    }
}

```

## File: `modules/quickshell/config/modules/launcher/components/EmptyListState.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.settings

// Reusable empty state display for lists
Item {
    id: root
    
    property string message: "No items found"
    property string searchMessage: ""
    
    anchors.fill: parent
    
    Column {
        anchors.centerIn: parent
        spacing: 8
        
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: root.message
            color: Colors.textSubdued
            font.pixelSize: Fonts.h4
        }
        
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: root.searchMessage
            color: Colors.textSubdued
            font.pixelSize: Fonts.p
            visible: text.length > 0
        }
    }
}

```

## File: `modules/quickshell/config/modules/launcher/components/ExpandChevron.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.settings
import qs.components.animations

// Reusable animated chevron for expandable items
Item {
    id: root
    
    property bool expanded: false
    
    width: height
    
    Text {
        anchors.centerIn: parent
        text: Fonts.iconChevronRight
        color: Colors.textSubdued
        font.pixelSize: 12
        font.family: Fonts.iconFont
        
        AnimatedRotation on rotation {}
        
        rotation: root.expanded ? 90 : 0
    }
}

```

## File: `modules/quickshell/config/modules/launcher/components/Files.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.modules.launcher
import qs.modules.launcher.functions

Item {
    id: root

    // Properties passed from parent
    property alias searchText: filesLogic.searchText
    
    // Signals
    signal appExecuted  // Using same signal name for consistency with launcher

    // Logic
    FilesLogic {
        id: filesLogic
        
        onModelRebuilt: {
            filesList.currentIndex = filesLogic.currentItemIndex;
        }

        // Forward itemExecuted signal
        onItemExecuted: {
            root.appExecuted();
        }

        // Show list immediately when results are ready, hide with delay to prevent flashing
        onHasResultsChanged: {
            root.updateVisibility();
        }
        
        onFilteredFilesChanged: {
            root.updateVisibility();
        }
    }
    
    // Function to update visibility based on search results
    function updateVisibility() {
        // Show list when search has been performed (hasResults), regardless of count
        // The FilesList component will show emptyMessage if there are no results
        if (filesLogic.hasResults) {
            // Show immediately when results arrive
            visibilityTimer.stop();
            filesList.visible = true;
        } else {
            // Hide after delay to prevent flashing during quick searches
            visibilityTimer.restart();
        }
    }

    // Debounce timer to prevent flashing when hiding list
    Timer {
        id: visibilityTimer
        interval: 500  // 0.5 second delay
        repeat: false
        onTriggered: {
            if (!filesLogic.hasResults) {
                filesList.visible = false;
            }
        }
    }

    // ListView - visibility controlled by debounced timer
    FilesList {
        id: filesList
        anchors.fill: parent
        logic: filesLogic
        model: filesLogic.filteredFiles
        currentIndex: filesLogic.currentItemIndex
        emptyMessage: root.searchText.length > 0 ? LauncherConfig.emptyStateMessages.files.search : LauncherConfig.emptyStateMessages.files.empty
        emptySearchMessage: root.searchText.length > 0 ? `Search: "${root.searchText}"` : ""
        visible: false  // Initially hidden, controlled by hasResults changes
    }

    // Public API for parent (Launcher.qml)
    function navigateDown() {
        filesLogic.navigateDown();
    }

    function navigateUp() {
        filesLogic.navigateUp();
    }

    function executeSelected() {
        filesLogic.executeSelected();
    }

    function expandSelected() {
        filesLogic.expandSelected();
    }

    function resetState() {
        filesLogic.resetState();
    }

    // React to search changes
    onSearchTextChanged: {
        filesLogic.onSearchChanged();
    }
}

```

## File: `modules/quickshell/config/modules/launcher/components/FilesList.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.settings

BaseListView {
    id: listView

    // Optional properties (logic is inherited from BaseListView)
    emptyMessage: "No files found"
    emptySearchMessage: ""

    delegate: Column {
        id: fileColumn
        required property int index
        required property var modelData

        width: ListView.view.width
        spacing: 2

        readonly property bool isExpanded: !!(listView.logic.expandedItems[fileColumn.modelData.path])
        readonly property bool itemSelected: (fileColumn.index === listView.logic.currentItemIndex && listView.logic.currentActionIndex === -1)

        // Main item
        SelectableListItem {
            id: mainItem
            selected: fileColumn.itemSelected

            Row {
                anchors.fill: parent
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                spacing: 14

                // File/Folder icon
                Item {
                    id: fileIcon
                    width: height
                    height: parent.height / 1.5
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        anchors.centerIn: parent
                        text: fileColumn.modelData.isDirectory ? "󰉋" : "󰈔"
                        color: fileColumn.modelData.isDirectory ? Colors.blue : Colors.textSubdued
                        font.pixelSize: 24
                        font.family: Fonts.iconFont
                    }
                }

                // File Info
                Column {
                    anchors.verticalCenter: parent.verticalCenter
                    spacing: 2
                    width: parent.width - fileIcon.width - fileChevron.width - (2 * parent.spacing)

                    Text {
                        text: fileColumn.modelData.name
                        color: Colors.text
                        font.pixelSize: Fonts.h5
                        elide: Text.ElideRight
                        width: parent.width
                    }

                    Text {
                        text: fileColumn.modelData.isDirectory ? (fileColumn.modelData.path + "/") : fileColumn.modelData.path
                        visible: text.length > 0
                        width: parent.width
                        color: Colors.textSubdued
                        font.pixelSize: Fonts.p
                        elide: Text.ElideMiddle
                    }
                }

                // Chevron for actions
                Item {
                    id: fileChevron
                    width: height
                    height: parent.height
                    visible: true  // Always visible since all files have actions

                    ExpandChevron {
                        anchors.fill: parent
                        expanded: fileColumn.isExpanded
                    }
                }
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onPositionChanged: {
                    // Re-enable mouse selection when mouse actually moves
                    listView.logic.enableMouseSelection();
                }

                onEntered: listView.logic.selectItem(fileColumn.index)

                onClicked: mouse => {
                    if (mouse.button === Qt.RightButton) {
                        listView.logic.toggleExpansion(fileColumn.modelData.path);
                    } else {
                        // Left click executes the file
                        listView.logic.executeFile(fileColumn.modelData);
                    }
                }
            }
        }

        // Actions (shown when expanded)
        Repeater {
            model: fileColumn.isExpanded ? listView.logic.fileActions : []

            delegate: ActionListItem {
                id: actionItem

                required property int index
                required property var modelData

                readonly property bool actionSelected: (fileColumn.index === listView.logic.currentItemIndex && actionItem.index === listView.logic.currentActionIndex)

                selected: actionItem.actionSelected
                actionName: actionItem.modelData.name

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor

                    onPositionChanged: {
                        // Re-enable mouse selection when mouse actually moves
                        listView.logic.enableMouseSelection();
                    }

                    onEntered: listView.logic.selectAction(fileColumn.index, actionItem.index)

                    onClicked: {
                        listView.logic.executeItemAction(actionItem.modelData, fileColumn.modelData);
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/launcher/components/SelectableListItem.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.settings
import qs.modules.launcher
import qs.components.animations

// Reusable list item with selection state and animation
Item {
    id: root
    
    property bool selected: false
    property alias content: contentItem.children
    
    width: parent.width
    height: LauncherConfig.listItemHeight
    
    Rectangle {
        anchors.fill: parent
        radius: 8
        color: root.selected ? Colors.brighten_10 : "transparent"
        border.width: 0
        
        AnimatedColor on color {
            animationDuration: AnimationConfig.fast
        }
    }
    
    Item {
        id: contentItem
        anchors.fill: parent
        anchors.margins: 12
    }
}

```

## File: `modules/quickshell/config/modules/launcher/components/Websearch.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.modules.launcher
import qs.modules.launcher.functions

Item {
    id: root

    // Properties passed from parent
    property alias searchText: searchLogic.searchText
    
    // Signals
    signal appExecuted  // Using same signal name for consistency with launcher

    // Logic
    WebsearchLogic {
        id: searchLogic
        
        onModelRebuilt: {
            searchList.currentIndex = searchLogic.currentItemIndex;
        }

        // Forward itemExecuted signal
        onItemExecuted: {
            root.appExecuted();
        }
    }

    // ListView
    WebsearchList {
        id: searchList
        anchors.fill: parent
        logic: searchLogic
        model: searchLogic.filteredSearchEngines
        currentIndex: searchLogic.currentItemIndex
        emptyMessage: LauncherConfig.emptyStateMessages.websearch.empty
        emptySearchMessage: root.searchText.length > 0 ? `Search: "${root.searchText}"` : LauncherConfig.emptyStateMessages.websearch.search
    }

    // Public API for parent (Launcher.qml)
    function navigateDown() {
        searchLogic.navigateDown();
    }

    function navigateUp() {
        searchLogic.navigateUp();
    }

    function executeSelected() {
        searchLogic.executeSelected();
    }

    function expandSelected() {
        // No expansion needed for websearch
    }

    function resetState() {
        searchLogic.resetState();
    }

    // Called when this tab becomes active
    function onTabActivated() {
        // Websearch doesn't need special handling on tab activation
    }

    // React to search changes
    onSearchTextChanged: {
        searchLogic.onSearchChanged();
    }
}

```

## File: `modules/quickshell/config/modules/launcher/components/WebsearchList.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.settings

BaseListView {
    id: listView

    // Optional properties (logic is inherited from BaseListView)
    emptyMessage: "No search engines found"
    emptySearchMessage: ""

    delegate: SelectableListItem {
        id: itemDelegate

        required property int index
        required property var modelData

        readonly property bool itemSelected: (itemDelegate.index === listView.logic.currentItemIndex)

        selected: itemSelected

        Row {
            anchors.fill: parent
            anchors.leftMargin: 8
            anchors.rightMargin: 8
            spacing: 14

            // Search Engine Icon
            Image {
                id: engineIcon
                width: height
                height: parent.height / 1.5
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                smooth: true
                source: itemDelegate.modelData.icon

                // Fallback for missing icons
                onStatusChanged: {
                    if (status === Image.Error) {
                        source = Quickshell.iconPath("internet-web-browser");
                    }
                }
            }

            // Engine Info
            Column {
                anchors.verticalCenter: parent.verticalCenter
                spacing: 2
                width: parent.width - engineIcon.width - parent.spacing

                Text {
                    text: itemDelegate.modelData.name
                    color: Colors.text
                    font.pixelSize: Fonts.h5
                    elide: Text.ElideRight
                    width: parent.width
                }

                Text {
                    text: itemDelegate.modelData.description || ""
                    visible: text.length > 0
                    width: parent.width
                    color: Colors.textSubdued
                    font.pixelSize: Fonts.p
                    elide: Text.ElideRight
                }
            }
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            acceptedButtons: Qt.LeftButton

            onPositionChanged: {
                // Re-enable mouse selection when mouse actually moves
                listView.logic.enableMouseSelection();
            }

            onEntered: listView.logic.selectItem(itemDelegate.index)

            onClicked: {
                // Execute search with this engine
                listView.logic.executeSearch(itemDelegate.modelData, listView.logic.searchText.trim());
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/launcher/functions/ApplicationsLogic.qml`

```qml
/**
 * ApplicationsLogic - Application launcher business logic
 * 
 * Manages desktop application discovery, filtering, and execution.
 * 
 * Key responsibilities:
 * - Discover and cache applications from DesktopEntries
 * - Filter applications based on search text by name, generic name, or comment
 * - Sort results intelligently: by usage when searching, alphabetically when idle
 * - Execute applications directly or within a terminal environment
 * - Track application usage for frequency-based sorting
 * - Maintain keyboard navigation state through BaseListLogic
 * 
 * The filtering combines all app metadata fields and applies smart sorting
 * to ensure frequently-used applications appear first during searches, while
 * maintaining alphabetical order for browsing without search terms.
 */

pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.modules.launcher

BaseListLogic {
    id: logic

    // ===== App-Specific Properties =====
    property var allApps: []
    property var filteredApps: []
    property var usageData: ({})
    property var usageTracker: null

    // ===== Signals =====
    signal appsChanged

    // ===== Override Base Methods =====

    function getItems() {
        return logic.filteredApps;
    }

    function getItemActions(item) {
        return item.actions || [];
    }

    function getItemKey(item) {
        return item.name;
    }

    function executeItem(item) {
        logic.executeApp(item);
    }

    function executeItemAction(action, item) {
        logic.executeAction(action);
    }

    // ===== App-Specific Functions =====

    /**
     * Increments usage tracking for an application to enable frequency-based sorting
     * in subsequent searches. Only executes if both appName and usageTracker are available.
     */
    function incrementUsage(appName) {
        if (!appName || !usageTracker)
            return;

        usageTracker.incrementUsage(appName);
    }

    /**
     * Executes an application, launching it either directly or within a terminal
     * based on its runInTerminal property. Automatically updates usage tracking and
     * emits the itemExecuted signal for UI state management.
     */
    function executeApp(app) {
        if (!app)
            return;

        if (!app.runInTerminal) {
            app.execute();
        } else {
            const cmd = [LauncherConfig.terminalCommand].concat(LauncherConfig.terminalArgs).concat([app.execString]);
            Quickshell.execDetached({
                command: cmd,
                workingDirectory: app.workingDirectory
            });
        }

        logic.incrementUsage(app.name);
        logic.itemExecuted();
    }

    /**
     * Executes an action associated with an application item and notifies
     * the UI that an action was executed.
     */
    function executeAction(action) {
        if (!action)
            return;

        action.execute();
        logic.itemExecuted();
    }

    /**
     * Checks if an application matches the provided search text by comparing against
     * its name, generic name, and comment fields in a case-insensitive manner.
     * Returns true if searchLower is empty (show all apps) or if any field matches.
     */
    function matchesApp(app, searchLower) {
        if (!searchLower)
            return true;
        return (app.name || "").toLowerCase().includes(searchLower) || (app.genericName || "").toLowerCase().includes(searchLower) || (app.comment || "").toLowerCase().includes(searchLower);
    }

    /**
     * Sorts applications using smart heuristics:
     * - Without search text: alphabetical order for comfortable browsing
     * - With search text: by usage count (descending), then alphabetically
     * This prioritizes frequently-used applications when searching while maintaining
     * alphabetical discovery when browsing the full list.
     */
    function sortApps(apps, searchLower, usage) {
        if (!searchLower) {
            return apps.slice().sort((a, b) => (a.name || "").localeCompare(b.name || ""));
        }

        return apps.slice().sort((a, b) => {
            const ua = usage[a.name] || 0;
            const ub = usage[b.name] || 0;
            if (ua !== ub)
                return ub - ua;
            return (a.name || "").localeCompare(b.name || "");
        });
    }

    /**
     * Initializes the application list by fetching all available desktop entries
     * and storing them. Applications are pre-sorted alphabetically for initial display.
     */
    function buildAllApps() {
        let apps = [...DesktopEntries.applications.values].sort((a, b) => a.name.localeCompare(b.name));

        logic.allApps = apps.map(app => Object.assign({}, app));

        logic.rebuildFilteredApps();
        logic.appsChanged();
    }

    /**
     * Rebuilds the filtered application list based on current search text.
     * Applies filtering via matchesApp() and sorting via sortApps(), then
     * validates navigation indices and emits modelRebuilt signal for the UI.
     */
    function rebuildFilteredApps() {
        const usage = logic.usageData || {};
        const lowered = logic.searchText.toLowerCase().trim();

        const visibleApps = logic.allApps.filter(app => matchesApp(app, lowered));
        logic.filteredApps = sortApps(visibleApps, lowered, usage);

        logic.validateIndices();
        logic.modelRebuilt();
    }

    /**
     * Handles search text changes by resetting navigation state and rebuilding
     * the filtered application list. Clears action selection and item expansions
     * to reset the UI to a clean state when the user begins a new search.
     */
    function onSearchChanged() {
        logic.currentItemIndex = 0;
        logic.currentActionIndex = -1;
        logic.expandedItems = {};

        logic.rebuildFilteredApps();
    }

    // ===== Initialization =====
    Component.onCompleted: {
        buildAllApps();

        // Subscribe to real-time changes in available desktop entries (Quickshell 2.1+)
        DesktopEntries.applicationsChanged.connect(function () {
            if (logic) {
                logic.buildAllApps();
            }
        });
    }
}

```

## File: `modules/quickshell/config/modules/launcher/functions/BaseListLogic.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick

/**
 * BaseListLogic - Abstract base for launcher list navigation and state management
 * 
 * Provides unified keyboard/mouse interaction handling for browsing lists with
 * optional per-item actions. Manages selection state, navigation flow, and
 * expansion/collapse of items with associated action menus.
 * 
 * **Navigation Model:**
 * - Items can be selected via keyboard (up/down) or mouse hover
 * - Actions are only visible when parent item is expanded
 * - Down navigation: item → first action (if expanded) → next item
 * - Up navigation: previous item's last action (if expanded) → item
 * - Keyboard navigation disables mouse hover to prevent conflicts
 * 
 * **Subclass Requirements - Must Override:**
 * - getItems(): Return the filtered/sorted list to display
 * - getItemActions(item): Return action array for the item (or empty array)
 * - getItemKey(item): Return unique identifier for expansion tracking
 * - executeItem(item): Handle main item execution
 * - executeItemAction(action, item): Handle action execution
 */
QtObject {
    id: base

    // ===== State Properties =====
    property int currentItemIndex: 0
    property int currentActionIndex: -1
    property var expandedItems: ({})
    property bool keyboardNavigationActive: false
    property bool mouseHoverEnabled: true

    // External references (set by subclass)
    property string searchText: ""

    // ===== Signals =====
    signal modelRebuilt
    signal itemExecuted

    // ===== Timer for hover re-enable =====
    property Timer hoverEnableTimer: Timer {
        interval: 100
        repeat: false
        onTriggered: base.mouseHoverEnabled = true
    }

    // ===== Abstract Methods (Override in subclass) =====
    
    /**
     * Returns the filtered list of items to display.
     * Subclasses must override to return the appropriate model data.
     * @returns {Array} - Array of item objects
     */
    function getItems() {
        console.warn("BaseListLogic: getItems() not implemented in subclass");
        return [];
    }

    /**
     * Returns actions available for a specific item.
     * Return empty array if the item has no actions.
     * @param {Object} item - The item to get actions for
     * @returns {Array} - Array of action objects with name, icon, and action properties
     */
    function getItemActions(item) {
        return [];
    }

    /**
     * Returns unique key for an item, used for expansion state tracking.
     * Key must be stable and unique across the item's lifetime.
     * @param {Object} item - The item to get key for
     * @returns {String} - Unique identifier (typically item.name or item.path)
     */
    function getItemKey(item) {
        console.warn("BaseListLogic: getItemKey() not implemented in subclass");
        return "";
    }

    /**
     * Execute the primary action for an item (e.g., launch an app, open a file).
     * Subclass should call itemExecuted() signal when appropriate.
     * @param {Object} item - The item to execute
     */
    function executeItem(item) {
        console.warn("BaseListLogic: executeItem() not implemented in subclass");
    }

    /**
     * Execute a secondary action on an item (e.g., "Open Folder", "Copy Path").
     * Subclass should call itemExecuted() signal when appropriate.
     * @param {Object} action - The action to execute
     * @param {Object} item - The parent item
     */
    function executeItemAction(action, item) {
        console.warn("BaseListLogic: executeItemAction() not implemented in subclass");
    }

    // ===== Selection Management =====

    /**
     * Get currently selected item and action info.
     * Returns the currently focused item or action based on navigation state.
     * @returns {Object|null} - { type: "item"|"action", item: Object, action?: Object } or null if list is empty
     */
    function getCurrentSelection() {
        const items = base.getItems();
        if (items.length === 0 || base.currentItemIndex >= items.length) {
            return null;
        }

        const currentItem = items[base.currentItemIndex];
        const itemKey = base.getItemKey(currentItem);
        const actions = base.getItemActions(currentItem);

        if (base.currentActionIndex >= 0 && 
            base.expandedItems[itemKey] && 
            actions && 
            base.currentActionIndex < actions.length) {
            return {
                type: "action",
                item: currentItem,
                action: actions[base.currentActionIndex]
            };
        }

        return {
            type: "item",
            item: currentItem
        };
    }

    // ===== Expansion Management =====

    /**
     * Toggle expansion state for an item to show/hide its actions.
     * Temporarily disables mouse hover to prevent flickering when expanding.
     * @param {String} itemKey - Unique key for the item
     */
    function toggleExpansion(itemKey) {
        const newExpanded = Object.assign({}, base.expandedItems);
        const wasExpanded = !!base.expandedItems[itemKey];
        newExpanded[itemKey] = !wasExpanded;
        base.expandedItems = newExpanded;

        if (wasExpanded) {
            base.currentActionIndex = -1;
        } else {
            base.mouseHoverEnabled = false;
            hoverEnableTimer.restart();
        }

        base.modelRebuilt();
    }

    // ===== Navigation Functions =====

    /**
     * Navigate down through items and actions.
     * Activates keyboard navigation mode. Navigation flow:
     * item → first action (if expanded) → next item
     */
    function navigateDown() {
        base.keyboardNavigationActive = true;
        
        const items = base.getItems();
        if (items.length === 0) return;

        const currentItem = items[base.currentItemIndex];
        const itemKey = base.getItemKey(currentItem);
        const isExpanded = base.expandedItems[itemKey];
        const actions = base.getItemActions(currentItem);
        const hasActions = actions && actions.length > 0;

        if (base.currentActionIndex >= 0) {
            if (base.currentActionIndex < actions.length - 1) {
                base.currentActionIndex++;
            } else {
                base.currentItemIndex = (base.currentItemIndex + 1) % items.length;
                base.currentActionIndex = -1;
            }
        } else {
            if (isExpanded && hasActions) {
                base.currentActionIndex = 0;
            } else {
                base.currentItemIndex = (base.currentItemIndex + 1) % items.length;
            }
        }
    }

    /**
     * Navigate up through items and actions.
     * Activates keyboard navigation mode. Navigation flow:
     * previous item's last action (if expanded) → item
     */
    function navigateUp() {
        base.keyboardNavigationActive = true;
        
        const items = base.getItems();
        if (items.length === 0) return;

        if (base.currentActionIndex >= 0) {
            if (base.currentActionIndex > 0) {
                base.currentActionIndex--;
            } else {
                base.currentActionIndex = -1;
            }
        } else {
            const prevItemIndex = (base.currentItemIndex - 1 + items.length) % items.length;
            base.currentItemIndex = prevItemIndex;

            const prevItem = items[prevItemIndex];
            const prevItemKey = base.getItemKey(prevItem);
            const isPrevExpanded = base.expandedItems[prevItemKey];
            const prevActions = base.getItemActions(prevItem);
            const prevHasActions = prevActions && prevActions.length > 0;

            if (isPrevExpanded && prevHasActions) {
                base.currentActionIndex = prevActions.length - 1;
            } else {
                base.currentActionIndex = -1;
            }
        }
    }

    /**
     * Execute the currently selected item or action based on navigation state.
     */
    function executeSelected() {
        const selection = base.getCurrentSelection();
        if (!selection) return;

        if (selection.type === "action") {
            base.executeItemAction(selection.action, selection.item);
        } else {
            base.executeItem(selection.item);
        }
    }

    /**
     * Expand/collapse the currently selected item to show/hide its actions.
     */
    function expandSelected() {
        const selection = base.getCurrentSelection();
        if (!selection || selection.type !== "item") return;

        const actions = base.getItemActions(selection.item);
        if (actions && actions.length > 0) {
            const itemKey = base.getItemKey(selection.item);
            base.toggleExpansion(itemKey);
        }
    }

    // ===== Mouse Interaction Helpers =====

    /**
     * Select an item by index via mouse hover.
     * Only works when keyboard navigation is inactive and mouse hover is enabled.
     * @param {Number} itemIndex - Index of the item
     */
    function selectItem(itemIndex) {
        if (base.keyboardNavigationActive || !base.mouseHoverEnabled) return;
        
        const items = base.getItems();
        if (itemIndex >= 0 && itemIndex < items.length) {
            base.currentItemIndex = itemIndex;
            base.currentActionIndex = -1;
        }
    }

    /**
     * Select an action by index via mouse hover.
     * Only works when keyboard navigation is inactive and mouse hover is enabled.
     * @param {Number} itemIndex - Index of the parent item
     * @param {Number} actionIndex - Index of the action
     */
    function selectAction(itemIndex, actionIndex) {
        if (base.keyboardNavigationActive || !base.mouseHoverEnabled) return;
        
        const items = base.getItems();
        if (itemIndex >= 0 && itemIndex < items.length) {
            const item = items[itemIndex];
            const itemKey = base.getItemKey(item);
            const actions = base.getItemActions(item);
            
            if (base.expandedItems[itemKey] && 
                actions && 
                actionIndex >= 0 && 
                actionIndex < actions.length) {
                base.currentItemIndex = itemIndex;
                base.currentActionIndex = actionIndex;
            }
        }
    }

    /**
     * Re-enable mouse selection after keyboard navigation.
     * Called when user moves the mouse to switch from keyboard to mouse control.
     */
    function enableMouseSelection() {
        base.keyboardNavigationActive = false;
        base.mouseHoverEnabled = true;
    }

    // ===== State Reset =====

    /**
     * Reset all navigation and interaction state to defaults.
     * Use when completely clearing the model or resetting the UI.
     */
    function resetState() {
        base.currentItemIndex = 0;
        base.currentActionIndex = -1;
        base.expandedItems = {};
        base.keyboardNavigationActive = false;
        base.mouseHoverEnabled = true;
    }

    /**
     * Reset navigation indices when search text changes.
     * Called by subclass onSearchChanged() to handle model updates.
     */
    function onSearchChanged() {
        base.currentItemIndex = 0;
        base.currentActionIndex = -1;
        base.expandedItems = {};
    }

    /**
     * Validate and fix navigation indices after model changes.
     * Ensures currentItemIndex is within valid range; resets action selection.
     * Call this after filtering/sorting to prevent invalid indices.
     */
    function validateIndices() {
        const items = base.getItems();
        if (base.currentItemIndex >= items.length) {
            base.currentItemIndex = Math.max(0, items.length - 1);
        }
        base.currentActionIndex = -1;
    }
}

```

## File: `modules/quickshell/config/modules/launcher/functions/FilesLogic.qml`

```qml
/**
 * FilesLogic - File search and action management for launcher
 * 
 * Manages file search results and provides standard file operations
 * (open, open containing folder, copy path) for selected files.
 * 
 * Integrates with FileSearch service to handle real-time search updates
 * and delegates file operations to system handlers.
 * 
 * File actions are defined in LauncherConfig and mapped to FileSearch
 * service methods for consistent behavior across the launcher.
 */

pragma ComponentBehavior: Bound

import QtQuick
import qs.services
import qs.modules.launcher

BaseListLogic {
    id: logic

    // ===== File-Specific Properties =====
    property var filteredFiles: []
    property bool hasResults: false  // Exposed to frontend to track if search completed
    property bool initialized: false  // Track if component has been initialized
    property bool searchTriggered: false  // Track if we've triggered our own search (to ignore cached results)

    // ===== File Actions (built from Config) =====
    readonly property var fileActions: {
        const actions = [];
        const actionDefs = LauncherConfig.fileActionDefinitions;
        
        for (let i = 0; i < actionDefs.length; i++) {
            const def = actionDefs[i];
            
            if (def.name === "Open") {
                actions.push({
                    name: def.name,
                    icon: def.icon,
                    action: function(file) {
                        FileSearch.openFile(file.path);
                        logic.itemExecuted();
                    }
                });
            } else if (def.name === "Open Folder") {
                actions.push({
                    name: def.name,
                    icon: def.icon,
                    action: function(file) {
                        FileSearch.openContainingFolder(file.path);
                        logic.itemExecuted();
                    }
                });
            } else if (def.name === "Copy Path") {
                actions.push({
                    name: def.name,
                    icon: def.icon,
                    action: function(file) {
                        FileSearch.copyToClipboard(file.path);
                    }
                });
            }
        }
        
        return actions;
    }

    // ===== Override Base Methods =====
    
    function getItems() {
        return logic.filteredFiles;
    }

    function getItemActions(item) {
        return logic.fileActions;
    }

    function getItemKey(item) {
        return item.path;
    }

    function executeItem(item) {
        logic.executeFile(item);
    }

    function executeItemAction(action, item) {
        if (action && item) {
            action.action(item);
        }
    }

    // ===== File-Specific Functions =====

    /**
     * Open a file using the system default handler (file manager or associated application).
     * Emits itemExecuted signal to trigger launcher state update.
     */
    function executeFile(file) {
        FileSearch.openFile(file.path);
        logic.itemExecuted();
    }

    // ===== Monitor FileSearch Results =====
    
    property var _fileSearchResults: FileSearch.searchResults
    on_FileSearchResultsChanged: {
        // Only accept results if we've triggered our own search (ignore cached results from before initialization)
        if (!logic.searchTriggered) {
            return;
        }
        
        logic.filteredFiles = FileSearch.searchResults;
        logic.validateIndices();
        logic.modelRebuilt();
    }

    property bool _fileSearchHasPerformed: FileSearch.hasPerformedSearch
    on_FileSearchHasPerformedChanged: {
        // Only accept search status if we've triggered our own search
        if (!logic.searchTriggered) {
            return;
        }
        
        logic.hasResults = FileSearch.hasPerformedSearch;
    }

    /**
     * Handle search text changes by triggering a new file search.
     * Resets navigation state and triggers FileSearch service with new query.
     */
    function onSearchChanged() {
        // Only search if component is initialized
        if (!logic.initialized) {
            return;
        }
        
        logic.currentItemIndex = 0;
        logic.currentActionIndex = -1;
        logic.expandedItems = {};

        logic.searchTriggered = true;  // Mark that we've triggered a search
        FileSearch.search(logic.searchText);
    }

    /**
     * Override resetState to clear files and search when resetting the model.
     */
    function resetState() {
        logic.currentItemIndex = 0;
        logic.currentActionIndex = -1;
        logic.expandedItems = {};
        logic.filteredFiles = [];
        logic.hasResults = false;
        logic.searchTriggered = false;  // Reset search trigger flag
    }

    // ===== Initialization =====
    Component.onCompleted: {
        logic.initialized = true;
        logic.searchTriggered = true;  // Mark that we're triggering a search
        FileSearch.search(logic.searchText);
    }
}

```

## File: `modules/quickshell/config/modules/launcher/functions/UsageTracker.qml`

```qml
/**
 * UsageTracker - Application usage frequency tracking
 * 
 * Tracks how many times applications are launched from the launcher,
 * persisting usage data to a JSON file for frequency-based sorting.
 * This enables "most used apps first" sorting in launcher views.
 * 
 * Usage data is stored as a mapping of application names to counts:
 * {data: {usageData: {appName: count, ...}}}
 */

pragma ComponentBehavior: Bound

import Quickshell.Io
import QtQuick

QtObject {
    id: usageTracker

    // Properties
    property string usageFilePath: Qt.resolvedUrl("../../../settings/UsageMetric.json");
    property var usageData: ({})

    // Internal components
    property var usageFile: FileView {
        path: usageTracker.usageFilePath
        watchChanges: true

        onFileChanged: {
            reload();
        }

        onAdapterUpdated: {
            writeAdapter();
        }

        adapter: JsonAdapter {
            id: usageAdapter
            property var data: ({})

            onDataChanged: {
                // Handle the nested structure from JSON file: {data: {usageData: {...}}}
                if (data && data.data && data.data.usageData) {
                    usageTracker.usageData = data.data.usageData;
                } else if (data && data.usageData) {
                    // Fallback for {usageData: {...}} structure
                    usageTracker.usageData = data.usageData;
                } else {
                    usageTracker.usageData = {};
                }
            }
        }
    }

    // ===== Public Functions =====

    /**
     * Increment usage count for an application
     * 
     * Adds 1 to the current usage count for the given application name and
     * persists the updated data to the JSON file. If the app is not yet tracked,
     * starts counting from 1.
     * 
     * @param appName {string} The name/identifier of the application
     */
    function incrementUsage(appName) {
        if (!appName) {
            console.warn("UsageTracker: Cannot increment usage for empty app name");
            return;
        }

        let usage = Object.assign({}, usageTracker.usageData);
        const currentCount = usage[appName] || 0;
        usage[appName] = currentCount + 1;

        // Update the adapter with the proper JSON structure matching the file format
        usageFile.adapter.data = {
            "data": {
                "usageData": usage
            }
        };
    }

    /**
     * Get the usage count for an application
     * 
     * @param appName {string} The name/identifier of the application
     * @returns {number} The usage count, or 0 if not tracked
     */
    function getUsageCount(appName) {
        if (!appName)
            return 0;
        return usageTracker.usageData[appName] || 0;
    }

    /**
     * Reset the usage count for a specific application
     * 
     * Removes the application from the usage tracking data and persists
     * the change to the JSON file.
     * 
     * @param appName {string} The name/identifier of the application
     */
    function resetUsage(appName) {
        if (!appName)
            return;
        let usage = Object.assign({}, usageTracker.usageData);
        delete usage[appName];

        // Update the adapter with the proper JSON structure matching the file format
        usageFile.adapter.data = {
            "data": {
                "usageData": usage
            }
        };
    }

    /**
     * Clear all usage data
     * 
     * Removes all tracked applications from usage data. This is typically
     * used for reset or cleanup operations. The change is persisted immediately.
     */
    function clearAllUsage() {
        // Update the adapter with the proper JSON structure matching the file format
        usageFile.adapter.data = {
            "data": {
                "usageData": {}
            }
        };
    }

    /**
     * Get the most frequently used applications
     * 
     * Returns applications sorted by usage count in descending order
     * (most used first). Useful for frequency-based sorting in launcher views.
     * 
     * @param limit {number} Maximum number of apps to return (default 10)
     * @returns {Array} Array of {name, count} objects sorted by usage
     */
    function getMostUsedApps(limit = 10) {
        const usage = usageTracker.usageData;
        const sorted = Object.entries(usage).sort(([, a], [, b]) => b - a).slice(0, limit);

        return sorted.map(([appName, count]) => ({
                    name: appName,
                    count: count
                }));
    }
}

```

## File: `modules/quickshell/config/modules/launcher/functions/WebsearchLogic.qml`

```qml
/**
 * WebsearchLogic - Web search engine selection and URL opening
 * 
 * Manages a list of configured web search engines and handles opening
 * search queries in the user's default browser. Integration with external
 * search providers is configured via LauncherConfig.
 * 
 * Unlike file/app searches, this always displays all configured search
 * engines regardless of search text, allowing quick access to any engine.
 * Search text is passed as a query parameter to the selected engine.
 */

pragma ComponentBehavior: Bound

import Quickshell
import QtQuick
import qs.modules.launcher

BaseListLogic {
    id: logic

    // ===== Websearch-Specific Properties =====
    property var allSearchEngines: []
    property var filteredSearchEngines: []

    // ===== Override Base Methods =====
    
    function getItems() {
        return logic.filteredSearchEngines;
    }

    function getItemActions(item) {
        return [];  // No actions for search engines
    }

    function getItemKey(item) {
        return item.name;
    }

    function executeItem(item) {
        logic.executeSearch(item, logic.searchText.trim());
    }

    function executeItemAction(action, item) {
        // No actions for search engines
    }

    // ===== Websearch-Specific Functions =====

    /**
     * Build the complete search engines list from LauncherConfig
     * 
     * Retrieves all enabled search engines and populates the allSearchEngines
     * list. Called once at initialization and whenever engine configuration
     * changes. Automatically rebuilds the filtered list.
     */
    function buildSearchEngines() {
        logic.allSearchEngines = [];
        
        const engines = LauncherConfig.getEnabledSearchEngines();
        for (let i = 0; i < engines.length; i++) {
            const engine = engines[i];
            logic.allSearchEngines.push({
                name: engine.name,
                url: engine.url,
                icon: engine.icon,
                description: engine.description,
                actions: []
            });
        }

        logic.rebuildFilteredEngines();
    }

    /**
     * Rebuild the filtered engines list for display
     * 
     * Unlike file/app searches, always shows all configured search engines
     * regardless of search text. Search text is used only in the query parameter.
     * Validates selection indices and emits modelRebuilt signal.
     */
    function rebuildFilteredEngines() {
        // Always show all search engines regardless of search text
        logic.filteredSearchEngines = logic.allSearchEngines.slice();

        // Validate indices
        logic.validateIndices();

        logic.modelRebuilt();
    }

    /**
     * Execute search by opening URL in default browser
     * 
     * Takes the selected search engine, URL-encodes the query text, constructs
     * the full search URL, and opens it via xdg-open. Emits itemExecuted signal
     * to close the launcher after execution.
     * 
     * @param engine {Object} The search engine object with url property
     * @param query {string} The search query text to encode
     */
    function executeSearch(engine, query) {
        if (!engine || !query) {
            console.warn("WebsearchLogic: Cannot execute search - missing engine or query");
            return;
        }

        // URL encode the query
        const encodedQuery = encodeURIComponent(query);
        const fullUrl = engine.url + encodedQuery;

        // Open URL in default browser using xdg-open
        Quickshell.execDetached({
            command: ["xdg-open", fullUrl]
        });

        logic.itemExecuted();  // Emit signal
    }

    /**
     * Handle search text changes
     * 
     * Rebuilds the filtered engines list. Unlike file searches, all engines
     * remain visible regardless of search text - the text is only used when
     * constructing the query parameter for the selected engine.
     */
    function onSearchChanged() {
        // Rebuild to trigger any necessary updates
        logic.rebuildFilteredEngines();
    }

    // ===== Initialization =====
    Component.onCompleted: {
        buildSearchEngines();
    }
}

```

## File: `modules/quickshell/config/modules/launcher/Launcher.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import qs.settings
import qs.services
import qs.components
import qs.modules.launcher.components

Scope {
    reloadableId: "launcherModule"

    Mainscreen {
        id: launcherVariants

        Drawer {
            id: launcherDrawer

            required property var modelData
            screen: modelData

            // Drawer configuration
            isRightDrawer: false
            drawerWidth: Config.launcherWidth !== 0 ? Config.launcherWidth : (ScreenGeometry.getGeometry(screen.name).width) * 0.25
            accentColor: Config.launcherAccent
            drawerVisible: AppState.launcherVisible

            property int currentTab: 0 // 0: Apps, 1: Files, 2: Web

            // Handle visibility changes
            onDrawerVisibilityChanged: visible => {
                if (visible) {
                    searchBar.forceActiveFocus();
                }
            }

            // Handle close request from focus grab
            onCloseRequested: {
                AppState.closeLauncher();
            }

            // Search bar
            Searchbar {
                id: searchBar
                Layout.fillWidth: true
                Layout.preferredHeight: LauncherConfig.searchBarHeight
                placeholderText: "Search..."

                onTextChanged: {
                    if (contentLoader.item) {
                        contentLoader.item.searchText = searchBar.text;
                    }
                }
                onNavigateDown: {
                    if (contentLoader.item && contentLoader.item.navigateDown) {
                        contentLoader.item.navigateDown();
                    }
                }
                onNavigateUp: {
                    if (contentLoader.item && contentLoader.item.navigateUp) {
                        contentLoader.item.navigateUp();
                    }
                }
                onExecuteSelected: {
                    if (contentLoader.item && contentLoader.item.executeSelected) {
                        contentLoader.item.executeSelected();
                    }
                }
                onNavigateRight: {
                    if (contentLoader.item && contentLoader.item.expandSelected) {
                        contentLoader.item.expandSelected();
                    }
                }
                onTabPressed: {
                    launcherDrawer.currentTab = (launcherDrawer.currentTab + 1) % 3;
                }
                onTabPressedReverse: {
                    launcherDrawer.currentTab = (launcherDrawer.currentTab - 1 + 3) % 3;
                }
            }

            // Tab Navigation
            Tabs {
                id: tabs
                Layout.fillWidth: true
                Layout.preferredHeight: LauncherConfig.tabBarHeight
                currentTab: launcherDrawer.currentTab

                onTabChanged: index => {
                    launcherDrawer.currentTab = index;
                    // Reset state when switching tabs (but keep search text)
                    if (contentLoader.item && contentLoader.item.resetState) {
                        contentLoader.item.resetState();
                    }
                    // Notify the new tab that it's becoming active
                    if (contentLoader.item && contentLoader.item.onTabActivated) {
                        contentLoader.item.onTabActivated();
                    }
                }
            }

            // Content Loader
            Loader {
                id: contentLoader
                Layout.fillWidth: true
                Layout.fillHeight: true

                source: {
                    switch (launcherDrawer.currentTab) {
                    case 0:
                        return "components/Applications.qml";
                    case 1:
                        return "components/Files.qml";
                    case 2:
                        return "components/Websearch.qml";
                    default:
                        return "";
                    }
                }

                onLoaded: {
                    if (item) {
                        // Set the current search text when component loads
                        item.searchText = searchBar.text;

                        // Connect app execution signal to close launcher
                        if (item.appExecuted !== undefined) {
                            item.appExecuted.connect(() => {
                                AppState.closeLauncher();
                            });
                        }

                        // Notify the component it's being activated
                        if (item.onTabActivated) {
                            item.onTabActivated();
                        }
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/launcher/LauncherConfig.qml`

```qml
pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

/**
 * LauncherConfig - Centralized configuration for the launcher module
 *
 * Provides centralized management of launcher UI dimensions, search engines,
 * file actions, and system commands. All launcher components reference this
 * singleton for consistent behavior and easy customization.
 *
 * **Key Responsibilities:**
 * - UI layout dimensions (search bar, tabs, list items)
 * - Search engine definitions and icon mapping
 * - File action definitions (Open, Open Folder, Copy Path)
 * - Empty state messages for different launcher tabs
 * - System command configuration (terminal launcher)
 *
 * **Usage:**
 * Components import and reference properties like `LauncherConfig.listItemHeight`
 * Logic modules access methods like `LauncherConfig.getEnabledSearchEngines()`
 */
Singleton {
    id: config

    // ===== UI Configuration =====
    readonly property int searchBarHeight: 64
    readonly property int tabBarHeight: 50
    readonly property int listItemHeight: 60
    readonly property int actionItemHeight: 48
    readonly property int listSpacing: 4

    // ===== Search Engines =====
    /**
     * Get the icon path for a search engine by name
     * Maps logical icon names to file paths within the assets directory
     * @param iconName The logical name of the icon (e.g., "brave", "google")
     * @returns The resolved file path, or empty string if not found
     */
    function getSearchEngineIcon(iconName) {
        const basePath = Qt.resolvedUrl("./assets/");
        const iconMap = {
            "brave": basePath + "brave-browser-icon.png",
            "openai": basePath + "openai-icon.png",
            "youtube": basePath + "youtube-color-icon.png",
            "reddit": basePath + "reddit-icon.png",
            "wikipedia": basePath + "wikipedia-icon.png",
            "google": basePath + "google-color-icon.png"
        };
        return iconMap[iconName] || "";
    }

    /**
     * Configured search engines with metadata and enabled status
     * Each engine requires: name, url template, icon, description, and enabled flag
     */
    readonly property var searchEngines: [
        {
            name: "Brave Search",
            url: "https://search.brave.com/search?q=",
            icon: getSearchEngineIcon("brave"),
            description: "Brave Search - Private Search",
            enabled: true
        },
        {
            name: "ChatGPT",
            url: "https://chat.openai.com/?model=gpt-5&q=",
            icon: getSearchEngineIcon("openai"),
            description: "ChatGPT AI Assistant",
            enabled: true
        },
        {
            name: "YouTube",
            url: "https://www.youtube.com/results?search_query=",
            icon: getSearchEngineIcon("youtube"),
            description: "YouTube Videos",
            enabled: true
        },
        {
            name: "Reddit",
            url: "https://www.reddit.com/search/?q=",
            icon: getSearchEngineIcon("reddit"),
            description: "Reddit Posts Search",
            enabled: true
        },
        {
            name: "Wikipedia",
            url: "https://en.wikipedia.org/w/index.php?search=",
            icon: getSearchEngineIcon("wikipedia"),
            description: "Wikipedia Articles",
            enabled: true
        },
        {
            name: "Google",
            url: "https://www.google.com/search?q=",
            icon: getSearchEngineIcon("google"),
            description: "Google Search",
            enabled: true
        }
    ]

    /**
     * Get all currently enabled search engines
     * @returns Array of enabled search engine objects
     */
    function getEnabledSearchEngines() {
        return config.searchEngines.filter(engine => engine.enabled);
    }

    // ===== File Actions =====
    /**
     * Standard file action definitions used in file search results
     * Each action has a display name and associated icon identifier
     */
    readonly property var fileActionDefinitions: [
        {
            name: "Open",
            icon: "folder-open"
        },
        {
            name: "Open Folder",
            icon: "folder"
        },
        {
            name: "Copy Path",
            icon: "content-copy"
        }
    ]

    // ===== Empty State Messages =====
    /**
     * User-facing messages for empty states in different launcher views
     * Each tab provides contextual messages for empty and search scenarios
     */
    readonly property var emptyStateMessages: {
        "apps": {
            "empty": "No applications found",
            "search": "No applications match your search"
        },
        "files": {
            "empty": "Directory is empty",
            "search": "No files found"
        },
        "websearch": {
            "empty": "No search engines configured",
            "search": "Type to search..."
        }
    }

    // ===== Terminal Settings =====
    /**
     * System terminal command and arguments for executing applications
     * Used when launching applications with terminal requirement
     */
    readonly property string terminalCommand: "kitty"
    readonly property var terminalArgs: ["sh", "-c"]
}

```

## File: `modules/quickshell/config/modules/lockscreen/components/BlurredWallpaper.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import Qt5Compat.GraphicalEffects
import Quickshell
import qs.services
import qs.components.animations

/**
 * BlurredWallpaper
 *
 * Renders a stretched and blurred wallpaper across multiple monitors.
 * Automatically handles scaling to cover total desktop dimensions while
 * maintaining aspect ratio. Supports dynamic blur toggling and darkening overlay.
 *
 * Usage: Provide monitor geometry (screenX/Y, screenWidth/Height) and total
 * desktop dimensions. The component clips content to the monitor boundaries.
 */
Item {
    id: root
    
    // ============ REQUIRED PROPERTIES ============
    required property real screenX
    required property real screenY
    required property real screenWidth
    required property real screenHeight
    
    // ============ OPTIONAL PROPERTIES ============
    property int blurRadius: 64
    property bool showBlur: true
    property real darkenOpacity: 0.3
    
    // ============ POSITIONING ============
    // Calculate positioning using the centralized ScreenGeometry service
    property var imagePosition: calculatePosition()
    
    function calculatePosition() {
        if (wallpaperImage.status === Image.Ready && wallpaperImage.sourceSize.width > 0) {
            return ScreenGeometry.calculateScreenPositioning(
                wallpaperImage.sourceSize.width,
                wallpaperImage.sourceSize.height,
                screenX,
                screenY
            );
        }
        return { scale: 1, x: 0, y: 0, scaledWidth: 0, scaledHeight: 0 };
    }
    
    // Recalculate when screen position changes
    onScreenXChanged: imagePosition = calculatePosition()
    onScreenYChanged: imagePosition = calculatePosition()
    onScreenWidthChanged: imagePosition = calculatePosition()
    onScreenHeightChanged: imagePosition = calculatePosition()
    
    // ============ WALLPAPER SOURCE ============
    readonly property string wallpaperUrl: WallpaperService.currentWallpaperPath ? "file://" + WallpaperService.currentWallpaperPath : ""

    clip: true

    // ============ WALLPAPER IMAGE ============
    // Single image component used for both direct display and blur source.
    // Visibility and rendering mode controlled by showBlur property.
    Image {
        id: wallpaperImage
        x: root.imagePosition.x
        y: root.imagePosition.y
        width: root.imagePosition.scaledWidth
        height: root.imagePosition.scaledHeight
        
        source: root.wallpaperUrl
        fillMode: Image.Stretch
        smooth: true
        antialiasing: true
        cache: true
        asynchronous: false  // Keep synchronous to avoid flicker on lock screen
        visible: !root.showBlur
        
        // Recalculate position when image loads
        onStatusChanged: {
            if (status === Image.Ready) {
                root.imagePosition = root.calculatePosition();
            }
        }
    }
    
    // ============ BLUR EFFECT ============
    // FastBlur effect using the single wallpaper image as source.
    // Only visible when showBlur is enabled.
    FastBlur {
        x: root.imagePosition.x
        y: root.imagePosition.y
        width: root.imagePosition.scaledWidth
        height: root.imagePosition.scaledHeight
        radius: root.blurRadius
        visible: root.showBlur
        
        source: ShaderEffectSource {
            sourceItem: wallpaperImage
            hideSource: true
        }
    }
    
    // ============ DARKENING OVERLAY ============
    // Semi-transparent black layer for improved readability on top of wallpaper
    Rectangle {
        anchors.fill: parent
        color: "black"
        opacity: root.darkenOpacity
    }
    
    // ============ REACTIVE UPDATES ============
    // Recalculate positioning when desktop geometry changes
    Connections {
        target: ScreenGeometry
        
        function onTotalDesktopWidthChanged() {
            if (wallpaperImage.status === Image.Ready) {
                root.imagePosition = root.calculatePosition();
            }
        }
        
        function onTotalDesktopHeightChanged() {
            if (wallpaperImage.status === Image.Ready) {
                root.imagePosition = root.calculatePosition();
            }
        }
    }
    
    // Recalculate when wallpaper changes
    Connections {
        target: WallpaperService
        
        function onWallpaperChanged() {
            // Image will recalculate on statusChanged when new image loads
        }
    }
    
    // ============ INITIALIZATION ============
    Component.onCompleted: {
        // Force initial calculation
        if (wallpaperImage.status === Image.Ready) {
            imagePosition = calculatePosition();
        }
    }
}

```

## File: `modules/quickshell/config/modules/lockscreen/components/LockContext.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import Quickshell.Services.Pam

// LockContext: Manages shared state and PAM authentication across all lock surfaces
Scope {
    id: root

    // Signals
    signal unlocked()
    signal authenticationFailed()

    // State properties - shared across all surfaces
    property string currentText: ""
    property bool unlockInProgress: false
    property bool showFailure: false

    // Clear failure message when user starts typing
    onCurrentTextChanged: {
        if (currentText.length > 0) {
            showFailure = false;
            failureTimer.stop();
        }
    }

    // Timer to auto-hide failure message after 3 seconds
    Timer {
        id: failureTimer
        interval: 3000
        repeat: false
        onTriggered: {
            root.showFailure = false;
        }
    }

    // Try to unlock with the current password
    function tryUnlock() {
        if (currentText === "" || unlockInProgress) return;
        
        unlockInProgress = true;
        showFailure = false;
        failureTimer.stop();
        pam.start();
    }

    // Clear the input field
    function clearInput() {
        currentText = "";
        showFailure = false;
        failureTimer.stop();
    }

    // Handle authentication failure
    function handleAuthFailure(errorMessage) {
        currentText = "";
        showFailure = true;
        unlockInProgress = false;
        failureTimer.start();
        authenticationFailed();
    }

    // PAM authentication context
    PamContext {
        id: pam

        // Use custom pam config in pam/password.conf
        configDirectory: Qt.resolvedUrl("../pam")
        config: "password.conf"

        // Handle PAM messages (password prompt)
        onPamMessage: {
            if (this.responseRequired) {
                this.respond(root.currentText);
            }
        }

        // Handle authentication completion
        onCompleted: function(result) {
            if (result === PamResult.Success) {
                root.unlocked();
                root.unlockInProgress = false;
            } else {
                root.handleAuthFailure("PAM returned: " + result);
            }
        }

        // Handle errors
        onError: function(error) {
            root.handleAuthFailure("PAM error: " + error);
        }
    }
}

```

## File: `modules/quickshell/config/modules/lockscreen/components/Surface.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Quickshell
import qs.settings
import qs.services
import qs.components.animations

/**
 * Surface
 *
 * Renders the lock screen UI for a single monitor. Only the main monitor displays
 * interactive elements (time, date, password input, splash text). Secondary monitors
 * show only the blurred wallpaper background.
 *
 * Handles password input with real-time validation feedback, focus management,
 * and keyboard shortcuts (Escape to clear).
 *
 * Requires: context (LockContext) and screenInfo (monitor geometry data)
 */
Item {
    id: root
    
    // ============ REQUIRED PROPERTIES ============
    required property var context
    required property var screenInfo
    
    // ============ COMPUTED PROPERTIES ============
    // Determines if UI elements should be visible (only on main monitor)
    readonly property bool isMainMonitor: screenInfo?.name === Config.mainMonitorId

    // Cache screen geometry from service (screen might not be in geometry cache on first access, use fallback)
    property var screenGeom: screenInfo ? ScreenGeometry.getGeometry(screenInfo.name) : { x: 0, y: 0, width: 1920, height: 1080 }
    
    // Update screenGeom when screenInfo becomes available
    onScreenInfoChanged: {
        if (screenInfo) {
            screenGeom = ScreenGeometry.getGeometry(screenInfo.name);
        }
    }
    
    // Reactive updates when screen geometries change
    Connections {
        target: ScreenGeometry
        
        function onScreenGeometriesChanged() {
            if (root.screenInfo) {
                root.screenGeom = ScreenGeometry.getGeometry(root.screenInfo.name);
            }
        }
    }

    // ============ WALLPAPER BACKGROUND ============
    // Stretched and blurred wallpaper with darkening overlay for all monitors
    BlurredWallpaper {
        anchors.fill: parent
        screenX: root.screenGeom.x
        screenY: root.screenGeom.y
        screenWidth: root.screenGeom.width
        screenHeight: root.screenGeom.height
        blurRadius: 64
        showBlur: true
        darkenOpacity: Config.lockscreenDimming
    }

    // ============ INTERACTIVE UI LAYER ============
    // Input field, time display, and keyboard shortcuts (main monitor only)
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        visible: root.isMainMonitor
        
        onPressed: passwordInput.forceActiveFocus()
        
        // Keyboard shortcuts: Escape clears input, any key refocuses input field
        Keys.onPressed: event => {
            if (event.key === Qt.Key_Escape) {
                root.context.clearInput();
            }
            passwordInput.forceActiveFocus();
        }

        // ============ MAIN LAYOUT ============
        Item {
            anchors.fill: parent

            // ============ TIME AND DATE DISPLAY ============
            // Positioned above password input; time has gradient, date is subdued
            Column {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: passwordBox.top
                anchors.bottomMargin: 160
                spacing: 20

                // ============ TIME DISPLAY ============
                // Large gradient text showing current time
                Item {
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: timeText.width
                    height: timeText.height

                    Text {
                        id: timeText
                        text: Time.time
                        font.pixelSize: 128
                        font.weight: Font.Bold
                        visible: false
                    }

                    LinearGradient {
                        anchors.fill: timeText
                        source: timeText
                        start: Qt.point(0, 0)
                        end: Qt.point(timeText.width, timeText.height)
                        gradient: Gradient {
                            GradientStop { position: 0.0; color: Colors.blue }
                            GradientStop { position: 0.3; color: Colors.mauve }
                            GradientStop { position: 0.7; color: Colors.pink }
                            GradientStop { position: 1.0; color: Colors.sky }
                        }
                    }
                }

                // ============ DATE DISPLAY ============
                // Smaller subdued text showing formatted date
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: Time.fulldate
                    color: Colors.textSubdued
                    font.pixelSize: 22
                    font.weight: Font.Light
                }
            }

            // ============ PASSWORD INPUT FIELD ============
            // Rounded rectangle with animated border state feedback
            Rectangle {
                id: passwordBox
                anchors.centerIn: parent
                anchors.topMargin: 100
                width: 350
                height: 60
                color: Colors.darken_20
                border.width: 3
                radius: height / 2
                
                // Dynamic border color based on authentication state:
                // Red = authentication failed, Sky = active/typing, Blue = default
                border.color: {
                    if (root.context.showFailure) {
                        return Colors.red;
                    }
                    if (passwordInput.activeFocus || root.context.currentText.length > 0) {
                        return Colors.sky;
                    }
                    return Colors.blue;
                }
                
                // Smooth color transitions using animation config
                Behavior on border.color {
                    ColorAnimation {
                        duration: AnimationConfig.normal
                        easing.type: AnimationConfig.defaultEasing
                    }
                }

                TextInput {
                    id: passwordInput
                    anchors.fill: parent
                    anchors.leftMargin: 30
                    anchors.rightMargin: 30
                    color: Colors.text
                    font.pixelSize: 18
                    font.weight: Font.Medium
                    echoMode: TextInput.Password
                    passwordCharacter: "●"
                    enabled: !root.context.unlockInProgress
                    verticalAlignment: TextInput.AlignVCenter
                    horizontalAlignment: TextInput.AlignHCenter
                    focus: true

                    onAccepted: root.context.tryUnlock()
                    onTextChanged: root.context.currentText = text

                    // Maintain focus to prevent keyboard dismissal and ensure input capture
                    onActiveFocusChanged: {
                        if (!activeFocus) {
                            Qt.callLater(function() {
                                if (visible && enabled) {
                                    forceActiveFocus();
                                }
                            });
                        }
                    }

                    // Synchronize input text with shared context for cross-monitor coherence
                    Connections {
                        target: root.context
                        function onCurrentTextChanged() {
                            if (passwordInput.text !== root.context.currentText) {
                                passwordInput.text = root.context.currentText;
                            }
                        }
                    }
                }
            }

            // ============ SPLASH TEXT ============
            // System information or help text at bottom (configurable)
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 60
                width: passwordBox.width
                wrapMode: Text.WordWrap
                text: HyprStats.splash
                horizontalAlignment: Text.AlignHCenter
                color: Colors.textSubdued
                font.pixelSize: Fonts.p
                visible: Config.showSplashOnLockscreen
            }
        }
    }

    // ============ INITIALIZATION ============
    // Ensure password input has focus when component is fully loaded
    Component.onCompleted: {
        if (screenInfo) {
            screenGeom = ScreenGeometry.getGeometry(screenInfo.name);
        }
        passwordInput.forceActiveFocus();
    }
}

```

## File: `modules/quickshell/config/modules/lockscreen/pam/password.conf`

```conf
auth required pam_unix.so
```

## File: `modules/quickshell/config/modules/lockscreen/Lock.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import Quickshell.Wayland
import qs.modules.lockscreen.components
import qs.settings

ShellRoot {
    id: lockRoot
    reloadableId: "lockscreenModule"

    // Create lock context to manage state across all screens
    LockContext {
        id: lockContext

        onUnlocked: {
            // Unlock the session before closing
            sessionLock.locked = false;
            // Close the lockscreen with smooth animation
            AppState.unlock();
        }
    }

    // Session lock - creates surfaces for all screens
    WlSessionLock {
        id: sessionLock
        locked: AppState.lockscreenVisible

        WlSessionLockSurface {
            id: lockSurface
            color: "transparent"
            
            Surface {
                anchors.fill: parent
                context: lockContext
                screenInfo: lockSurface.screen
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/lockscreen/LockscreenOverlay.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import Quickshell.Wayland
import qs.settings
import qs.services
import qs.modules.lockscreen.components

// LockscreenOverlay: Full-screen blurred wallpaper that fades in/out
ShellRoot {
    id: overlayRoot

    Variants {
        model: Quickshell.screens

        delegate: PanelWindow {
            id: overlayWindow
            required property var modelData
            
            screen: modelData
            exclusionMode: ExclusionMode.Ignore
            
            anchors {
                top: true
                bottom: true
                left: true
                right: true
            }

            color: "transparent"

            // Cache screen geometry to avoid repeated property bindings
            property var screenGeom: ScreenGeometry.getGeometry(modelData.name)

            // Wayland layer configuration
            Component.onCompleted: {
                if (this.WlrLayershell != null) {
                    this.WlrLayershell.layer = WlrLayer.Overlay;
                    this.WlrLayershell.keyboardFocus = WlrKeyboardFocus.Exclusive;
                }
            }

            // Background container
            Rectangle {
                id: background
                anchors.fill: parent
                color: Colors.bgDark
                
                // Fade in when overlay becomes visible
                opacity: AppState.preLockOverlayVisible ? 1.0 : 0.0
                
                Behavior on opacity {
                    NumberAnimation {
                        duration: 300
                        easing.type: Easing.OutCubic
                    }
                }

                // Blurred wallpaper using the reusable component
                BlurredWallpaper {
                    anchors.fill: parent
                    screenX: overlayWindow.screenGeom.x
                    screenY: overlayWindow.screenGeom.y
                    screenWidth: overlayWindow.screenGeom.width
                    screenHeight: overlayWindow.screenGeom.height
                    blurRadius: 64
                    showBlur: true
                    darkenOpacity: AppState.preLockOverlayVisible ? Config.lockscreenDimming : 0.0
                    
                    Behavior on darkenOpacity {
                        NumberAnimation {
                            duration: 300
                            easing.type: Easing.OutCubic
                        }
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/mangowcLayoutSwitcher/BarWidget.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import qs.settings
import qs.modules.bar.components
// use DwlService to detect Mango/dwl compositor presence


Item {
    id: root
    
    property var pluginApi: null
    property ShellScreen screen
    property string widgetId: ""
    property string section: ""
    visible: DwlService.dwlAvailable
    
    // Data binding
    readonly property string layoutCode: (pluginApi?.mainInstance?.monitorLayouts ?? {})[screen?.name] || "?"
    readonly property string layoutName: pluginApi?.mainInstance?.getLayoutName(layoutCode) || layoutCode
    
    // Icon mapping
    readonly property var iconMap: ({
        "T": "layout-sidebar",
        "M": "rectangle",
        "S": "carousel-horizontal",
        "G": "layout-grid",
        "K": "versions",
        "RT": "layout-sidebar-right",
        "CT": "layout-distribute-vertical",
        "TG": "layout-dashboard",
        "VT": "layout-rows",
        "VS": "carousel-vertical",
        "VG": "grid-dots",
        "VK": "chart-funnel"
    })
    
    implicitWidth: background.width
    implicitHeight: background.height
    
    Background {
        id: background
        chipColor: Colors.bgBlur
        chipRadius: Config.barHeight / 3
        
        Row {
            anchors.centerIn: parent
            spacing: 8
            
            Text {
                color: Colors.text
                font.pixelSize: parent.parent.height * 0.6
                font.family: Fonts.iconFont
                text: root.iconMap[root.layoutCode] || "layout-board"
                anchors.verticalCenter: parent.verticalCenter
            }
            
            Text {
                color: Colors.text
                font.pixelSize: parent.parent.height * 0.35
                text: root.layoutName
                anchors.verticalCenter: parent.verticalCenter
                visible: parent.width > 100
            }
        }
    }
    
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            if (pluginApi) pluginApi.openPanel(screen, root)
        }
        onRightClicked: {
            if (pluginApi) pluginApi.openPanel(screen, root)
        }
    }
}

```

## File: `modules/quickshell/config/modules/mangowcLayoutSwitcher/MangowcLayoutSwitcher.qml`

```qml
import QtQuick
import Quickshell
import Quickshell.Io
import qs.settings

Item {
    id: root
    
    property var pluginApi: null
    
    visible: true
    
    // Toggle function for IPC
    IpcHandler {
        target: "plugin:mangowc-layout-switcher"
        function toggle() {
            if (pluginApi) {
                pluginApi.withCurrentScreen(screen => {
                    pluginApi.openPanel(screen)
                })
            }
        }
    }
    
    Component.onCompleted: {
        refresh()
    }
    
    // Public data
    property var monitorLayouts: ({})
    property var availableLayouts: []
    property var availableMonitors: []
    
    // Layout name mapping based on 'mmsg -L' output
    readonly property var layoutNames: ({
        "S": "Scroller",
        "T": "Tile",
        "G": "Grid",
        "M": "Monocle",
        "K": "Deck",
        "CT": "Center Tile",
        "RT": "Right Tile",
        "VS": "Vertical Scroller",
        "VT": "Vertical Tile",
        "VG": "Vertical Grid",
        "VK": "Vertical Deck",
        "TG": "Tgmix"
    })
    
    function getLayoutName(code) {
        if (root.layoutNames[code]) return root.layoutNames[code]
        return code.replace(/_/g, " ").replace(/\b\w/g, c => c.toUpperCase())
    }
    
    // Internal logic
    QtObject {
        id: internal
        function updateLayout(monitor, layout) {
            if (layout && monitor) {
                var cleanLayout = layout.trim()
                if (root.monitorLayouts[monitor] !== cleanLayout) {
                    root.monitorLayouts[monitor] = cleanLayout
                    root.monitorLayoutsChanged()
                }
            }
        }
    }
    
    // Process: Event watcher for realtime updates
    Process {
        id: eventWatcher
        command: ["mmsg", "-w"]
        running: true
        
        stdout: SplitParser {
            onRead: line => {
                if (line.includes(" layout ")) {
                    var match = line.match(/^(\S+)\s+layout\s+(\S+)$/)
                    if (match) {
                        internal.updateLayout(match[1], match[2])
                    }
                }
            }
        }
    }
    
    // Process: Load available layouts
    Process {
        id: layoutsQuery
        command: ["mmsg", "-L"]
        running: false
        property var tempArray: []
        
        stdout: SplitParser {
            onRead: line => {
                const code = line.trim()
                if (code && !layoutsQuery.tempArray.some(l => l.code === code)) {
                    layoutsQuery.tempArray.push({ code: code, name: root.getLayoutName(code) })
                }
            }
        }
        
        onExited: exitCode => {
            if (exitCode === 0) root.availableLayouts = layoutsQuery.tempArray
            layoutsQuery.tempArray = []
        }
    }
    
    // Process: Load monitors
    Process {
        id: monitorsQuery
        command: ["mmsg", "-O"]
        running: false
        property var tempArray: []
        
        stdout: SplitParser {
            onRead: line => {
                const m = line.trim()
                if (m && !monitorsQuery.tempArray.includes(m)) {
                    monitorsQuery.tempArray.push(m)
                }
            }
        }
        
        onExited: exitCode => {
            if (exitCode === 0) root.availableMonitors = monitorsQuery.tempArray
            monitorsQuery.tempArray = []
        }
    }
    
    // Public API
    function refresh() {
        layoutsQuery.running = true
        monitorsQuery.running = true
        if (!eventWatcher.running) eventWatcher.running = true
    }
    
    function setLayout(monitorName, layoutCode) {
        if (!monitorName || !layoutCode) return
        Quickshell.execDetached(["mmsg", "-o", monitorName, "-s", "-l", layoutCode])
        internal.updateLayout(monitorName, layoutCode)
    }
    
    function setLayoutGlobally(layoutCode) {
        root.availableMonitors.forEach(m => setLayout(m, layoutCode))
        // Show notification using quickshell's notification system if available
        console.log("Global layout set: " + layoutCode)
    }
}

```

## File: `modules/quickshell/config/modules/mangowcLayoutSwitcher/Panel.qml`

```qml
import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.settings
import qs.components.animations

Item {
    id: root
    
    property var pluginApi: null
    property ShellScreen currentScreen
    readonly property var geometryPlaceholder: root
    readonly property bool allowAttach: true
    
    anchors.fill: parent
    
    // Settings
    property var cfg: pluginApi?.pluginSettings || {}
    property var defaults: pluginApi?.manifest?.metadata?.defaultSettings || {}
    
    // Persisted monitor order
    property var savedMonitorOrder: cfg.monitorOrder ?? defaults.monitorOrder ?? []
    
    // Ordered monitor list
    property var orderedMonitors: {
        var all = (pluginApi && pluginApi.mainInstance && pluginApi.mainInstance.availableMonitors)
            ? pluginApi.mainInstance.availableMonitors
            : []
        var order = root.savedMonitorOrder
        
        if (!order || order.length === 0) return all
        
        var result = []
        for (var i = 0; i < order.length; i++) {
            if (all.indexOf(order[i]) !== -1) result.push(order[i])
        }
        for (var j = 0; j < all.length; j++) {
            if (order.indexOf(all[j]) === -1) result.push(all[j])
        }
        return result
    }
    
    function applyMonitorReorder(fromIndex, toIndex) {
        if (fromIndex === toIndex) return
        var newOrder = root.orderedMonitors.slice()
        var item = newOrder.splice(fromIndex, 1)[0]
        newOrder.splice(toIndex, 0, item)
        
        if (pluginApi) {
            pluginApi.pluginSettings.monitorOrder = newOrder
            pluginApi.saveSettings()
        }
        root.savedMonitorOrder = newOrder
    }
    
    // Data & mapping
    readonly property string panelMonitor: {
        if (currentScreen && currentScreen.name) return currentScreen.name
        if (pluginApi && pluginApi.currentScreen && pluginApi.currentScreen.name) return pluginApi.currentScreen.name
        if (root.orderedMonitors.length > 0) return root.orderedMonitors[0]
        return ""
    }
    
    readonly property var layouts: (pluginApi && pluginApi.mainInstance && pluginApi.mainInstance.availableLayouts)
        ? pluginApi.mainInstance.availableLayouts
        : []
    
    readonly property string activeLayout: {
        var layoutsDict = (pluginApi && pluginApi.mainInstance && pluginApi.mainInstance.monitorLayouts)
            ? pluginApi.mainInstance.monitorLayouts
            : {}
        return layoutsDict[root.selectedMonitors[0] || root.panelMonitor] || ""
    }
    
    readonly property var iconMap: ({
        "T": "layout-sidebar",
        "M": "rectangle",
        "S": "carousel-horizontal",
        "G": "layout-grid",
        "K": "versions",
        "RT": "layout-sidebar-right",
        "CT": "layout-distribute-vertical",
        "TG": "layout-dashboard",
        "VT": "layout-rows",
        "VS": "carousel-vertical",
        "VG": "grid-dots",
        "VK": "chart-funnel"
    })
    
    property bool applyToAll: false
    property var selectedMonitors: []
    property real contentPreferredWidth: 360
    property real contentPreferredHeight: panelContent.implicitHeight + 24
    
    function toggleMonitor(monitorName) {
        if (root.selectedMonitors.includes(monitorName)) {
            root.selectedMonitors = root.selectedMonitors.filter(m => m !== monitorName)
        } else {
            root.selectedMonitors = root.selectedMonitors.concat([monitorName])
        }
    }
    
    Component.onCompleted: {
        if (pluginApi && pluginApi.mainInstance) {
            pluginApi.mainInstance.refresh()
        }
    }
    
    // Background Click Catcher
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (pluginApi) pluginApi.closePanel()
        }
    }
    
    // Panel Window Surface (glassomorphic)
    Rectangle {
        anchors.centerIn: parent
        width: root.contentPreferredWidth
        height: root.contentPreferredHeight
        color: Colors.bg_1Blur
        radius: 12
        border.width: 1
        border.color: Colors.bg_4Blur
        
        // highlight gradient for glass effect
        Rectangle {
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            height: parent.height * 0.28
            color: "transparent"
            opacity: 0.6
            radius: 12
            Gradient {
                GradientStop { position: 0.0; color: Qt.rgba(1,1,1,0.06) }
                GradientStop { position: 1.0; color: Qt.rgba(0,0,0,0.02) }
            }
            z: 1
        }

        ColumnLayout {
            id: panelContent
            anchors.fill: parent
            anchors.margins: 16
            spacing: 12
            
            // Header
            Rectangle {
                Layout.fillWidth: true
                implicitHeight: headerRow.implicitHeight + 16
                color: "transparent"
                
                RowLayout {
                    id: headerRow
                    anchors.fill: parent
                    anchors.margins: 8
                    spacing: 8
                    
                    Text {
                        text: "layout-grid"
                        font.pixelSize: 20
                        font.family: Fonts.iconFont
                        color: Colors.text
                    }
                    
                    Text {
                        text: "Switch Layout"
                        font.pixelSize: 18
                        font.weight: Font.Bold
                        color: Colors.text
                        Layout.fillWidth: true
                    }
                }
            }
            
            // Apply to all toggle
            RowLayout {
                Layout.fillWidth: true
                
                Text {
                    text: "Apply to all monitors"
                    font.pixelSize: 14
                    color: Colors.textSubdued
                    Layout.fillWidth: true
                }
                
                Rectangle {
                    width: 40
                    height: 24
                    radius: 12
                    color: root.applyToAll ? Colors.blue : Colors.bg_2
                    border.width: 1
                    border.color: root.applyToAll ? Colors.blue : Colors.bg_2
                    
                    Rectangle {
                        width: 18
                        height: 18
                        radius: 9
                        color: Colors.bg
                        anchors.verticalCenter: parent.verticalCenter
                        x: root.applyToAll ? parent.width - width - 2 : 2
                        Behavior on x { NumberAnimation { duration: 150 } }
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        onClicked: root.applyToAll = !root.applyToAll
                    }
                }
            }
            
            // Monitor Selector
            ColumnLayout {
                Layout.fillWidth: true
                spacing: 8
                opacity: root.applyToAll ? 0.6 : 1.0
                enabled: !root.applyToAll
                
                RowLayout {
                    Layout.fillWidth: true
                    spacing: 8
                    
                    Text {
                        text: "Select monitors"
                        font.pixelSize: 14
                        color: Colors.textSubdued
                        Layout.fillWidth: true
                    }
                    
                    Text {
                        text: "grip-vertical"
                        font.pixelSize: 12
                        font.family: Fonts.iconFont
                        color: Colors.textSubdued
                        opacity: 0.5
                    }
                }
                
                // Monitor chips
                Flow {
                    Layout.fillWidth: true
                    spacing: 8
                    
                    Repeater {
                        model: root.orderedMonitors
                        
                        delegate: Rectangle {
                            id: monitorChip
                            required property int index
                            required property string modelData
                            
                            width: chipRow.implicitWidth + 24
                            height: 32
                            
                            property bool isSelected: root.applyToAll || root.selectedMonitors.includes(modelData)
                            
                            color: isSelected ? Colors.blue : Colors.bg_1
                            radius: 8
                            border.width: 2
                            border.color: isSelected ? Colors.blue : Colors.bg_2
                            
                            RowLayout {
                                id: chipRow
                                anchors.centerIn: parent
                                spacing: 6
                                
                                Text {
                                    text: "grip-vertical"
                                    font.pixelSize: 12
                                    font.family: Fonts.iconFont
                                    color: isSelected ? Colors.bg : Colors.textSubdued
                                }
                                
                                Text {
                                    visible: isSelected
                                    text: "check"
                                    font.pixelSize: 12
                                    font.family: Fonts.iconFont
                                    color: Colors.bg
                                }
                                
                                Text {
                                    text: modelData
                                    color: isSelected ? Colors.bg : Colors.text
                                    font.pixelSize: 12
                                    font.weight: Font.Medium
                                }
                            }
                            
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: root.toggleMonitor(modelData)
                            }
                        }
                    }
                }
            }
            
            // Layout Grid
            Flow {
                Layout.fillWidth: true
                Layout.fillHeight: true
                spacing: 8
                
                Repeater {
                    model: root.layouts
                    
                    delegate: Rectangle {
                        id: layoutBtn
                        width: 80
                        height: 64
                        
                        property bool isActive: {
                            if (root.selectedMonitors.length === 0) {
                                return modelData.code === root.activeLayout
                            } else if (root.selectedMonitors.length === 1) {
                                var mon = root.selectedMonitors[0]
                                var dict = (pluginApi && pluginApi.mainInstance && pluginApi.mainInstance.monitorLayouts)
                                    ? pluginApi.mainInstance.monitorLayouts
                                    : {}
                                var monLayout = dict[mon] || ""
                                return modelData.code === monLayout
                            }
                            return false
                        }
                        property bool isHovered: false
                        
                        color: isActive ? Colors.blue : Colors.bg_1
                        radius: 8
                        
                        ColumnLayout {
                            anchors.centerIn: parent
                            spacing: 4
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: root.iconMap[modelData.code] || "layout-board"
                                font.pixelSize: 20
                                font.family: Fonts.iconFont
                                color: layoutBtn.isActive ? Colors.bg : Colors.text
                            }
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: modelData.name
                                color: layoutBtn.isActive ? Colors.bg : Colors.text
                                font.pixelSize: 11
                                font.weight: Font.Medium
                                wrapMode: Text.WordWrap
                                maximumWidth: 70
                            }
                        }
                        
                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            cursorShape: Qt.PointingHandCursor
                            
                            onEntered: layoutBtn.isHovered = true
                            onExited: layoutBtn.isHovered = false
                            
                            onClicked: {
                                if (root.applyToAll) {
                                    pluginApi.mainInstance.setLayoutGlobally(modelData.code)
                                } else if (root.selectedMonitors.length > 0) {
                                    root.selectedMonitors.forEach(m => {
                                        pluginApi.mainInstance.setLayout(m, modelData.code)
                                    })
                                } else {
                                    pluginApi.mainInstance.setLayout(root.panelMonitor, modelData.code)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/onScreenDisplays/components/DismissibleSlideAnimation.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import qs.components.animations

/**
 * Slide-in/slide-out animation with interactive drag-to-dismiss
 * 
 * Coordinates slide animations and drag interactions on a target item. Provides:
 * - Smooth fly-in animation with bounce effect
 * - Drag-to-dismiss gesture recognition and snap-back
 * - Multi-button mouse support for custom actions
 * 
 * Basic usage:
 *   DismissibleSlideAnimation {
 *       target: myItem
 *       onDismissed: cleanup()
 *   }
 *   component.startFlyIn()
 */
Item {
    id: root

    required property Item target
    
    anchors.fill: parent

    // Animation state
    property real slideOffset: 0
    property real dragDistance: 0
    property bool dismissing: false
    readonly property bool dragging: mouseArea.dragging
    
    // Gesture configuration
    property real dragThreshold: 100
    
    // Fly-in animation configuration
    property real flyInStartOffset: 420
    property real flyInOvershoot: -10
    property int flyInDuration: AnimationConfig.slow
    property int flyInBounceDuration: AnimationConfig.fast
    property int flyInOpacityDuration: AnimationConfig.normal
    
    // Dismiss animation configuration
    property real dismissEndOffset: 500
    property int dismissDuration: AnimationConfig.normal + 50
    property int dismissOpacityDuration: AnimationConfig.normal
    
    // Snap-back animation configuration
    property int snapBackDuration: AnimationConfig.normal
    
    // Signals for lifecycle and user interaction
    signal dismissed()
    signal flyInStarted()
    signal flyInCompleted()
    signal clicked(var mouse)
    signal rightClicked(var mouse)
    signal middleClicked(var mouse)
    
    // MouseArea for capturing and processing user interactions
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.MiddleButton | Qt.RightButton
        propagateComposedEvents: true
        z: 0
        preventStealing: true
        
        // Drag tracking
        property real startX: 0
        property real startY: 0
        property real currentDragOffset: 0
        property bool dragging: false
        property bool isDragValid: false
        
        onPressed: (mouse) => {
            if (mouse.button === Qt.LeftButton && !root.dismissing) {
                // Store absolute mouse position to handle transforms correctly
                var globalPos = mapToItem(null, mouse.x, mouse.y)
                startX = globalPos.x
                startY = globalPos.y
                currentDragOffset = 0
                dragging = true
                isDragValid = false
                // Halt all animations when user initiates drag
                root._flyInAnimation.stop()
                root._snapBackAnimation.stop()
                root._dismissAnimation.stop()
            }
        }
        
        onPositionChanged: (mouse) => {
            if (dragging && !root.dismissing) {
                // Use absolute coordinates to avoid feedback from transforms
                var globalPos = mapToItem(null, mouse.x, mouse.y)
                const diffX = globalPos.x - startX
                const diffY = Math.abs(globalPos.y - startY)
                
                // Require primarily horizontal movement; cancel if vertical exceeds threshold
                if (diffY > 30 && diffX < 20) {
                    dragging = false
                    isDragValid = false
                    root.startSnapBack()
                    return
                }
                
                // Mark as valid drag only after minimum movement threshold
                if (diffX > 5) {
                    isDragValid = true
                    currentDragOffset = diffX
                    root.dragDistance = Math.max(0, diffX)
                } else if (diffX < 0) {
                    // Prevent leftward drag
                    root.dragDistance = 0
                    currentDragOffset = 0
                }
            }
        }
        
        onReleased: (mouse) => {
            // Middle-click always triggers dismiss
            if (mouse.button === Qt.MiddleButton) {
                root.middleClicked(mouse)
                root.startDismiss()
                return
            }
            
            // Right-click for custom actions only
            if (mouse.button === Qt.RightButton) {
                root.rightClicked(mouse)
                return
            }
            
            // Left-click: decide between dismiss or snap-back
            if (mouse.button === Qt.LeftButton) {
                const shouldDismiss = isDragValid && root.shouldDismissOnDrag()
                
                dragging = false
                isDragValid = false
                
                if (shouldDismiss) {
                    root.startDismiss()
                } else if (root.dragDistance > 0) {
                    root.startSnapBack()
                }
            }
        }
        
        onExited: {
            // Auto-dismiss or snap-back if mouse leaves during active drag
            if (dragging && isDragValid) {
                const shouldDismiss = root.shouldDismissOnDrag()
                
                dragging = false
                isDragValid = false
                
                if (shouldDismiss) {
                    root.startDismiss()
                } else if (root.dragDistance > 0) {
                    root.startSnapBack()
                }
            }
        }
        
        onClicked: (mouse) => {
            if (mouse.button === Qt.LeftButton) {
                root.clicked(mouse)
            }
        }
    }
    
    // Apply horizontal slide transform to target item
    property Translate _transform: Translate {
        x: root.slideOffset + root.dragDistance
    }
    
    Component.onCompleted: {
        if (target) {
            target.transform = _transform
        }
    }
    
    // Fly-in animation: slides in from right with bounce effect and fade-in
    property SequentialAnimation _flyInAnimation: SequentialAnimation {
        id: flyInAnimation
        
        ScriptAction {
            script: {
                root.slideOffset = root.flyInStartOffset
                root.flyInStarted()
            }
        }
        
        // Main slide with opacity fade-in
        ParallelAnimation {
            NumberAnimation {
                target: root
                property: "slideOffset"
                from: root.flyInStartOffset
                to: root.flyInOvershoot
                duration: root.flyInDuration
                easing.type: Easing.OutCubic
            }
            NumberAnimation {
                target: root.target
                property: "opacity"
                from: 0
                to: 1
                duration: root.flyInOpacityDuration
            }
        }
        
        // Bounce back to final position (overshoot recovery)
        NumberAnimation {
            target: root
            property: "slideOffset"
            from: root.flyInOvershoot
            to: 0
            duration: root.flyInBounceDuration
            easing.type: Easing.OutCubic
        }
        
        ScriptAction {
            script: root.flyInCompleted()
        }
    }
    
    // Snap-back animation: returns item to neutral position when drag threshold not met
    property NumberAnimation _snapBackAnimation: NumberAnimation {
        id: snapBackAnimation
        target: root
        property: "dragDistance"
        to: 0
        duration: root.snapBackDuration
        easing.type: Easing.OutCubic
        
        // Capture current position as animation starting point
        onStarted: {
            from = root.dragDistance
        }
        
        // Ensure clean state after animation completes
        onStopped: {
            root.dragDistance = 0
        }
    }
    
    // Dismiss animation: slides out to right with fade-out
    property SequentialAnimation _dismissAnimation: SequentialAnimation {
        id: dismissAnimation
        
        ScriptAction {
            script: {
                root.dismissing = true
                root._flyInAnimation.stop()
                // Consolidate drag offset into slide offset to continue from current position
                root.slideOffset = root.slideOffset + root.dragDistance
                root.dragDistance = 0
            }
        }
        
        // Parallel slide-out and fade-out
        ParallelAnimation {
            NumberAnimation {
                target: root
                property: "slideOffset"
                to: root.dismissEndOffset
                duration: root.dismissDuration
                easing.type: Easing.InCubic
            }
            NumberAnimation {
                target: root.target
                property: "opacity"
                to: 0
                duration: root.dismissOpacityDuration
            }
        }
        
        ScriptAction {
            script: root.dismissed()
        }
    }
    
    // Public API
    function startFlyIn() {
        if (!root._flyInAnimation.running) {
            root._flyInAnimation.start()
        }
    }
    
    function startDismiss() {
        if (!root._dismissAnimation.running && !mouseArea.dragging) {
            root._dismissAnimation.start()
        }
    }
    
    function startSnapBack() {
        if (!root._snapBackAnimation.running && !mouseArea.dragging && root.dragDistance > 0) {
            root._snapBackAnimation.start()
        }
    }
    
    function stopAnimations() {
        root._flyInAnimation.stop()
        root._dismissAnimation.stop()
        root._snapBackAnimation.stop()
    }
    
    function shouldDismissOnDrag() {
        return dragDistance > dragThreshold
    }
}
```

## File: `modules/quickshell/config/modules/onScreenDisplays/components/NotificationPopupItem.qml`

```qml
pragma ComponentBehavior: Bound

/**
 * Dismissible notification popup item with timer and drag-to-dismiss
 *
 * Displays a single notification in a draggable, auto-dismissing card. Features:
 * - Hover state tracking with background color transitions
 * - Auto-dismiss countdown timer with visual progress indicator
 * - Drag-to-dismiss gesture with snap-back fallback
 * - Action button support for notification interactions
 * - Smooth fly-in animation on creation
 */

import QtQuick
import QtQuick.Layouts
import qs.settings
import qs.services
import qs.components.notifications

Rectangle {
    id: root

    required property var notificationObject

    property real padding: 12
    property real cornerRadius: 12

    implicitHeight: contentLayout.implicitHeight + padding * 2
    implicitWidth: 380

    radius: cornerRadius
    color: hoverHandler.hovered ? Colors.bg : Colors.bgBlur

    HoverHandler {
        id: hoverHandler
    }

    // Slide animation with drag-to-dismiss gesture support
    DismissibleSlideAnimation {
        id: slideAnimation
        target: root

        onDismissed: {
            const notifId = root.notificationObject?.notificationId;
            if (notifId !== undefined) {
                Qt.callLater(() => {
                    Notifications.discardNotification(notifId);
                });
            }
        }

        onClicked: mouse => {
            // Invoke default action if it exists
            const actions = root.notificationObject?.actions || [];
            const defaultAction = actions.find(action => action.identifier === "default");
            if (defaultAction) {
                const notifId = root.notificationObject?.notificationId;
                if (notifId !== undefined) {
                    Notifications.attemptInvokeAction(notifId, "default");
                }
            }
        }

        onRightClicked: mouse => {
            const notifId = root.notificationObject?.notificationId;
            if (notifId !== undefined) {
                Notifications.discardNotification(notifId);
            }
        }
    }

    // Initial state for fly-in animation
    Component.onCompleted: {
        slideAnimation.startFlyIn();
    }

    // Expose drag and dismiss state for external access
    property real dragDistance: slideAnimation.dragDistance
    property bool dismissing: slideAnimation.dismissing
    property real dragThreshold: slideAnimation.dragThreshold
    readonly property bool isDragging: slideAnimation.dragging

    // Hover state tracking for timer pause/resume and background color change
    Connections {
        target: hoverHandler
        function onHoveredChanged() {
            const notifId = root.notificationObject?.notificationId;
            if (!notifId)
                return;
            if (hoverHandler.hovered) {
                // Pause timer when hovering to prevent auto-dismiss
                Notifications.cancelTimeout(notifId);
                if (root.timerAnimation?.running && !root.isDragging) {
                    root.timerAnimation.pause();
                }
            } else {
                // Resume timer when mouse leaves (but not during drag)
                Notifications.timeoutNotification(notifId);
                if (!root.isDragging && root.timerAnimation && root.timerCanvas) {
                    root.timerAnimation.stop();
                    root.timerCanvas.progress = 1.0;
                    root.timerAnimation.start();
                }
            }
        }
    }

    RowLayout {
        id: contentLayout
        anchors.fill: parent
        anchors.margins: root.padding
        spacing: 12
        z: 1

        // Notification icon or image
        NotificationIcon {
            id: notifIcon
            Layout.alignment: contentColumn.implicitHeight > 48 ? Qt.AlignTop : Qt.AlignVCenter
            Layout.preferredWidth: 48
            Layout.preferredHeight: 48
            image: root.notificationObject?.image || ""
            appIcon: root.notificationObject?.appIcon || ""
            showImage: true
        }

        // Notification content with timer and actions
        NotificationContent {
            id: contentColumn
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignVCenter

            notificationObject: root.notificationObject
            isGroup: false
            showTimestamp: false
            showDismissButton: true
            dismissButtonSize: 18 * 1.10
            titleFontSize: Fonts.p
            bodyFontSize: Fonts.h6
            titleFontWeight: Font.DemiBold
            titleColor: Colors.text
            bodyColor: Colors.textSubdued
            maxBodyLines: 4

            // Timer visualization component
            timerComponent: Component {
                Canvas {
                    id: timerCanvas

                    property real progress: 1.0

                    onProgressChanged: requestPaint()

                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.reset();

                        var centerX = width / 2;
                        var centerY = height / 2;
                        var radius = Math.min(width, height) / 2;

                        if (progress > 0) {
                            ctx.beginPath();
                            ctx.moveTo(centerX, centerY);
                            ctx.arc(centerX, centerY, radius, -Math.PI / 2, (-Math.PI / 2) + (progress * 2 * Math.PI), false);
                            ctx.lineTo(centerX, centerY);
                            ctx.fillStyle = Colors.red;
                            ctx.globalAlpha = 1;
                            ctx.fill();
                        }
                    }

                    // Progress animation controlled by notification timeout
                    NumberAnimation {
                        id: timerAnimation
                        target: timerCanvas
                        property: "progress"
                        from: 1.0
                        to: 0.0
                        duration: {
                            const timeout = root.notificationObject?.notification?.expireTimeout;
                            return (timeout && timeout > 0) ? timeout : 5000;
                        }
                        running: false

                        onFinished: {
                            if (!hoverHandler.hovered) {
                                slideAnimation.startDismiss();
                            }
                        }

                        Component.onCompleted: {
                            timerAnimation.start();
                        }
                    }

                    // Expose timer for hover management
                    Component.onCompleted: {
                        root.timerAnimation = timerAnimation;
                        root.timerCanvas = timerCanvas;
                    }
                }
            }

            onDismissRequested: {
                slideAnimation.startDismiss();
            }
        }
    }

    // References to timer components for hover-based pause/resume
    property var timerAnimation: null
    property var timerCanvas: null

    // Enable shadow effect for visual depth
    layer.enabled: true
    layer.smooth: true
}

```

## File: `modules/quickshell/config/modules/onScreenDisplays/NotificationPopup.qml`

```qml
/**
 * NotificationPopup.qml
 * 
 * Manages a vertically-stacked notification popup display on-screen.
 * 
 * **Responsibilities:**
 * - Renders notification popups as individual PanelWindows layered on the Overlay
 * - Tracks notification heights for accurate positioning calculations
 * - Auto-cleans up height entries when notifications are dismissed
 * - Notifies focus manager when the last popup closes
 * 
 * **Layout:** Notifications stack vertically from top-right with 10px spacing and margins.
 * **Screen Selection:** Uses Config.mainMonitorId or active screen, falls back to first screen.
 */
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import qs.settings
import qs.services
import qs.modules.onScreenDisplays.components

Scope {
    id: notificationPopup

    // Layout constants
    readonly property int topMargin: 10
    readonly property int rightMargin: 10
    readonly property int notificationSpacing: 10
    readonly property int notificationWidth: 380
    readonly property int panelWindowWidth: 400

    // Track height per notification ID for dynamic positioning
    property var notificationHeights: ({})
    
    /**
     * Calculates cumulative Y-offset for notification at given index.
     * Accounts for all previous notifications' heights plus spacing.
     * Falls back to 100px height estimate if not yet measured.
     */
    function calculateYOffset(notifId, index) {
        let offset = topMargin
        const list = Notifications.popupList
        
        for (let i = 0; i < index; i++) {
            const prevId = list[i].notificationId
            const height = notificationHeights[prevId] ?? 100  // Use nullish coalescing
            offset += height + notificationSpacing
        }
        return offset
    }
    
    /**
     * Records measured height for a notification.
     * Triggers property update to force position recalculation via calculateYOffset.
     */
    function updateNotificationHeight(notifId, height) {
        notificationHeights[notifId] = height
        notificationHeights = notificationHeights  // Force reactivity
    }

    // Automatically clean up height cache when notifications are removed from the popup list
    Connections {
        target: Notifications
        function onPopupListChanged() {
            const currentIds = new Set(Notifications.popupList.map(n => n.notificationId))
            let cleaned = false

            Object.keys(notificationHeights).forEach(id => {
                const numId = parseInt(id)
                if (!currentIds.has(numId)) {
                    delete notificationHeights[id]
                    cleaned = true
                }
            })

            if (cleaned) {
                notificationHeights = notificationHeights  // Force reactivity
                DrawerFocusManager.notifyPopupClosed()
            }
        }
    }

    // Render notification popups as individual windows stacked vertically
    Variants {
        model: Notifications.popupList

        PanelWindow {
            id: notifWindow
            required property var modelData

            // Index of this notification in the current popup list
            readonly property int notifIndex: {
                const list = Notifications.popupList
                return list.findIndex(n => n.notificationId === modelData.notificationId)
            }

            // Resolve target screen (main monitor or active screen, fallback to first)
            readonly property var targetScreen: {
                const s = Quickshell.screens.find(scr => scr.name === Config.mainMonitorId)
                if (s) return s
                const active = Quickshell.screens.find(scr => scr === Quickshell.activeScreen)
                return active ? active : Quickshell.screens[0]
            }

            screen: targetScreen
            visible: true

            WlrLayershell.namespace: "quickshell:notificationPopup:" + modelData.notificationId
            WlrLayershell.layer: WlrLayer.Overlay
            exclusiveZone: 0

            anchors {
                top: true
                right: true
            }

            margins {
                top: notificationPopup.calculateYOffset(modelData.notificationId, notifIndex)
                right: notificationPopup.rightMargin
            }

            color: "transparent"
            implicitWidth: notificationPopup.panelWindowWidth
            implicitHeight: notifItem.implicitHeight

            NotificationPopupItem {
                id: notifItem
                notificationObject: notifWindow.modelData
                width: notificationPopup.notificationWidth

                onImplicitHeightChanged: {
                    notificationPopup.updateNotificationHeight(
                        notifWindow.modelData.notificationId,
                        implicitHeight
                    )
                }

                Component.onCompleted: {
                    notificationPopup.updateNotificationHeight(
                        notifWindow.modelData.notificationId,
                        implicitHeight
                    )
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/onScreenDisplays/ReloadPopup.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import Quickshell.Wayland
import Quickshell
import qs.settings
import qs.components.animations
import qs.services

/**
 * Displays transient reload notification popups for Quickshell configuration reloads.
 *
 * Handles both success and failure scenarios with visual feedback:
 * - Success: Green indicator, 1-second auto-dismiss
 * - Failure: Red indicator with error details, 10-second duration
 *
 * Features:
 * - Lazy-loaded for performance (only created when needed)
 * - Slide-in animation with progress bar countdown
 * - Auto-dismiss or click-to-dismiss functionality
 * - Manages drawer focus state via DrawerFocusManager
 */
Scope {
    id: root

    property bool failed
    property string errorString

    // Layout and sizing constants
    readonly property real windowMarginHorizontal: 10
    readonly property real contentPadding: 12
    readonly property real contentSpacing: 8
    readonly property real textSpacing: 4
    readonly property real iconSize: 48
    readonly property real iconRadius: 8
    readonly property real progressBarHeight: 5
    readonly property real progressBarRadius: 9999
    readonly property real slideDistance: 20
    readonly property real cornerRadius: 12

    // Animation durations (milliseconds)
    readonly property int slideInDuration: 200
    readonly property int successDuration: 1000
    readonly property int failureDuration: 10000

    // Listen for Quickshell reload events and manage popup lifecycle
    Connections {
        target: Quickshell

        function onReloadCompleted() {
            root.failed = false
            popupLoader.active = true
        }

        function onReloadFailed(error: string) {
            // Replace any existing popup with fresh failure state
            popupLoader.active = false
            root.failed = true
            root.errorString = error
            popupLoader.active = true
        }
    }


    // On-demand loader to prevent unnecessary resource allocation
    LazyLoader {
        id: popupLoader

        onActiveChanged: {
            if (!active) {
                DrawerFocusManager.notifyPopupClosed()
            }
        }

        PanelWindow {
            id: popup

            exclusiveZone: 0
            anchors {
                top: true
                left: true
            }
            margins {
                top: Config.gapsOut
                left: Config.gapsOut + root.windowMarginHorizontal
            }

            implicitWidth: reloadRect.width + 20
            implicitHeight: reloadRect.implicitHeight

            color: "transparent"

            Rectangle {
                id: reloadRect
                width: 380
                implicitHeight: contentLayout.implicitHeight + padding * 2

                property real padding: root.contentPadding

                radius: root.cornerRadius
                color: mouseArea.containsMouse ? Colors.bg : Colors.bgBlur

                AnimatedColor on color {}

                // Clickable area to dismiss popup
                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: popupLoader.active = false
                }

                ColumnLayout {
                    id: contentLayout
                    anchors.fill: parent
                    anchors.margins: reloadRect.padding
                    spacing: root.contentSpacing

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 12

                        // Status icon with conditional coloring based on reload result
                        Rectangle {
                            Layout.preferredWidth: root.iconSize
                            Layout.preferredHeight: root.iconSize
                            Layout.alignment: Qt.AlignTop
                            radius: root.iconRadius
                            color: root.failed ? Qt.alpha(Colors.red, 0.2) : Qt.alpha(Colors.green, 0.2)

                            AnimatedColor on color {}

                            Text {
                                anchors.centerIn: parent
                                text: root.failed ? Fonts.iconFalse : Fonts.iconTrue
                                font.family: Fonts.iconFont
                                font.pixelSize: 24
                                color: root.failed ? Colors.red : Colors.green

                                AnimatedColor on color {}
                            }
                        }

                        // Status title and error details
                        ColumnLayout {
                            Layout.fillWidth: true
                            spacing: root.textSpacing

                            Text {
                                Layout.fillWidth: true
                                text: root.failed ? "Quickshell: Reload failed" : "Quickshell reloaded"
                                color: Colors.text
                                font.pixelSize: Fonts.p
                                font.weight: Font.DemiBold
                                elide: Text.ElideRight
                                wrapMode: Text.NoWrap

                                AnimatedColor on color {}
                            }

                            Text {
                                Layout.fillWidth: true
                                text: root.errorString
                                color: Colors.textSubdued
                                font.pixelSize: Fonts.h6
                                wrapMode: Text.Wrap
                                maximumLineCount: 6
                                elide: Text.ElideRight
                                visible: root.errorString !== ""

                                AnimatedColor on color {}
                            }
                        }
                    }

                    // Animated progress bar that triggers auto-dismiss on completion
                    Item {
                        Layout.fillWidth: true
                        Layout.preferredHeight: root.progressBarHeight
                        Layout.topMargin: 4

                        // Background track
                        Rectangle {
                            id: barBg
                            anchors.fill: parent
                            radius: root.progressBarRadius
                            color: root.failed ? Qt.alpha(Colors.red, 0.2) : Qt.alpha(Colors.green, 0.2)

                            AnimatedColor on color {}
                        }

                        // Animated progress indicator
                        Rectangle {
                            id: bar
                            anchors {
                                left: parent.left
                                top: parent.top
                                bottom: parent.bottom
                            }
                            radius: root.progressBarRadius
                            color: root.failed ? Colors.red : Colors.green

                            AnimatedColor on color {}

                            PropertyAnimation {
                                id: anim
                                target: bar
                                property: "width"
                                from: barBg.width
                                to: 0
                                duration: root.failed ? root.failureDuration : root.successDuration
                                onFinished: popupLoader.active = false
                                // Pause animation on hover to let user read error details
                                paused: mouseArea.containsMouse
                            }
                        }
                    }
                }

                // Entry animation setup
                opacity: 0
                x: -root.slideDistance

                Component.onCompleted: {
                    anim.start()
                    slideInAnim.start()
                }

                // Parallel slide-in and fade-in animation on entry
                ParallelAnimation {
                    id: slideInAnim
                    NumberAnimation {
                        target: reloadRect
                        property: "opacity"
                        from: 0
                        to: 1
                        duration: root.slideInDuration
                        easing.type: Easing.OutQuad
                    }
                    NumberAnimation {
                        target: reloadRect
                        property: "x"
                        from: -root.slideDistance
                        to: 0
                        duration: root.slideInDuration
                        easing.type: Easing.OutQuad
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/polkit/Polkit.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import qs.settings
import qs.services
import qs.components.animations

// Simple polkit authentication dialog
// Note: This is a placeholder - full polkit integration requires proper service support

Item {
    id: root
    visible: false
    
    property string action: ""
    property string message: "Authentication required"
    property bool authenticated: false
    
    signal submit(string password)
    signal cancel()
    
    IpcHandler {
        target: "polkit"
        
        function authenticate(actionId: string, message: string): void {
            root.action = actionId
            root.message = message
            root.visible = true
        }
        
        function cancelAuth(): void {
            root.visible = false
            root.cancel()
        }
    }
    
    Keys.onPressed: event => {
        if (event.key === Qt.Key_Escape) {
            root.visible = false
            root.cancel()
        }
    }
}

```

## File: `modules/quickshell/config/modules/polkit/PolkitContent.qml`

```qml
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets
import qs.services
import qs.modules.common
import qs.modules.common.widgets

Item {
    id: root
    readonly property bool usePasswordChars: !PolkitService.flow?.responseVisible ?? true

    Keys.onPressed: event => { // Esc to close
        if (event.key === Qt.Key_Escape) {
            PolkitService.cancel();
        }
    }

    function submit() {
        PolkitService.submit(inputField.text);
    }
    Connections {
        target: PolkitService
        function onInteractionAvailableChanged() {
            if (!PolkitService.interactionAvailable) return;
            inputField.text = "";
            inputField.forceActiveFocus();
        }
    }

    Rectangle {
        id: bg
        anchors.fill: parent
        color: Appearance.colors.colScrim
        opacity: 0
        Component.onCompleted: {
            opacity = 1
        }
        Behavior on opacity {
            animation: Appearance.animation.elementMoveFast.numberAnimation.createObject(this)
        }
    }

    WindowDialog {
        anchors.centerIn: parent
        backgroundWidth: 450
        show: false
        Component.onCompleted: {
            show = true
        }

        MaterialSymbol {
            Layout.alignment: Qt.AlignHCenter
            iconSize: 26
            text: "security"
            color: Appearance.colors.colSecondary
        }

        WindowDialogTitle {
            id: titleText
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignHCenter
            text: Translation.tr("Authentication")
        }

        WindowDialogParagraph {
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignLeft
            text: PolkitService.cleanMessage
        }

        MaterialTextField {
            id: inputField
            Layout.fillWidth: true
            focus: true
            enabled: PolkitService.interactionAvailable
            placeholderText: PolkitService.cleanPrompt
            echoMode: root.usePasswordChars ? TextInput.Password : TextInput.Normal
            onAccepted: root.submit();

            Keys.onPressed: event => { // Esc to close
                if (event.key === Qt.Key_Escape) {
                    PolkitService.cancel();
                }
            }
        }

        WindowDialogButtonRow {
            Layout.bottomMargin: 10 // I honestly don't know why this is necessary
            Item {
                Layout.fillWidth: true
            }
            DialogButton {
                buttonText: Translation.tr("Cancel")
                onClicked: PolkitService.cancel();
            }
            DialogButton {
                enabled: PolkitService.interactionAvailable
                buttonText: Translation.tr("OK")
                onClicked: root.submit();
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/screenshot/Controller.qml`

```qml
// very bad code DO NOT COPY
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Wayland
import qs

Scope {
    id: root
	property bool shooting: false;
	property bool shootingComplete: false;
	property bool visible: false;
	readonly property string path: `${ShellGlobals.rtpath}/screenshot.png`;

	onShootingChanged: {
		if (shooting) {
			grimProc.running = true
		} else {
			visible = false
			shootingComplete = false
			cleanupProc.running = true
		}
	}

	Process {
		id: grimProc
		command: ["grim", "-l", "0", root.path]
		onExited: code => {
			if (code == 0) {
				root.visible = true
			} else {
				console.log("screenshot failed")
				cleanupProc.running = true
				root.shooting = false
			}
		}
	}

	Process {
		id: magickProc
		command: [
			"magick",
			root.path,
			"-crop", `${selection.normal.width}x${selection.normal.height}+${selection.normal.x}+${selection.normal.y}`,
			"-quality", "70",
			"-page", "0x0+0+0", // removes page size and shot position
			root.path,
		]

		onExited: wlCopy.running = true;
	}

	Process {
		id: wlCopy
		command: ["sh", "-c", `wl-copy < '${root.path}'`]

		onExited: root.shootingComplete = true;
	}

    Process {
        id: cleanupProc
        command: ["rm", root.path]
    }

    // Full-screen capture + copy to clipboard
    Process {
        id: fullShotProc
        running: false
        // capture to file, copy to wl-copy, then remove
        command: ["sh", "-c", "grim '" + root.path + "' && wl-copy < '" + root.path + "' && rm -f '" + root.path + "'"]
        stdout: SplitParser { onRead: (d) => {} }
        stderr: SplitParser { onRead: (d) => {} }
        onExited: code => {
            if (code === 0) {
                root.shootingComplete = true
            }
        }
    }

	QtObject {
		id: selection
		property real x1;
		property real y1;
		property real x2;
		property real y2;

		readonly property real x: Math.min(x1, x2)
		readonly property real y: Math.min(y1, y2)
		readonly property real w: Math.max(x1, x2) - x
		readonly property real h: Math.max(y1, y2) - y
		readonly property rect normal: Qt.rect(x - topleft.x, y - topleft.y, w, h)
	}

	readonly property point topleft: Quickshell.screens.reduce((point, screen) => {
		return Qt.point(Math.min(point.x, screen.x), Math.min(point.y, screen.y))
	}, Qt.point(Number.POSITIVE_INFINITY, Number.POSITIVE_INFINITY))

	function normalizedScreenRect(screen: ShellScreen): rect {
		const p = topleft;
		return Qt.rect(screen.x - p.x, screen.y - p.y, screen.width, screen.height)
	}

    LazyLoader {
		loading: root.shooting
		active: root.visible

		Variants {
			model: Quickshell.screens

			property bool selectionComplete: false

			Component.onCompleted: {
				selection.x1 = 0
				selection.y1 = 0
				selection.x2 = 0
				selection.y2 = 0
			}

			PanelWindow {
				id: panel
				required property var modelData;
				screen: modelData
				visible: root.visible
				exclusionMode: ExclusionMode.Ignore
				WlrLayershell.namespace: "shell:screenshot"
				WlrLayershell.layer: WlrLayer.Overlay
				WlrLayershell.keyboardFocus: WlrKeyboardFocus.Exclusive

				anchors {
					top: true
					left: true
					right: true
					bottom: true
				}

				MouseArea {
					id: area
					anchors.fill: parent
					cursorShape: selectionComplete ? Qt.WaitCursor : Qt.CrossCursor
					enabled: !selectionComplete

					onPressed: {
						selection.x1 = mouseX + panel.screen.x;
						selection.x2 = selection.x1;
						selection.y1 = mouseY + panel.screen.y;
						selection.y2 = selection.y1;
					}

					onPositionChanged: {
						selection.x2 = mouseX + panel.screen.x;
						selection.y2 = mouseY + panel.screen.y;
					}

					onReleased: {
						if (selection.w > 0 && selection.h > 0) {
							magickProc.running = true
							selectionComplete = true
						} else {
							root.shooting = false
    }

    // Expose simple IPC interface so other modules or keybindings can trigger screenshots
    IpcHandler {
        target: "screenshot"

        // Start area selection overlay
        function area() {
            root.shooting = true
        }

        // Take full-screen and copy to clipboard
        function fullClipboard() {
            fullShotProc.running = true
        }
    }
}

					Image {
						parent: area
						anchors.fill: parent
						source: root.visible ? root.path : ""
						sourceClipRect: root.normalizedScreenRect(panel.screen)
					}

					CutoutRect {
						id: cutoutRect
						anchors.fill: parent
						innerX: selection.x - panel.screen.x
						innerY: selection.y - panel.screen.y
						innerW: selection.w
						innerH: selection.h

						NumberAnimation {
							id: rectFlashIn
							target: cutoutRect
							property: "opacity"
							duration: 200
							easing.type: Easing.OutExpo
							from: 0.0
							to: 1.0
						}

						PropertyAnimation {
							running: selectionComplete
							target: cutoutRect
							property: "innerBorderColor"
							duration: 200
							to: "#00ff20"
						}

						NumberAnimation {
							running: selectionComplete
							target: cutoutRect
							property: "backgroundOpacity"
							duration: 200
							to: 0.0
						}

						NumberAnimation {
							running: shootingComplete
							target: cutoutRect
							property: "opacity"
							easing.type: Easing.OutCubic
							duration: 150
							to: 0.0
							onStopped: root.shooting = false
						}
					}

					Connections {
						target: root

						function onVisibleChanged() {
							if (root.visible) {
								rectFlashIn.start();
							}
						}
					}
				}
			}
		}
	}
}

```

## File: `modules/quickshell/config/modules/screenshot/CutoutRect.qml`

```qml
import QtQuick

Item {
	id: root
	property color backgroundColor: "#191919AA"
	property real backgroundOpacity: 1.0
	property alias innerBorderColor: center.border.color
	property alias innerX: center.x
	property alias innerY: center.y
	property alias innerW: center.width
	property alias innerH: center.height

	Rectangle {
		id: center
		border.color: "white"
		border.width: 2
		color: "transparent"
	}

	Rectangle {
		color: root.backgroundColor
		opacity: backgroundOpacity

		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
			bottom: center.top
		}
	}

	Rectangle {
		color: root.backgroundColor
		opacity: backgroundOpacity

		anchors {
			top: center.bottom
			left: parent.left
			right: parent.right
			bottom: parent.bottom
		}
	}

	Rectangle {
		color: root.backgroundColor
		opacity: backgroundOpacity

		anchors {
			top: center.top
			left: parent.left
			right: center.left
			bottom: center.bottom
		}
	}

	Rectangle {
		color: root.backgroundColor
		opacity: backgroundOpacity

		anchors {
			top: center.top
			left: center.right
			right: parent.right
			bottom: center.bottom
		}
	}
}


```

## File: `modules/quickshell/config/modules/screenshot/qmldir`

```text
module qs.modules.screenshot
Controller 1.0 Controller.qml
CutoutRect 1.0 CutoutRect.qml

```

## File: `modules/quickshell/config/modules/settingsWindow/components/Dropdown.qml`

```qml
// Dropdown.qml
// Styled dropdown menu with icon support and configurable items
// Features: focus grab management, customizable styling, separator support
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Hyprland
import qs.components
import qs.settings

Item {
    id: root
    
    property alias buttonText: dropdownButton.buttonText
    property int buttonWidth: 150
    
    // Data model array with items containing: itemText, itemIcon, itemIconColor, isSeparator, itemAction
    property var model: []
    
    // Emitted when a menu item is clicked with action type and associated data
    signal itemClicked(string action, var data)
    
    implicitWidth: dropdownButton.implicitWidth
    implicitHeight: dropdownButton.implicitHeight
    
    HyprlandFocusGrab {
        id: focusGrab
        windows: [popupMenu]
        active: popupMenu.visible
        onCleared: {
            popupMenu.visible = false
        }
    }
    
    StyledButton {
        id: dropdownButton
        buttonText: "Select"
        iconText: Fonts.iconChevronDown
        iconOnRight: true
        anchors.fill: parent
        
        onButtonClicked: {
            const newVisibility = !popupMenu.visible
            popupMenu.visible = newVisibility
            focusGrab.active = newVisibility
        }
    }
    
    Popup {
        id: popupMenu
        anchor.item: dropdownButton
        anchor.rect.x: -((popupMenu.width - dropdownButton.width) / 2)
        anchor.rect.y: dropdownButton.height + 8
        visible: false
        
        property int padding: 8
        property int minWidth: Math.max(120, dropdownButton.width)
        property real maxChildWidth: 0
        
        implicitWidth: Math.max(minWidth, maxChildWidth + padding * 2)
        implicitHeight: contentColumn.implicitHeight + padding * 2
        
        onVisibleChanged: {
            if (!visible) {
                focusGrab.active = false
            }
        }
        
        Column {
            id: contentColumn
            anchors.fill: parent
            anchors.margins: popupMenu.padding
            spacing: 2
            
            Repeater {
                id: repeater
                model: root.model
                
                Item {
                    id: itemDelegate
                    required property string itemText
                    required property string itemIcon
                    required property color itemIconColor
                    required property bool isSeparator
                    required property string itemAction
                    required property int index
                    
                    width: parent.width
                    height: isSeparator ? 8 : 32
                    
                    PopupSeparator {
                        anchors.fill: parent
                        visible: itemDelegate.isSeparator
                    }
                    
                    Rectangle {
                        anchors.fill: parent
                        visible: !itemDelegate.isSeparator
                        radius: 6
                        color: itemMouseArea.containsMouse ? Colors.brighten_5 : "transparent"
                        
                        Row {
                            id: itemRow
                            anchors.fill: parent
                            anchors.leftMargin: 8
                            anchors.rightMargin: 8
                            spacing: 8
                            
                            Component.onCompleted: {
                                popupMenu.maxChildWidth = Math.max(popupMenu.maxChildWidth, implicitWidth + 16)
                            }
                            
                            Text {
                                anchors.verticalCenter: parent.verticalCenter
                                text: itemDelegate.itemIcon
                                color: itemDelegate.itemIconColor
                                font.family: Fonts.iconFont
                                font.pixelSize: Fonts.h2
                                visible: itemDelegate.itemIcon !== ""
                            }
                            
                            Text {
                                anchors.verticalCenter: parent.verticalCenter
                                text: itemDelegate.itemText
                                color: Colors.text
                                font.pixelSize: Fonts.p
                                elide: Text.ElideRight
                            }
                        }
                        
                        MouseArea {
                            id: itemMouseArea
                            anchors.fill: parent
                            hoverEnabled: true
                            cursorShape: Qt.PointingHandCursor
                            onClicked: {
                                root.itemClicked(itemDelegate.itemAction, {
                                    text: itemDelegate.itemText,
                                    icon: itemDelegate.itemIcon,
                                    index: itemDelegate.index
                                })
                                popupMenu.visible = false
                                focusGrab.active = false
                            }
                        }
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/components/ImagePicker.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import Quickshell.Io
import qs.settings
import qs.components.animations

Item {
    id: root

    property string directoryPath: ""
    property int thumbnailSize: 120
    property int spacing: 12
    property string selectedImagePath: ""

    signal imageSelected(string imagePath)

    implicitWidth: parent.width
    implicitHeight: gridView.implicitHeight

    // Supported image extensions
    property var imageExtensions: [".jpg", ".jpeg", ".png", ".bmp", ".gif", ".svg"]

    // Process to list directory contents.
    // NOTE: This uses the system 'ls' command which is simple but not portable
    // or safe for arbitrary filenames (spaces/newlines). A future improvement
    // would be to replace this with a QDir listing from C++ or a JS-based
    // file API when possible.
    Process {
        id: listProcess
        // Use 'ls -1 <dir>' to print one filename per line.
        command: ["ls", "-1", root.directoryPath]
        running: root.directoryPath !== ""

        // Use SplitParser on stdout to receive one line per onRead call.
        stdout: SplitParser {
            splitMarker: "\n"

            onRead: data => {
                // SplitParser gives us one line at a time. Skip empty lines.
                if (data === "") {
                    return;
                }

                // Normalize to lowercase for extension checks.
                let lower = data.toLowerCase();

                // If the filename ends with a supported extension, append to model.
                for (let ext of root.imageExtensions) {
                    if (lower.endsWith(ext)) {
                        // Build the full file:// path for the Image source.
                        let fullPath = root.directoryPath + "/" + data;
                        imageModel.append({ imagePath: fullPath });
                        break;
                    }
                }
            }
        }

        // When the process starts we should clear the previous listing so the
        // GridView always reflects the latest directory contents.
        onRunningChanged: {
            if (running) {
                imageModel.clear();
            }
        }
    }

    ListModel {
        id: imageModel
    }

    // Background rectangle
    Rectangle {
        anchors.fill: parent
        color: Colors.darken_20
        radius: 8
    }

    GridView {
        id: gridView
        width: parent.width
        implicitHeight: contentHeight
        cellWidth: root.thumbnailSize + root.spacing
        cellHeight: root.thumbnailSize + root.spacing + 40 // Extra space for filename

        model: imageModel
        interactive: false

        delegate: Item {
            id: thumbnailDelegate
            required property string imagePath
            required property int index

            width: gridView.cellWidth
            height: gridView.cellHeight

            Rectangle {
                id: thumbnailContainer
                anchors.centerIn: parent
                width: root.thumbnailSize
                height: root.thumbnailSize + 30
                radius: 8
                color: mouseArea.containsMouse ? Colors.brighten_10 : "transparent"
                border.color: root.selectedImagePath === thumbnailDelegate.imagePath ? Colors.lavender : "transparent"
                border.width: 3

                AnimatedColor on color {}
                AnimatedColor on border.color {}

                Column {
                    anchors.fill: parent
                    anchors.margins: 8
                    spacing: 4

                    Rectangle {
                        width: parent.width
                        height: root.thumbnailSize - 16
                        radius: 6
                        color: Colors.brighten_10
                        clip: true

                        Image {
                            id: thumbnail
                            anchors.fill: parent
                            source: "file://" + thumbnailDelegate.imagePath
                            fillMode: Image.PreserveAspectCrop
                            asynchronous: true
                            cache: true

                            Rectangle {
                                anchors.fill: parent
                                color: "transparent"
                                border.color: Colors.brighten_10
                                border.width: 1
                                radius: 6
                            }

                            // Loading indicator
                            Text {
                                anchors.centerIn: parent
                                text: thumbnail.status === Image.Loading ? "Loading..." : thumbnail.status === Image.Error ? "Error" : ""
                                color: Colors.textSubdued
                                font.pixelSize: Fonts.p
                                visible: thumbnail.status !== Image.Ready
                            }
                        }
                    }

                    Text {
                        width: parent.width
                        text: {
                            let parts = thumbnailDelegate.imagePath.split('/');
                            return parts[parts.length - 1];
                        }
                        color: mouseArea.containsMouse ? Colors.text : Colors.textSubdued
                        font.pixelSize: Fonts.p
                        elide: Text.ElideMiddle
                        horizontalAlignment: Text.AlignHCenter

                        AnimatedColor on color {}
                    }
                }

                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor

                    onClicked: {
                        root.selectedImagePath = thumbnailDelegate.imagePath;
                        root.imageSelected(thumbnailDelegate.imagePath);
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/components/LineSetting.qml`

```qml
/**
 * LineSetting Component
 * 
 * A horizontal layout container for settings with a labeled icon on the left
 * and configurable content control on the right (e.g., Switch, Slider, Dropdown).
 * Automatically handles spacing and alignment.
 * 
 * Usage:
 *   LineSetting {
 *       labelText: "Volume"
 *       iconText: "🔊"
 *       content: Slider { ... }
 *   }
 */

pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import qs.settings
import qs.components

Item {
    id: root

    // Layout properties
    property alias labelText: label.labelText
    property alias iconText: label.iconText
    property alias subTitle: subTitle.text

    // Content item (Dropdown, Switch, Slider, etc.)
    default property Item content

    // Styling properties
    property color textColor: Colors.text
    property color iconColor: Colors.text
    property int fontSize: Fonts.p

    // Layout dimensions
    property int spacing: 12
    property int horizontalPadding: 12
    property int minHeight: 50
    property int minContentWidth: 100
    property int cornerRadius: 8

    height: minHeight
    width: parent.width
    implicitWidth: label.implicitWidth + spacing + contentContainer.implicitWidth + (horizontalPadding * 2)
    implicitHeight: Math.max(label.implicitHeight, contentContainer.implicitHeight)

    Rectangle {
        id: background
        anchors.fill: parent
        color: Colors.darken_20
        radius: root.cornerRadius

        RowLayout {
            id: rowLayout
            anchors.fill: parent
            anchors.leftMargin: root.horizontalPadding
            anchors.rightMargin: root.horizontalPadding
            spacing: root.spacing

            Column {
                spacing: 4
            // Left side: icon and label text
            IconAndText {
                id: label
                labelText: "Setting Label"
                iconText: "\uefa8"
                iconColor: root.iconColor
                Layout.alignment: Qt.AlignVCenter
                Layout.fillWidth: false
            }
            Text {
                id: subTitle
                text: ""
                visible: subTitle.text != ""
                font.pixelSize: label.fontSize / 1.25
                color: Colors.textSubdued
            }
            }
            // Center spacer: stretches to fill available space
            Item {
                Layout.fillWidth: true
                Layout.fillHeight: false
            }

            // Right side: content control container
            Item {
                id: contentContainer
                Layout.alignment: Qt.AlignVCenter
                Layout.fillWidth: false
                Layout.preferredWidth: {
                    if (!root.content)
                        return 0
                    let availableWidth = rowLayout.width - label.width - root.spacing * 3
                    return Math.min(root.content.implicitWidth, Math.max(availableWidth, root.minContentWidth))
                }
                implicitWidth: root.content ? root.content.implicitWidth : 0
                implicitHeight: root.content ? root.content.implicitHeight : 0
                clip: true

                Component.onCompleted: {
                    if (root.content) {
                        root.content.parent = contentContainer
                        root.content.anchors.verticalCenter = contentContainer.verticalCenter
                        root.content.anchors.right = contentContainer.right
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/components/LineSpacer.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick

Item {
    id: root
    width: parent.width

    // Allow customization
    property real lineWidth: 0.8    
    height: 16
    
    Rectangle {
        id: separator
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width * lineWidth
        height: 1
        color: "transparent"
        radius: 0.5
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/components/MapEditor.qml`

```qml
/**
 * MapEditor Component
 * 
 * A key-value pair editor for managing map/object data with dynamic row management.
 * Displays existing items with read-only keys and editable values, provides an input row
 * to add new key-value pairs. Emits signals on add, update, and remove operations.
 * Supports Unicode escape sequence parsing in values.
 * 
 * Usage:
 *   MapEditor {
 *       items: { "key1": "value1", "key2": "value2" }
 *       onItemAdded: (key, value) => console.log("Added:", key, value)
 *       onItemRemoved: (key) => console.log("Removed:", key)
 *   }
 */

pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import qs.settings

Column {
    id: root
    spacing: 8

    // Data model
    property var items: ({})

    // Input placeholders
    property string keyPlaceholder: "Key"
    property string valuePlaceholder: "Value"

    // Color scheme
    property color backgroundColor: Colors.darken_20
    property color inputBackgroundColor: Colors.brighten_10
    property color borderColor: Colors.bg
    property color focusBorderColor: Colors.lavender
    property color textColor: Colors.text
    property color subtleTextColor: Colors.textSubdued
    property color addButtonColor: Colors.green
    property color removeButtonColor: Colors.red

    // Layout dimensions
    property int cornerRadius: 8
    property int rowSpacing: 8
    property int rowHeight: 40
    property int containerPadding: 16
    property int minContainerHeight: 80
    property int containerRowSpacing: 8
    property int fieldRadius: 6
    property int iconFontSize: 16
    property int fieldPadding: 4

    signal itemAdded(string key, string value)
    signal itemUpdated(string key, string value)
    signal itemRemoved(string key)

    // Convert Unicode escape sequences (e.g., \uXXXX) to actual characters
    function parseUnicodeEscapes(str) {
        return str.replace(/\\u([0-9a-fA-F]{4})/g, function(match, hex) {
            return String.fromCharCode(parseInt(hex, 16));
        });
    }

    // Validate and add new item
    function addNewItem(key = "", value = "") {
        const trimmedKey = String(key).trim();
        if (trimmedKey !== "") {
            root.itemAdded(trimmedKey, parseUnicodeEscapes(String(value).trim()));
        }
    }

    Rectangle {
        width: parent.width
        height: Math.max(contentColumn.height + (root.containerPadding * 2), root.minContainerHeight)
        color: root.backgroundColor
        radius: root.cornerRadius

        Column {
            id: contentColumn
            anchors {
                left: parent.left
                right: parent.right
                top: parent.top
                margins: root.containerPadding
            }
            spacing: root.containerRowSpacing

            // Display existing key-value pairs
            Repeater {
                model: Object.keys(root.items)

                delegate: Row {
                    id: delegateRoot
                    required property string modelData
                    width: parent.width
                    spacing: root.rowSpacing
                    height: root.rowHeight

                    // Read-only key display
                    Rectangle {
                        width: (parent.width * 0.5) - removeIcon.width
                        height: parent.height
                        color: root.inputBackgroundColor
                        radius: root.fieldRadius

                        Text {
                            text: delegateRoot.modelData
                            color: root.subtleTextColor
                            font.pixelSize: Fonts.p
                            anchors.centerIn: parent
                            elide: Text.ElideRight
                            width: parent.width - (root.fieldPadding * 2)
                            horizontalAlignment: Text.AlignHCenter
                        }
                    }

                    // Editable value field
                    TextField {
                        width: (parent.width * 0.5) - removeIcon.width
                        height: parent.height
                        text: root.items[delegateRoot.modelData] || ""
                        color: root.textColor
                        font.pixelSize: Fonts.p
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        leftPadding: root.fieldPadding
                        rightPadding: root.fieldPadding

                        background: Rectangle {
                            color: root.inputBackgroundColor
                            radius: root.fieldRadius
                        }

                        onEditingFinished: root.itemUpdated(delegateRoot.modelData, parseUnicodeEscapes(text))
                    }

                    // Remove button
                    Text {
                        id: removeIcon
                        text: Fonts.iconFalse
                        color: root.removeButtonColor
                        font.pixelSize: root.iconFontSize
                        anchors.verticalCenter: parent.verticalCenter

                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: root.itemRemoved(delegateRoot.modelData)
                        }
                    }
                }
            }

            // Input row for adding new items
            Row {
                width: parent.width
                spacing: root.rowSpacing
                height: root.rowHeight

                TextField {
                    id: newKeyInput
                    width: (parent.width * 0.5) - addIcon.width
                    height: parent.height
                    placeholderText: root.keyPlaceholder
                    color: root.textColor
                    font.pixelSize: Fonts.p
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    leftPadding: root.fieldPadding
                    rightPadding: root.fieldPadding

                    background: Rectangle {
                        color: root.inputBackgroundColor
                        radius: root.fieldRadius
                        border.color: parent.activeFocus ? root.focusBorderColor : "transparent"
                        border.width: 1
                    }

                    Keys.onReturnPressed: newValueInput.focus = true
                }

                TextField {
                    id: newValueInput
                    width: (parent.width * 0.5) - addIcon.width
                    height: parent.height
                    placeholderText: root.valuePlaceholder
                    color: root.textColor
                    font.pixelSize: Fonts.p
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    leftPadding: root.fieldPadding
                    rightPadding: root.fieldPadding

                    background: Rectangle {
                        color: root.inputBackgroundColor
                        radius: root.fieldRadius
                        border.color: parent.activeFocus ? root.focusBorderColor : "transparent"
                        border.width: 1
                    }

                    Keys.onReturnPressed: {
                        root.addNewItem(newKeyInput.text, newValueInput.text);
                        newKeyInput.text = "";
                        newValueInput.text = "";
                        newKeyInput.focus = true;
                    }
                }

                // Add button
                Text {
                    id: addIcon
                    text: Fonts.iconPlus
                    color: root.addButtonColor
                    font.pixelSize: root.iconFontSize
                    anchors.verticalCenter: parent.verticalCenter

                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            root.addNewItem(newKeyInput.text, newValueInput.text);
                            newKeyInput.text = "";
                            newValueInput.text = "";
                            newKeyInput.focus = true;
                        }
                    }
                }
            }
        }
    }
}
```

## File: `modules/quickshell/config/modules/settingsWindow/components/RangeSlider.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import qs.settings

Item {
    id: root
    
    property alias from: slider.from
    property alias to: slider.to
    property alias value: slider.value
    property alias stepSize: slider.stepSize
    property int sliderWidth: 180
    property int valueTextWidth: 40
    
    signal sliderValueChanged(real value)
    
    implicitWidth: sliderWidth + valueTextWidth + 10
    implicitHeight: slider.implicitHeight
    
    Slider {
        id: slider
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: root.sliderWidth
        from: 0
        to: 100
        value: 50
        stepSize: 1
        
        onPressedChanged: {
            if (!pressed) {
                // Only emit signal when mouse is released
                root.sliderValueChanged(slider.value)
            }
        }
        
        background: Rectangle {
            x: slider.leftPadding
            y: slider.topPadding + slider.availableHeight / 2 - height / 2
            implicitWidth: root.sliderWidth
            implicitHeight: 4
            width: slider.availableWidth
            height: implicitHeight
            radius: 2
            color: Colors.brighten_10
            
            Rectangle {
                width: slider.visualPosition * parent.width
                height: parent.height
                color: Colors.lavender
                radius: 2
            }
        }
        
        handle: Rectangle {
            x: slider.leftPadding + slider.visualPosition * (slider.availableWidth - width)
            y: slider.topPadding + slider.availableHeight / 2 - height / 2
            implicitWidth: 20
            implicitHeight: 20
            radius: 10
            color: slider.pressed ? Colors.lavender : Colors.bg
            border.color: Colors.lavender
            border.width: 2
        }
    }
    
    Text {
        id: valueText
        anchors.left: slider.right
        anchors.leftMargin: 10
        anchors.verticalCenter: slider.verticalCenter
        width: root.valueTextWidth
        text: slider.value.toFixed(2)
        color: Colors.text
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 14
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/components/SettingsSection.qml`

```qml
/**
 * SettingsSection Component
 * 
 * Collapsible section container for organizing settings into titled, expandable groups.
 * Displays a clickable header with icon and title, toggles visibility of content.
 * Provides smooth animations for expand/collapse transitions.
 * 
 * Usage:
 *   SettingsSection {
 *       title: "Display Settings"
 *       icon: Fonts.iconMonitor
 *       expanded: true
 *       
 *       LineSetting {
 *           label.text: "Brightness"
 *           // control content here
 *       }
 *   }
 */

pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import qs.settings
import qs.components.animations

Item {
    id: root
    
    // Layout configuration
    property string title: "Section Title"
    property string icon: Fonts.iconSettings
    property bool expanded: true
    property alias content: contentContainer.children
    
    // Layout dimensions
    readonly property int headerHeight: 44
    readonly property int cornerRadius: 6
    readonly property int horizontalMargin: 12
    readonly property int verticalSpacing: 8
    readonly property int sectionSpacing: 16
    readonly property int headerIconSize: Fonts.h4
    readonly property int chevronIconSize: Fonts.h5
    
    // Animation timing (from qs.components.animations.AnimationConfig)
    readonly property int expandDuration: AnimationConfig.normal
    readonly property int colorAnimDuration: AnimationConfig.fast
    
    width: parent.width
    height: expanded ? headerHeight + contentContainer.height + sectionSpacing : headerHeight
    
    Behavior on height {
        NumberAnimation {
            duration: root.expandDuration
            easing.type: Easing.InOutQuad
        }
    }

    Column {
        anchors.fill: parent
        spacing: root.verticalSpacing
        
        // Clickable section header with icon, title, and expand/collapse indicator
        Rectangle {
            id: headerRect
            width: parent.width
            height: root.headerHeight
            radius: root.cornerRadius
            color: root.expanded ? Colors.brighten_5 : Colors.brighten_3
            
            Behavior on color {
                ColorAnimation {
                    duration: root.colorAnimDuration
                }
            }
            
            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: root.horizontalMargin
                anchors.rightMargin: root.horizontalMargin
                spacing: root.horizontalMargin
                
                // Section icon
                Text {
                    text: root.icon
                    font.pixelSize: root.headerIconSize
                    color: Colors.text
                    font.family: Fonts.iconFont
                }
                
                // Section title
                Text {
                    text: root.title
                    font.pixelSize: root.headerIconSize
                    color: Colors.text
                    Layout.fillWidth: true
                }
                
                // Expand/collapse chevron indicator
                Text {
                    text: root.expanded ? Fonts.iconChevronUp : Fonts.iconChevronDown
                    font.pixelSize: root.chevronIconSize
                    color: Colors.textSecondary
                    font.family: Fonts.iconFont
                    
                    Behavior on rotation {
                        NumberAnimation {
                            duration: root.expandDuration
                            easing.type: Easing.InOutQuad
                        }
                    }
                }
            }
            
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: root.expanded = !root.expanded
            }
        }
        
        // Content container: shows/hides child components with animation
        Column {
            id: contentContainer
            width: parent.width
            spacing: root.verticalSpacing
            visible: root.expanded
            opacity: root.expanded ? 1 : 0
            
            Behavior on opacity {
                NumberAnimation {
                    duration: root.colorAnimDuration
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/components/StyledButton.qml`

```qml
/**
 * StyledButton Component
 * 
 * Interactive button with customizable text, icon, and multi-state styling.
 * Supports normal, hover, and pressed visual states with smooth color animations.
 * Icon can be positioned left or right of text label.
 * 
 * Usage:
 *   StyledButton {
 *       buttonText: "Save Settings"
 *       iconText: Fonts.iconSave
 *       bgColor: Colors.brighten_3
 *       onButtonClicked: applyChanges()
 *   }
 * 
 * State Color Hierarchy:
 *   - Pressed state takes priority (highest visual feedback)
 *   - Hover state used when mouse is over but not pressed
 *   - Normal state is default appearance
 */

pragma ComponentBehavior: Bound

import QtQuick
import qs.settings
import qs.components.animations

Item {
    id: root

    // Text and icon content
    property alias buttonText: buttonLabel.text
    property alias iconText: buttonIcon.text
    property bool iconOnRight: true  // Position: true = right of text, false = left of text

    // Layout configuration
    readonly property int buttonPadding: 8
    readonly property int borderRadius: 6
    readonly property int itemSpacing: 8

    // Normal state colors
    property color bgColor: "transparent"
    property color textColor: Colors.text
    property color iconColor: Colors.text

    // Pressed state colors (highest priority for visual feedback)
    property color bgColorPressed: Colors.brighten_5
    property color textColorPressed: Colors.text
    property color iconColorPressed: Colors.text

    // Hover state colors (used when mouse enters without pressing)
    property color bgColorHover: Colors.brighten_5
    property color textColorHover: Colors.text
    property color iconColorHover: Colors.text

    // Typography
    property int fontSize: Fonts.p

    // User interaction signal
    signal buttonClicked()

    implicitWidth: contentRow.implicitWidth + buttonPadding * 4
    implicitHeight: contentRow.implicitHeight + buttonPadding * 2

    // Background rectangle with state-dependent coloring
    Rectangle {
        id: background
        anchors.fill: parent
        color: mouseArea.pressed ? root.bgColorPressed : mouseArea.containsMouse ? root.bgColorHover : root.bgColor
        radius: root.borderRadius

        AnimatedColor on color {}
    }

    // Button content layout: icon and text
    Row {
        id: contentRow
        spacing: root.itemSpacing
        layoutDirection: root.iconOnRight ? Qt.LeftToRight : Qt.RightToLeft
        anchors.centerIn: parent

        // Button text label
        Text {
            id: buttonLabel
            text: "Button"
            color: mouseArea.pressed ? root.textColorPressed : mouseArea.containsMouse ? root.textColorHover : root.textColor
            font.pixelSize: root.fontSize
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenter: parent.verticalCenter

            AnimatedColor on color {}
        }

        // Icon display (chevron down by default, customize via iconText property)
        Text {
            id: buttonIcon
            text: Fonts.iconChevronDown
            color: mouseArea.pressed ? root.iconColorPressed : mouseArea.containsMouse ? root.iconColorHover : root.iconColor
            font.family: Fonts.iconFont
            font.pixelSize: root.fontSize
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenter: parent.verticalCenter
            visible: text !== ""

            AnimatedColor on color {}
        }
    }

    // Mouse interaction handler: click detection and hover effects
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: root.buttonClicked()
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/components/TagList.qml`

```qml
/**
 * TagList Component
 * 
 * Displays a collection of tags in a flow layout with inline add/remove functionality.
 * Users can click to remove existing tags or type and add new ones via return key or add button.
 * Supports duplicate prevention and custom styling for tags and buttons.
 * 
 * Usage:
 *   TagList {
 *       items: ["tag1", "tag2", "tag3"]
 *       placeholderText: "Enter new tag..."
 *       onItemAdded: (item) => console.log("Added:", item)
 *       onItemRemoved: (item) => console.log("Removed:", item)
 *   }
 */

pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import qs.settings
import qs.components.animations

Item {
    id: root
    
    // Tag collection and display configuration
    property var items: []
    property string placeholderText: "Add item"
    
    // Visual styling for tags and buttons
    property color tagColor: Colors.brighten_5
    property color addButtonColor: Colors.green
    property color removeButtonColor: Colors.red
    
    // Layout dimensions
    readonly property int tagHeight: 28
    readonly property int tagRadius: 6
    readonly property int inputFieldWidth: 100
    readonly property int inputFieldHeight: 24
    readonly property int containerPadding: 16
    readonly property int containerSpacing: 8
    readonly property int tagHorizontalPadding: 8
    readonly property int containerExtraPadding: 8
    readonly property int focusBorderWidth: 1
    
    // Animation timing
    readonly property int focusAnimationDuration: AnimationConfig.fast
    
    // User interaction signals
    signal itemAdded(string item)
    signal itemRemoved(string item)
    
    implicitWidth: parent ? parent.width : 400
    implicitHeight: tagContainer.height
    
    // Helper function: validate and check for duplicates
    function isValidItem(item) {
        return item !== "" && !root.items.includes(item)
    }
    
    Rectangle {
        id: tagContainer
        width: parent.width
        height: tagFlow.height + (root.containerPadding * 2) + root.containerExtraPadding
        color: Colors.darken_20
        radius: root.containerSpacing
        
        Flow {
            id: tagFlow
            width: parent.width - (root.containerPadding * 2)
            spacing: root.containerSpacing
            anchors {
                left: parent.left
                right: parent.right
                top: parent.top
                margins: root.containerPadding
            }
            
            // Display existing tags with remove button
            Repeater {
                model: root.items
                
                delegate: Rectangle {
                    required property string modelData
                    required property int index
                    
                    id: tagDelegate
                    height: root.tagHeight
                    width: itemText.width + removeBtn.width + (root.tagHorizontalPadding * 2)
                    color: root.tagColor
                    radius: root.tagRadius
                    
                    Row {
                        anchors.centerIn: parent
                        spacing: root.containerExtraPadding
                        
                        // Tag text label
                        Text {
                            id: itemText
                            text: tagDelegate.modelData
                            color: Colors.text
                            font.pixelSize: Fonts.p
                            anchors.verticalCenter: parent.verticalCenter
                            leftPadding: root.tagHorizontalPadding
                        }
                        
                        // Remove tag button
                        Text {
                            id: removeBtn
                            text: Fonts.iconFalse
                            color: root.removeButtonColor
                            font.pixelSize: Fonts.h3
                            font.family: Fonts.iconFont
                            anchors.verticalCenter: parent.verticalCenter
                            rightPadding: root.tagHorizontalPadding
                            
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: root.itemRemoved(tagDelegate.modelData)
                            }
                        }
                    }
                }
            }
            
            // Input field and add button for new tags
            Rectangle {
                height: root.tagHeight
                width: newItemInput.width + addBtn.width + (root.tagHorizontalPadding * 2)
                color: root.tagColor
                radius: root.tagRadius
                border.color: newItemInput.activeFocus ? Colors.lavender : root.tagColor
                border.width: root.focusBorderWidth
                
                Behavior on border.color {
                    ColorAnimation {
                        duration: root.focusAnimationDuration
                    }
                }
                
                Row {
                    anchors.centerIn: parent
                    spacing: root.containerExtraPadding
                    
                    // Text input field for new tags
                    TextField {
                        id: newItemInput
                        width: root.inputFieldWidth
                        height: root.inputFieldHeight
                        placeholderText: root.placeholderText
                        color: Colors.text
                        font.pixelSize: Fonts.p
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        leftPadding: root.tagHorizontalPadding
                        rightPadding: root.containerExtraPadding
                        
                        background: Item {}
                        
                        Keys.onReturnPressed: {
                            let item = text.trim();
                            if (root.isValidItem(item)) {
                                root.itemAdded(item);
                                text = "";
                            }
                        }
                    }
                    
                    // Add new tag button
                    Text {
                        id: addBtn
                        text: Fonts.iconPlus
                        color: root.addButtonColor
                        font.pixelSize: Fonts.p
                        font.family: Fonts.iconFont
                        anchors.verticalCenter: parent.verticalCenter
                        rightPadding: root.tagHorizontalPadding
                        
                        MouseArea {
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onClicked: {
                                let item = newItemInput.text.trim();
                                if (root.isValidItem(item)) {
                                    root.itemAdded(item);
                                    newItemInput.text = "";
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/components/TextInput.qml`

```qml
pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import Quickshell.Wayland
import qs.settings

Item {
    id: root
    
    property alias text: textField.text
    property alias placeholderText: textField.placeholderText
    property int fieldWidth: 180
    
    signal textEdited(string text)
    
    implicitWidth: Math.min(root.fieldWidth, parent ? parent.width : root.fieldWidth)
    implicitHeight: textField.implicitHeight
    
    TextField {
        id: textField
        width: Math.min(root.fieldWidth, parent ? parent.width : root.fieldWidth)
        height: parent.height
        placeholderText: "Enter text..."
        color: Colors.text
        clip: true
        leftPadding: 8
        rightPadding: 8
        selectByMouse: true
        
        background: Rectangle {
            color: Colors.brighten_10
            radius: 6
            border.color: textField.activeFocus ? Colors.lavender : Colors.brighten_10
            border.width: 1
        }
        
        onTextChanged: root.textEdited(textField.text)
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/ComponentsSettings.qml`

```qml
import QtQuick
import QtQuick.Controls
import qs.components
import qs.modules.settingsWindow.components
import qs.settings

Item {
    id: root
    width: parent.width
    height: contentColumn.height + 40

    property var colorModel: [
        {
            itemText: "rosewater",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.rosewater,
            isSeparator: false,
            itemAction: "rosewater"
        },
        {
            itemText: "flamingo",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.flamingo,
            isSeparator: false,
            itemAction: "flamingo"
        },
        {
            itemText: "pink",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.pink,
            isSeparator: false,
            itemAction: "pink"
        },
        {
            itemText: "mauve",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.mauve,
            isSeparator: false,
            itemAction: "mauve"
        },
        {
            itemText: "red",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.red,
            isSeparator: false,
            itemAction: "red"
        },
        {
            itemText: "maroon",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.maroon,
            isSeparator: false,
            itemAction: "maroon"
        },
        {
            itemText: "peach",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.peach,
            isSeparator: false,
            itemAction: "peach"
        },
        {
            itemText: "yellow",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.yellow,
            isSeparator: false,
            itemAction: "yellow"
        },
        {
            itemText: "green",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.green,
            isSeparator: false,
            itemAction: "green"
        },
        {
            itemText: "teal",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.teal,
            isSeparator: false,
            itemAction: "teal"
        },
        {
            itemText: "sky",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.sky,
            isSeparator: false,
            itemAction: "sky"
        },
        {
            itemText: "sapphire",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.sapphire,
            isSeparator: false,
            itemAction: "sapphire"
        },
        {
            itemText: "blue",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.blue,
            isSeparator: false,
            itemAction: "blue"
        },
        {
            itemText: "lavender",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.lavender,
            isSeparator: false,
            itemAction: "lavender"
        },
        {
            itemText: "base",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.bg,
            isSeparator: false,
            itemAction: "base"
        },
        {
            itemText: "crust",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.textSecondary,
            isSeparator: false,
            itemAction: "crust"
        },
        {
            itemText: "mantle",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.bgDark,
            isSeparator: false,
            itemAction: "mantle"
        }
    ]

    Column {
        id: contentColumn
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            margins: 20
        }
        spacing: 4

        Text {
            text: "Component Settings"
            font.pixelSize: Fonts.h2
            color: Colors.text
        }

        LineSpacer {}

        // Launcher Settings Section
        Text {
            text: "Launcher"
            font.pixelSize: Fonts.h3
            color: Colors.text
        }

        LineSetting {
            labelText: "Accent Color"
            iconText: Fonts.iconPalette
            iconColor: Config.launcherAccent
            width: parent.width

            Dropdown {
                buttonText: Config.set.launcherAccent
                buttonWidth: 150
                model: root.colorModel

                onItemClicked: (action, data) => {
                    Config.set.launcherAccent = action;
                    console.log("Launcher accent changed to:", action);
                }
            }
        } 
        
        LineSetting {
            labelText: "Background Color"
            iconText: Fonts.iconPalette
            iconColor: Config.launcherBackground
            width: parent.width

            Dropdown {
                buttonText: Config.set.launcherBackground
                buttonWidth: 150
                model: root.colorModel

                onItemClicked: (action, data) => {
                                   Config.set.launcherBackground = action;
                                   console.log("Launcher background changed to:", action);
                               }
            }
        }

        LineSetting {
            labelText: "Launcher Width"
            iconText: Fonts.iconSpacing
            width: parent.width
            subTitle: "0 Defaults to 25% of Screen-width"
            minHeight: 60

            RangeSlider {
                from: 0
                to: 1000
                value: Config.launcherWidth
                stepSize: 10
                sliderWidth: 200

                onSliderValueChanged: value => {
                    Config.set.launcherWidth = value;
                    console.log("Launcher width set to:", value);
                }
            }
        }


        LineSpacer {
            height: 4
        }

        Column {
            id: excludedExtensions
            spacing: 8
            width: parent.width

            Text {
                text: "Excluded File-Extensions for search"
                font.pixelSize: Fonts.h5
                color: Colors.text
            }

            TagList {
                width: parent.width
                items: Config.excludedExtensions
                placeholderText: ".ext"

                onItemAdded: item => {
                    let newArray = [...Config.excludedExtensions, item];
                    Config.set.excludedExtensions = newArray;
                    console.log("Added extension:", item);
                }

                onItemRemoved: item => {
                    let newArray = [...Config.excludedExtensions];
                    let index = newArray.indexOf(item);
                    if (index > -1) {
                        newArray.splice(index, 1);
                        Config.set.excludedExtensions = newArray;
                        console.log("Removed extension:", item);
                    }
                }
            }
        }

        LineSpacer {}

        // Control Center Settings Section
        Text {
            text: "Control Center"
            font.pixelSize: Fonts.h3
            color: Colors.text
        }

        LineSetting {
            labelText: "Accent Color"
            iconText: Fonts.iconPalette
            iconColor: Config.controlCenterAccent
            width: parent.width

            Dropdown {
                buttonText: Config.set.controlCenterAccent
                buttonWidth: 150
                model: root.colorModel

                onItemClicked: (action, data) => {
                    Config.set.controlCenterAccent = action;
                    console.log("Control Center accent changed to:", action);
                }
            }
        }

        LineSetting {
            labelText: "Background Color"
            iconText: Fonts.iconPalette
            iconColor: Config.controlCenterBackground
            width: parent.width

            Dropdown {
                buttonText: Config.set.controlCenterBackground
                buttonWidth: 150
                model: root.colorModel

                onItemClicked: (action, data) => {
                    Config.set.controlCenterBackground = action;
                    console.log("Control Center background changed to:", action);
                }
            }
        }

        LineSetting {
            labelText: "Control Center Width"
            iconText: Fonts.iconSpacing
            width: parent.width
            subTitle: "0 Defaults to 20% of Screen-width"
            minHeight: 60

            RangeSlider {
                from: 0
                to: 1000
                value: Config.controlCenterWidth
                stepSize: 10
                sliderWidth: 200

                onSliderValueChanged: value => {
                    Config.set.controlCenterWidth = value;
                    console.log("Control Center width set to:", value);
                }
            }
        }

        LineSpacer {}

        // Bar Settings Section
        Text {
            text: "Bar"
            font.pixelSize: Fonts.h3
            color: Colors.text
        }

        LineSetting {
            labelText: "Show Volume Bar Always"
            iconText: Fonts.iconVolumeHigh
            width: parent.width

            Toggle {
                checked: Config.showVolumeBarAlways

                onToggled: checked => {
                    Config.set.showVolumeBarAlways = checked;
                    console.log("Show volume bar always:", checked);
                }
            }
        }

        LineSpacer {}

        // Clipboard History Settings Section
        Text {
            text: "Clipboard History"
            font.pixelSize: Fonts.h3
            color: Colors.text
        }

        LineSetting {
            labelText: "Accent Color"
            iconText: Fonts.iconPalette
            iconColor: Config.clipHistAccent
            width: parent.width

            Dropdown {
                buttonText: Config.set.clipHistAccent
                buttonWidth: 150
                model: root.colorModel

                onItemClicked: (action, data) => {
                    Config.set.clipHistAccent = action;
                    console.log("Clipboard History accent changed to:", action);
                }
            }
        }

        LineSetting {
            labelText: "Background Color"
            iconText: Fonts.iconPalette
            iconColor: Config.clipHistBackground
            width: parent.width

            Dropdown {
                buttonText: Config.set.clipHistBackground
                buttonWidth: 150
                model: root.colorModel

                onItemClicked: (action, data) => {
                    Config.set.clipHistBackground = action;
                    console.log("Clipboard History background changed to:", action);
                }
            }
        }

        LineSpacer {}

        Text {
            text: "Notifications"
            font.pixelSize: Fonts.h3
            color: Colors.text
        }

        LineSetting {
            labelText: "Notification Timeout (seconds)"
            iconText: Fonts.iconTimer
            width: parent.width

            RangeSlider {
                from: 1
                to: 30
                value: Config.defaultExpireTimeout / 1000
                stepSize: 1
                sliderWidth: 200

                onSliderValueChanged: value => {
                    Config.set.defaultExpireTimeout = value * 1000;
                    console.log("Notification timeout:", value, "seconds");
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/GeneralSettings.qml`

```qml
import QtQuick
import QtQuick.Controls
import Quickshell
import qs.components
import qs.modules.settingsWindow.components
import qs.settings

Item {
    id: root
    width: parent.width
    height: contentColumn.height + 40

    // Build model from available screens
    property var monitorModel: {
        var model = [];
        for (let i = 0; i < Quickshell.screens.length; i++) {
            const screen = Quickshell.screens[i];
            model.push({
                itemText: screen.name,
                itemIcon: Fonts.iconMonitor,
                itemIconColor: Colors.text,
                isSeparator: false,
                itemAction: screen.name
            });
        }
        return model;
    }

    property var themeModel: [
        {
            itemText: "Catppuccin Mocha",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.text,
            isSeparator: false,
            itemAction: "CatppuccinMocha"
        },
        {
            itemText: "Catppuccin Latte",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.text,
            isSeparator: false,
            itemAction: "CatppuccinLatte"
        },
        {
            itemText: "Catppuccin Frappe",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.text,
            isSeparator: false,
            itemAction: "CatppuccinFrappe"
        },
        {
            itemText: "Catppuccin Macchiato",
            itemIcon: Fonts.iconCircleFilled,
            itemIconColor: Colors.text,
            isSeparator: false,
            itemAction: "CatppuccinMacchiato"
        }
    ]

    Column {
        id: contentColumn
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            margins: 20
        }
        spacing: 4

        Text {
            text: "General Settings"
            font.pixelSize: Fonts.h2
            color: Colors.text
        }

        LineSpacer {}

        // Display Settings Section
        Text {
            text: "Display"
            font.pixelSize: Fonts.h3
            color: Colors.text
        }

        LineSetting {
            labelText: "Main Monitor"
            iconText: Fonts.iconMonitor
            width: parent.width

            Dropdown {
                buttonText: Config.mainMonitorId
                buttonWidth: 200
                model: root.monitorModel

                onItemClicked: (action, data) => {
                    Config.set.mainMonitorId = action;
                    console.log("Main monitor changed to:", data.text);
                }
            }
        }

        LineSpacer {}

        // Lock Screen Settings Section
        Text {
            text: "Lock Screen"
            font.pixelSize: Fonts.h3
            color: Colors.text
        }

        LineSetting {
            labelText: "Lock on Startup"
            iconText: Fonts.iconLockSettings
            width: parent.width

            Toggle {
                checked: Config.lockOnStartup

                onToggled: checked => {
                    Config.set.lockOnStartup = checked;
                    console.log("Lock on startup:", checked);
                }
            }
        }

        LineSetting {
            labelText: "Lockscreen Dimming"
            iconText: Fonts.iconDimming
            width: parent.width

            RangeSlider {
                from: 0
                to: 1
                stepSize: 0.05
                value: Config.lockscreenDimming
                sliderWidth: 200

                onSliderValueChanged: value => {
                    Config.set.lockscreenDimming = value;
                    console.log("Lockscreen dimming:", value);
                }
            }
        }

        LineSetting {
            labelText: "Show Splash on Lockscreen"
            iconText: Fonts.iconSplash
            width: parent.width

            Toggle {
                checked: Config.showSplashOnLockscreen

                onToggled: checked => {
                    Config.set.showSplashOnLockscreen = checked;
                    console.log("Show splash on lockscreen:", checked);
                }
            }
        }

        LineSpacer {}

        // Appearance Settings Section
        Text {
            text: "Appearance"
            font.pixelSize: Fonts.h3
            color: Colors.text
        }

        LineSetting {
            labelText: "Theme"
            iconText: Fonts.iconTheme
            width: parent.width

            Dropdown {
                buttonText: Config.theme
                buttonWidth: 200
                model: root.themeModel

                onItemClicked: (action, data) => {
                    Config.set.theme = action;
                    console.log("Theme changed to:", data.text);
                }
            }
        }

        LineSetting {
            labelText: "Transparency"
            iconText: Fonts.iconEye
            width: parent.width

            RangeSlider {
                from: 0
                to: 1
                stepSize: 0.01
                value: Config.transparency
                sliderWidth: 200

                onSliderValueChanged: value => {
                    Config.set.transparency = value;
                    console.log("Transparency:", value);
                }
            }
        }

        LineSetting {
            labelText: "Window Rounding"
            iconText: Fonts.iconRoundedCorner
            width: parent.width

            RangeSlider {
                from: 0
                to: 30
                stepSize: 1
                value: Config.windowRounding
                sliderWidth: 200

                onSliderValueChanged: value => {
                    Config.set.windowRounding = Math.round(value);
                    console.log("Window rounding:", value);
                }
            }
        }

        LineSetting {
            labelText: "Gaps Out"
            iconText: Fonts.iconGapsOut
            width: parent.width

            RangeSlider {
                from: 0
                to: 50
                stepSize: 1
                value: Config.gapsOut
                sliderWidth: 200

                onSliderValueChanged: value => {
                    Config.set.gapsOut = Math.round(value);
                    console.log("Gaps out:", value);
                }
            }
        }

        LineSetting {
            labelText: "Gaps In"
            iconText: Fonts.iconGapsIn
            width: parent.width

            RangeSlider {
                from: 0
                to: 30
                stepSize: 1
                value: Config.gapsIn
                sliderWidth: 200

                onSliderValueChanged: value => {
                    Config.set.gapsIn = Math.round(value);
                    console.log("Gaps in:", value);
                }
            }
        }

        LineSetting {
            labelText: "Drawer Margins"
            iconText: Fonts.iconGapsOut
            width: parent.width

            RangeSlider {
                from: 0
                to: 40
                stepSize: 2
                value: Config.drawerMargins
                sliderWidth: 200

                onSliderValueChanged: value => {
                    Config.set.drawerMargins = Math.round(value);
                    console.log("Drawer Margins:", value);
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/InfoSettings.qml`

```qml
import QtQuick
import QtQuick.Controls
import Quickshell
import qs.components
import qs.modules.settingsWindow.components
import qs.settings

Item {
    id: root
    width: parent.width
    height: contentColumn.height + 40

    Column {
        id: contentColumn
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            margins: 20
        }
        spacing: 4

        Text {
            text: "Info"
            font.pixelSize: Fonts.h2
            color: Colors.text
        }

        LineSpacer {}

        // Version Section

        Rectangle {
            width: parent.width
            height: versionText.height + 30
            color: Colors.darken_20
            radius: 8

            Row {
                id: versionText
                anchors {
                    left: parent.left
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    leftMargin: 16
                    rightMargin: 16
                }
                spacing: 4

                Text {
                    text: "Version: BlurShell v0.1.0"
                    font.pixelSize: Fonts.h4
                    color: Colors.text
                }
            }
        }

        LineSpacer {}

        // Common Issues Link
        Rectangle {
            width: parent.width
            height: issuesContent.height + 24
            color: issuesHovered ? Colors.brighten_10 : Colors.darken_20
            radius: 8

            property bool issuesHovered: false

            Column {
                id: issuesContent
                anchors {
                    left: parent.left
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    leftMargin: 16
                    rightMargin: 16
                }
                spacing: 4

                IconAndText {
                    iconText: Fonts.iconGithub
                    labelText: "Common Issues"
                    fontSize: Fonts.h5
                }

                Text {
                    text: "Something's not working? Check out common issues in the README"
                    font.pixelSize: Fonts.p
                    color: Colors.brighten_50
                    wrapMode: Text.WordWrap
                    width: parent.width - 32
                }
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onClicked: Qt.openUrlExternally("https://github.com/Hashtaxx/BlurShell")
                onEntered: parent.issuesHovered = true
                onExited: parent.issuesHovered = false
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/settingsWindow/SettingsWindow.qml`

```qml
import QtQuick
import QtQuick.Controls
import Quickshell
import QtQuick.Layouts
import qs.settings
import qs.components


FloatingWindow {
    id: root

    property var pages: [

        {
            "name": "General",
            "icon": Fonts.iconGeneralSettings,
            "component": "GeneralSettings.qml"
        },
        {
            "name": "Components",
            "icon": Fonts.iconSettings,
            "component": "ComponentsSettings.qml"
        },
        {
            "name": "Wallpaper",
            "icon": Fonts.iconImage,
            "component": "WallpaperSettings.qml"
        },
        {
            "name": "Info",
            "icon": Fonts.iconInfo,
            "component": "InfoSettings.qml"
        }
    ]
    property int currentPage: 0
    property int spacings: 12
    minimumSize: "800x500"
    maximumSize: "2000x1000"
    implicitWidth: 1100
    implicitHeight: 800

    visible: true
    title: "Quickshell Settings"
    color: Colors.bgBlur
    
    // Sync window visibility with AppState
    onVisibleChanged: {
        if (!visible && AppState.settingsWindowVisible) {
            AppState.closeSettingsWindow()
        }
    }

    RowLayout {
        anchors.fill: parent
        spacing: root.spacings
        anchors.margins: root.spacings / 3

        Rectangle {
            id: sideBarWrapper
            color: "transparent"
            Layout.fillWidth: false
            Layout.fillHeight: true
            Layout.minimumWidth: 200
            Layout.preferredWidth: 250
            Layout.maximumWidth: 400
            Layout.leftMargin: root.spacings
            Layout.topMargin: root.spacings
            Layout.bottomMargin: root.spacings

            Column {
                anchors.top: parent.top
                width: parent.width - 16
                anchors.margins: root.spacings
                spacing: root.spacings

                    /* Header / title area */
                    Rectangle {
                        width: parent.width
                        height: title.implicitHeight + root.spacings
                        color: "transparent"
                        radius: 8

                        Text {
                            id: title
                            text: "Settings"
                            font.pixelSize: Fonts.h1
                            color: Colors.text
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            anchors.leftMargin: 12
                        }
                    }

                    /* Menu items generated from root.pages */
                    Column {
                        id: menuColumn
                        width: parent.width
                        spacing: root.spacings / 2

                        Repeater {
                            model: root.pages
                            delegate: Rectangle {
                                id: menuItem
                                width: parent.width
                                height: 44
                                radius: 6
                                property bool hovered: false
                                color: root.currentPage === index ? Colors.brighten_10 : (hovered ? Colors.brighten_3 : "transparent")


                                IconAndText {
                                    iconText: modelData.icon
                                    labelText: modelData.name
                                    fontSize: Fonts.h5
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.left: parent.left
                                    anchors.leftMargin: 12
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    cursorShape: Qt.PointingHandCursor
                                    onClicked: root.currentPage = index
                                    onEntered: menuItem.hovered = true
                                    onExited: menuItem.hovered = false
                                }
                            }
                        }
                    }
            }
        }

        Rectangle {
            id: mainArea

            color: Colors.brighten_3
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.minimumWidth: 200
            Layout.preferredWidth: 800
            radius: Config.windowRounding

            ScrollView {
                anchors.fill: parent
                anchors.margins: root.spacings
                clip: true
                
                ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                ScrollBar.vertical.policy: ScrollBar.AsNeeded

                Loader {
                    id: contentLoader
                    width: parent.width
                    source: root.pages[root.currentPage].component
                    onLoaded: {
                        if (item) {
                            item.anchors.fill = undefined
                        }
                    }
                }
            }

        }

    }

}

```

## File: `modules/quickshell/config/modules/settingsWindow/WallpaperSettings.qml`

```qml
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import qs.components
import qs.settings
import qs.modules.settingsWindow.components

Item {
    id: root
    width: parent.width
    height: contentColumn.height + 40

    Column {
        id: contentColumn
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            margins: 20
        }
        spacing: 4

        Text {
            text: "Wallpaper Settings"
            font.pixelSize: Fonts.h2
            color: Colors.text
        }

        LineSpacer {}

        // Source Settings Section
        Text {
            text: "Source"
            font.pixelSize: Fonts.h3
            color: Colors.text
        }

        LineSetting {
            labelText: "Cycle through a directory"
            iconText: Fonts.iconFolder
            width: parent.width

            Toggle {
                checked: Config.useWallpaperDirectory

                onToggled: checked => {
                    Config.set.useWallpaperDirectory = checked;
                    console.log("Use wallpaper directory:", checked);
                }
            }
        }

        LineSetting {
            labelText: "Wallpaper Directory"
            iconText: Fonts.iconFolderOpen
            width: parent.width

            TextInput {
                fieldWidth: 300
                text: Config.wallpaperDirectory
                placeholderText: "~/Pictures/Wallpapers"
                onTextEdited: text => {
                    Config.set.wallpaperDirectory = Config.collapsePath(text);
                }
            }
        }

        // Image Picker - fills remaining space
        ImagePicker {
            id: imagePicker
            directoryPath: Config.wallpaperDirectory
            selectedImagePath: Config.wallpaperPath
            thumbnailSize: 140
            spacing: 16

            visible: !Config.useWallpaperDirectory
            Layout.fillWidth: true
            Layout.preferredHeight: 500

            onImageSelected: imagePath => {
                                 Config.set.wallpaperPath = Config.collapsePath(imagePath);
                             }
        }


        LineSpacer {
            visible: Config.useWallpaperDirectory
        }

        // Auto-Rotation Settings Section
        Text {
            text: "Auto-Rotation"
            font.pixelSize: Fonts.h3
            color: Colors.text
            visible: Config.useWallpaperDirectory
        }

        LineSetting {
            labelText: "Auto-Rotate Enabled"
            iconText: Fonts.iconReboot
            width: parent.width
            visible: Config.useWallpaperDirectory

            Toggle {
                checked: Config.autoRotateEnabled

                onToggled: checked => {
                    Config.set.autoRotateEnabled = checked;
                    console.log("Auto-rotate enabled:", checked);
                }
            }
        }

        LineSetting {
            labelText: "Rotation Interval (minutes)"
            iconText: Fonts.iconTimer
            width: parent.width
            visible: Config.useWallpaperDirectory
            opacity: Config.autoRotateEnabled ? 1.0 : 0.5

            RangeSlider {
                enabled: Config.autoRotateEnabled
                from: 1
                to: 120
                value: Config.autoRotateInterval / 60000
                stepSize: 1
                sliderWidth: 200

                onSliderValueChanged: value => {
                    Config.set.autoRotateInterval = value * 60000;
                    console.log("Auto-rotate interval:", value, "minutes");
                }
            }
        }

        LineSetting {
            labelText: "Pause on Manual Change"
            iconText: Fonts.iconPause
            width: parent.width
            visible: Config.useWallpaperDirectory
            opacity: Config.autoRotateEnabled ? 1.0 : 0.5

            Toggle {
                enabled: Config.autoRotateEnabled
                checked: Config.pauseAutoRotateOnManual

                onToggled: checked => {
                    Config.set.pauseAutoRotateOnManual = checked;
                    console.log("Pause on manual change:", checked);
                }
            }
        } 
        
        LineSpacer {}

        // Effects Settings Section
        Text {
            text: "Effects"
            font.pixelSize: Fonts.h3
            color: Colors.text
        }

        LineSetting {
            labelText: "Show Splash on Wallpaper"
            iconText: Fonts.iconSplash
            width: parent.width

            Toggle {
                checked: Config.showSplashOnWallpaper

                onToggled: checked => {
                    Config.set.showSplashOnWallpaper = checked;
                    console.log("Show splash on wallpaper:", checked);
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/wallpaper/Splash.qml`

```qml
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import qs.components
import qs.settings
import qs.services

Scope {
    id: splashScope

    // Create one splash window per screen
    Mainscreen {
        id: screenVariants

        delegate: PanelWindow {
            id: splashWindow
            
            required property var modelData
            
            screen: modelData
            exclusionMode : ExclusionMode.Ignore

            anchors {
                right: true
                bottom: true
            }

            margins{
                bottom: 50
                right: 100
            }

            implicitWidth: content.width
            implicitHeight: content.height

            color: "transparent"

            // Give the window an empty click mask so all clicks pass through it
            mask: Region {}

            WlrLayershell.keyboardFocus: WlrKeyboardFocus.None
            WlrLayershell.layer: WlrLayer.Bottom


            ColumnLayout {
                id: content
                spacing: 2


                Text {
                    text: HyprStats.splash
                    color: Colors.text
                    font.pointSize: 14
                    horizontalAlignment: Text.AlignRight
                    Layout.alignment: Qt.AlignRight
                    Layout.preferredWidth : 400
                    wrapMode: Text.WordWrap
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/modules/wallpaper/Wallpaper.qml`

```qml
/**
 * Wallpaper Component
 * 
 * Renders a wallpaper across all connected monitors with synchronized cross-fade transitions.
 * Creates one fullscreen window per screen and positions it on the Wayland background layer.
 * Uses a dual-image cross-fade pattern: the new wallpaper is preloaded into the inactive
 * layer, and all screens transition simultaneously when ready.
 * 
 * Architecture:
 * - Variants creates one PanelWindow per connected screen
 * - Each window contains two Image layers for the cross-fade effect
 * - WallpaperService manages state and notifies screens of new wallpapers
 * - Screen positioning accounts for multi-monitor virtual desktop coordinates
 * 
 * Usage:
 *   Wallpaper {
 *       // Automatically renders on all connected screens
 *       // Responds to WallpaperService wallpaper change events
 *   }
 */

pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import Quickshell.Wayland
import qs.settings
import qs.services

Scope {
    id: wallpaperScope
    reloadableId: "wallpaperModule"

    // Multi-screen rendering with one window per connected display
    Variants {
        id: screenVariants
        model: Quickshell.screens

        delegate: PanelWindow {
            id: wallpaperWindow

            // Capture screen reference early for stable access throughout component lifecycle
            required property var modelData

            // Fullscreen background window configuration
            screen: modelData
            exclusionMode: ExclusionMode.Ignore
            focusable: false

            anchors {
                top: true
                bottom: true
                left: true
                right: true
            }

            // Initialize Wayland layer configuration
            Component.onCompleted: {
                // Configure Wayland layer shell for background rendering: place below all other windows
                if (WlrLayershell != null) {
                    WlrLayershell.layer = WlrLayer.Background;
                    WlrLayershell.keyboardFocus = WlrKeyboardFocus.None;
                }

                // Load current wallpaper at startup
                if (WallpaperService.currentWallpaperPath) {
                    image1.source = "file://" + WallpaperService.currentWallpaperPath;
                }
            }

            // Current screen geometry (fetched from service, updates reactively)
            property var screenGeom: ScreenGeometry.getGeometry(modelData.name)

            // Cross-fade layer toggle: when true, image1 is shown; when false, image2 is shown
            property bool useFirstImage: true

            // Image positioning stored as objects to reduce property overhead
            property var image1Position: ({ scale: 1.0, x: 0, y: 0, width: 0, height: 0 })
            property var image2Position: ({ scale: 1.0, x: 0, y: 0, width: 0, height: 0 })

            // Cross-fade state machine: tracks which image is loading and when to trigger transition
            property bool waitingForImageLoad: false
            property bool targetIsImage2: false

            // Calculate positioning for an image
            function calculatePosition(sourceWidth, sourceHeight) {
                return ScreenGeometry.calculateScreenPositioning(
                    sourceWidth, 
                    sourceHeight, 
                    screenGeom.x, 
                    screenGeom.y
                );
            }

            // Recalculate positioning when screen geometry or images change
            function recalculatePositions() {
                if (image1.status === Image.Ready && image1.source !== "") {
                    image1Position = calculatePosition(image1.sourceSize.width, image1.sourceSize.height);
                }
                if (image2.status === Image.Ready && image2.source !== "") {
                    image2Position = calculatePosition(image2.sourceSize.width, image2.sourceSize.height);
                }
            }

            // React to screen geometry changes
            onScreenGeomChanged: recalculatePositions()

            // Background container with two image layers for cross-fade effect
            Rectangle {
                anchors.fill: parent
                color: Colors.bg  // Fallback background color during image loading

                // Primary image layer: shown when useFirstImage is true, fades out during transition
                Image {
                    id: image1
                    source: ""
                    width: wallpaperWindow.image1Position.scaledWidth
                    height: wallpaperWindow.image1Position.scaledHeight
                    x: wallpaperWindow.image1Position.x
                    y: wallpaperWindow.image1Position.y

                    fillMode: Image.PreserveAspectCrop
                    smooth: true
                    antialiasing: true
                    cache: false
                    asynchronous: true

                    // Opacity animates from 1.0 to 0.0 when transitioning to image2
                    opacity: wallpaperWindow.useFirstImage ? 1.0 : 0.0

                    Behavior on opacity {
                        NumberAnimation {
                            duration: WallpaperService.transitionDuration
                            easing.type: Easing.InOutQuad
                        }
                    }

                    // Calculate positioning once image dimensions are known
                    onStatusChanged: {
                        if (status === Image.Ready) {
                            wallpaperWindow.image1Position = wallpaperWindow.calculatePosition(sourceSize.width, sourceSize.height);
                        }
                    }
                }

                // Secondary image layer: shown when useFirstImage is false, fades in during transition
                Image {
                    id: image2
                    source: ""
                    width: wallpaperWindow.image2Position.scaledWidth
                    height: wallpaperWindow.image2Position.scaledHeight
                    x: wallpaperWindow.image2Position.x
                    y: wallpaperWindow.image2Position.y

                    fillMode: Image.PreserveAspectCrop
                    smooth: true
                    antialiasing: true
                    cache: false
                    asynchronous: true

                    // Opacity animates from 0.0 to 1.0 when transitioning to image2
                    opacity: wallpaperWindow.useFirstImage ? 0.0 : 1.0

                    Behavior on opacity {
                        NumberAnimation {
                            duration: WallpaperService.transitionDuration
                            easing.type: Easing.InOutQuad
                        }
                    }

                    onStatusChanged: {
                        if (status === Image.Ready) {
                            wallpaperWindow.image2Position = wallpaperWindow.calculatePosition(sourceSize.width, sourceSize.height);
                        }
                    }
                }
            }

            // Listen for wallpaper changes from service and pre-load into inactive image layer
            Connections {
                target: WallpaperService

                function onWallpaperChanged(newPath) {
                    if (!newPath) return;

                    // Determine target layer: if image1 is showing, load new wallpaper into image2 and vice versa
                    wallpaperWindow.targetIsImage2 = wallpaperWindow.useFirstImage;
                    wallpaperWindow.waitingForImageLoad = true;

                    // Load the new wallpaper into the inactive image layer for smooth cross-fade
                    if (wallpaperWindow.targetIsImage2) {
                        image2.source = newPath;
                        // Check if image was cached in memory (already loaded before)
                        if (image2.status === Image.Ready) {
                            wallpaperWindow.waitingForImageLoad = false;
                            WallpaperService.reportScreenReady(wallpaperWindow.modelData.name);
                        }
                    } else {
                        image1.source = newPath;
                        // Check if image was cached in memory (already loaded before)
                        if (image1.status === Image.Ready) {
                            wallpaperWindow.waitingForImageLoad = false;
                            WallpaperService.reportScreenReady(wallpaperWindow.modelData.name);
                        }
                    }
                }
            }

            // Monitor image1 status: when loaded and image1 is the target, notify service ready
            Connections {
                target: image1

                function onStatusChanged() {
                    if (wallpaperWindow.waitingForImageLoad && !wallpaperWindow.targetIsImage2 && image1.status === Image.Ready) {
                        wallpaperWindow.waitingForImageLoad = false;
                        WallpaperService.reportScreenReady(wallpaperWindow.modelData.name);
                    }
                }
            }

            // Monitor image2 status: when loaded and image2 is the target, notify service ready
            Connections {
                target: image2

                function onStatusChanged() {
                    if (wallpaperWindow.waitingForImageLoad && wallpaperWindow.targetIsImage2 && image2.status === Image.Ready) {
                        wallpaperWindow.waitingForImageLoad = false;
                        WallpaperService.reportScreenReady(wallpaperWindow.modelData.name);
                    }
                }
            }

            // Synchronize cross-fade transition across all screens: when all are ready, animate simultaneously
            Connections {
                target: WallpaperService

                function onAllScreensReady() {
                    // Perform the synchronized transition: toggle useFirstImage to trigger all screens' Behaviors
                    wallpaperWindow.useFirstImage = !wallpaperWindow.targetIsImage2;
                }
            }

            // Recalculate positioning when screen geometry changes
            Connections {
                target: ScreenGeometry

                function onScreenGeometriesChanged() {
                    wallpaperWindow.screenGeom = ScreenGeometry.getGeometry(wallpaperWindow.modelData.name);
                    wallpaperWindow.recalculatePositions();
                }
            }

            // Recalculate positioning when desktop dimensions change (e.g., multi-monitor configuration)
            Connections {
                target: ScreenGeometry

                function onTotalDesktopWidthChanged() {
                    wallpaperWindow.recalculatePositions();
                }

                function onTotalDesktopHeightChanged() {
                    wallpaperWindow.recalculatePositions();
                }
            }
        }
    }
}

```

## File: `modules/quickshell/config/services/network/WifiAccessPoint.qml`

```qml
pragma ComponentBehavior: Bound
import QtQuick
import qs.settings

QtObject {
    id: root
    
    // Properties from nmcli output
    property bool active: false
    property int strength: 0
    property int frequency: 0
    property string ssid: ""
    property string bssid: ""
    property string security: ""
    
    // UI state
    property bool askingPassword: false
    
    // Internal - last IPC object from nmcli
    property var lastIpcObject: null
    
    // Computed properties
    readonly property bool isSecure: security.trim().length > 0
    readonly property string strengthIcon: Fonts.iconWifi  // Simple WiFi icon
    
    // Update properties when lastIpcObject changes
    onLastIpcObjectChanged: {
        if (lastIpcObject) {
            active = lastIpcObject.active ?? false
            strength = lastIpcObject.strength ?? 0
            frequency = lastIpcObject.frequency ?? 0
            ssid = lastIpcObject.ssid ?? ""
            bssid = lastIpcObject.bssid ?? ""
            security = lastIpcObject.security ?? ""
        }
    }
}

```

## File: `modules/quickshell/config/services/Audio.qml`

```qml
/**
 * Audio Service Singleton
 * 
 * Provides centralized audio management through PipeWire integration. This service:
 * - Tracks all audio devices (sinks, sources, streams) and application audio nodes
 * - Manages audio device defaults (input/output selection)
 * - Handles volume control with muting, incremental adjustments, and visual feedback
 * - Automatically tracks object state changes for reactive UI updates
 * 
 * Usage: Audio.volume, Audio.toggleMute(), Audio.setDefaultSink(device)
 * Singleton instance ensures single source of truth for system audio state.
 */
pragma Singleton

import qs.settings
import Quickshell
import Quickshell.Services.Pipewire

Singleton {
    id: root

    // Partition PipeWire nodes into input devices (sources) and output devices (sinks)
    // Excludes stream nodes (per-application audio) to focus on physical/virtual hardware
    readonly property var nodes: Pipewire.nodes.values.reduce((acc, node) => {
        if (!node.isStream) {
            if (node.isSink)
                acc.outputDevices.push(node);
            else if (node.audio)
                acc.inputDevices.push(node);
        }
        return acc;
    }, {
        inputDevices: [],
        outputDevices: []
    })

    readonly property list<PwNode> outputDevices: nodes.outputDevices
    readonly property list<PwNode> inputDevices: nodes.inputDevices

    // Collect and deduplicate application audio streams (per-app sink nodes)
    // Deduplication ensures each application appears only once despite internal stream multiplexing
    readonly property var appNodes: {
        const nodes = Pipewire.nodes.values.filter((node) => {
            return node.isSink && node.isStream && node.audio;
        });
        
        // Use Set to efficiently track seen node IDs and filter duplicates
        const uniqueNodes = [];
        const seenIds = new Set();
        
        for (const node of nodes) {
            if (!seenIds.has(node.id)) {
                seenIds.add(node.id);
                uniqueNodes.push(node);
            }
        }
        
        return uniqueNodes;
    }

    // Default audio output device (sink) and input device (source)
    readonly property PwNode sink: Pipewire.defaultAudioSink
    readonly property PwNode source: Pipewire.defaultAudioSource

    // Output (speaker) mute and volume state: 0.0 (silent) to 1.0 (max)
    readonly property bool muted: !!sink?.audio?.muted
    readonly property real volume: sink?.audio?.volume ?? 0
    readonly property int volumePercent: Math.round(volume * 100)

    // Input (microphone) mute and volume state
    readonly property bool sourceMuted: !!source?.audio?.muted
    readonly property real sourceVolume: source?.audio?.volume ?? 0

    // Select appropriate volume icon based on mute state and volume level
    // Returns: mute icon if muted, low/medium/high based on volume thresholds
    readonly property string volumeIcon: {
        if (muted || volume === 0) return Fonts.iconVolumeMute;
        if (volume < 0.33) return Fonts.iconVolumeLow;
        if (volume < 0.66) return Fonts.iconVolumeMedium;
        return Fonts.iconVolumeHigh;
    }

    // Set output volume to specific level (0.0 to 1.0), unmuting if necessary
    function setVolume(newVolume: real): void {
        if (sink?.ready && sink?.audio) {
            sink.audio.muted = false;
            sink.audio.volume = Math.max(0, Math.min(1, newVolume));
        }
    }

    // Adjust output volume by delta amount (positive to increase, negative to decrease)
    function adjustVolume(delta: real): void {
        setVolume(volume + delta);
    }

    // Increase output volume by Config.audioIncrement percentage
    function volumeUp(): void {
        adjustVolume(Config.audioIncrement / 100);
    }

    // Decrease output volume by Config.audioIncrement percentage
    function volumeDown(): void {
        adjustVolume(-Config.audioIncrement / 100);
    }

    // Toggle output mute state on or off
    function toggleMute(): void {
        if (sink?.ready && sink?.audio) {
            sink.audio.muted = !muted;
        }
    }

    // Set output mute state explicitly (true = muted, false = unmuted)
    function setMute(mute: bool): void {
        if (sink?.ready && sink?.audio) {
            sink.audio.muted = mute;
        }
    }

    // Set input (source) volume to specific level (0.0 to 1.0), unmuting if necessary
    function setSourceVolume(newVolume: real): void {
        if (source?.ready && source?.audio) {
            source.audio.muted = false;
            source.audio.volume = Math.max(0, Math.min(1, newVolume));
        }
    }

    // Change default output device (affects all audio playback)
    function setDefaultSink(newSink: PwNode): void {
        Pipewire.preferredDefaultAudioSink = newSink;
    }

    // Change default input device (affects all audio recording)
    function setDefaultSource(newSource: PwNode): void {
        Pipewire.preferredDefaultAudioSource = newSource;
    }

    // Reactive state tracker: watches all audio devices and streams for changes
    // Ensures UI reactivity when devices connect/disconnect or properties change
    PwObjectTracker {
        objects: [root.sink, root.source, ...root.outputDevices, ...root.inputDevices]
    }
}

```

## File: `modules/quickshell/config/services/BackgroundWindows.qml`

```qml
// BackgroundWindows.qml
// Service to track windows on the special background workspace (-98)
pragma Singleton
pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import Quickshell.Hyprland

Singleton {
    id: root

    // Special workspace ID for background windows
    readonly property int specialWorkspaceId: -98

    // Workspaces data structure
    property var workspaces: ({})
    property int updateTrigger: 0

    // Signal emitted when workspaces data is refreshed
    signal workspacesRefreshed()

    // Get icon for appId by matching against DesktopEntry.id (case-insensitive)
    function getIconForAppId(appId) {
        if (!appId || !DesktopEntries || !DesktopEntries.applications || !DesktopEntries.applications.values) {
            return "";
        }

        const appIdLower = appId.toLowerCase();
        const entries = DesktopEntries.applications.values;

        for (let i = 0; i < entries.length; i++) {
            const entry = entries[i];
            if (entry.id && entry.id.toLowerCase() === appIdLower) {
                return entry.icon || "";
            }
        }

        return "";
    }

    // Refresh workspaces structure
    function refreshWorkspacesData() {
        const newWorkspaces = {};
        const wsValues = Hyprland.workspaces.values || [];

        for (let i = 0; i < wsValues.length; i++) {
            const ws = wsValues[i];
            const toplevelsArray = [];
            const tlValues = ws.toplevels.values || [];

            for (let j = 0; j < tlValues.length; j++) {
                const tl = tlValues[j];
                const appId = tl.wayland ? tl.wayland.appId : "";
                const icon = getIconForAppId(appId);
                
                toplevelsArray.push({
                    address: tl.address,
                    title: tl.title,
                    waylandAppId: appId,
                    icon: icon
                });
            }

            newWorkspaces[ws.name] = {
                id: ws.id,
                name: ws.name,
                toplevels: toplevelsArray
            };
        }

        root.workspaces = newWorkspaces;
        root.updateTrigger++;
        root.workspacesRefreshed();
    }

    // Get window address by appId (searches all workspaces)
    function getAddress(appId) {
        for (const wsId in root.workspaces) {
            const ws = root.workspaces[wsId];
            for (let i = 0; i < ws.toplevels.length; i++) {
                const tl = ws.toplevels[i];
                if (tl.waylandAppId === appId) {
                    return tl.address;
                }
            }
        }
        return null;
    }

    // Get window address by appId on special workspaces only
    function getAddressOnSpecial(appId) {
        for (const wsName in root.workspaces) {
            // Only search workspaces with "special" in the name
            if (wsName.includes("special")) {
                const ws = root.workspaces[wsName];
                for (let i = 0; i < ws.toplevels.length; i++) {
                    const tl = ws.toplevels[i];
                    if (tl.waylandAppId === appId) {
                        return tl.address;
                    }
                }
            }
        }
        return null;
    }

    // Get all windows with appId (across all workspaces)
    function getWindowsByAppId(appId) {
        const windows = [];
        for (const wsId in root.workspaces) {
            const ws = root.workspaces[wsId];
            for (let i = 0; i < ws.toplevels.length; i++) {
                const tl = ws.toplevels[i];
                if (tl.waylandAppId.toLowerCase() === appId.toLowerCase()) {
                    windows.push({
                        address: tl.address,
                        title: tl.title,
                        waylandAppId: tl.waylandAppId,
                        icon: tl.icon,
                        workspaceId: wsId,
                        workspaceName: ws.name
                    });
                }
            }
        }
        return windows;
    }

    // Get all appIds on a specific workspace
    function getAppIdsByWorkspace(workspaceName) {
        const ws = root.workspaces[workspaceName];
        if (!ws) return false;

        const appIds = [];
        for (let i = 0; i < ws.toplevels.length; i++) {
            const tl = ws.toplevels[i];
            if (tl.waylandAppId && !appIds.includes(tl.waylandAppId)) {
                appIds.push(tl.waylandAppId);
            }
        }
        return appIds;
    }

    // Get all appIds from special workspaces
    function getAppIdsOnSpecial() {
        const appIds = [];
        for (const wsName in root.workspaces) {
            // Only search workspaces with "special" in the name
            if (wsName.includes("special")) {
                const ws = root.workspaces[wsName];
                for (let i = 0; i < ws.toplevels.length; i++) {
                    const tl = ws.toplevels[i];
                    if (tl.waylandAppId && !appIds.includes(tl.waylandAppId)) {
                        appIds.push(tl.waylandAppId);
                    }
                }
            }
        }
        return appIds;
    }

    // Listen to Hyprland events
    Connections {
        target: Hyprland

        function onRawEvent(event) {
            const n = event.name;
            const baseName = n.replace(/v2$/, "");
            if (["openwindow", "closewindow", "movewindow", "activespecial"].includes(baseName)) {
                Hyprland.refreshWorkspaces();
                Hyprland.refreshToplevels();
                root.refreshWorkspacesData();
            }
        }
    }

    // Initial load
    Component.onCompleted: {
        root.refreshWorkspacesData();
    }
}

```

## File: `modules/quickshell/config/services/Bluetooth.qml`

```qml
pragma Singleton
pragma ComponentBehavior: Bound

import Quickshell
import Quickshell.Bluetooth
import Quickshell.Io
import QtQuick
import qs.settings

/**
 * Bluetooth service using Quickshell Bluetooth API.
 * Provides access to Bluetooth adapter and device management.
 */
Singleton {
    id: root

    // ===== Adapter State =====
    
    readonly property bool enabled: Bluetooth.defaultAdapter?.enabled ?? false
    readonly property bool discovering: Bluetooth.defaultAdapter?.discovering ?? false
    readonly property bool pairable: Bluetooth.defaultAdapter?.pairable ?? false
    readonly property bool discoverable: Bluetooth.defaultAdapter?.discoverable ?? false
    readonly property string adapterName: Bluetooth.defaultAdapter?.name ?? ""
    readonly property string adapterId: Bluetooth.defaultAdapter?.adapterId ?? ""
    readonly property bool blocked: false  // Will be updated by rfkill check
    
    // Error state
    property string lastError: ""
    
    // Discovery timer
    property int discoveryDuration: 30000  // 30 seconds
    
    // Internal state to prevent multiple simultaneous stop operations
    property bool isStoppingDiscovery: false
    
    // ===== Device Lists =====
    
    readonly property var allDevices: Bluetooth.devices?.values ?? []
    // Filter devices: only show those with a proper name (not just MAC address)
    readonly property var visibleDevices: allDevices.filter(d => {
        const name = d.name || d.deviceName || "";
        // Check if name exists and is not just a MAC address pattern
        // MAC addresses look like: XX:XX:XX:XX:XX:XX or similar
        const isMacAddress = /^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$/.test(name);
        return name.length > 0 && !isMacAddress;
    })
    
    // Sorted device list - reactive property that updates when devices change
    readonly property var sortedDevices: {
        const devices = [...visibleDevices];
        return devices.sort((a, b) => {
            // Connected devices first
            if (a.connected && !b.connected) return -1;
            if (!a.connected && b.connected) return 1;
            
            // Then paired devices
            if (a.paired && !b.paired) return -1;
            if (!a.paired && b.paired) return 1;
            
            // Then sort by name
            return (a.name || a.deviceName || a.address).localeCompare(b.name || b.deviceName || b.address);
        });
    }
    
    readonly property var connectedDevices: visibleDevices.filter(d => d.connected)
    readonly property var pairedDevices: visibleDevices.filter(d => d.paired)
    
    // ===== Connection State =====
    
    readonly property bool hasConnectedDevices: connectedDevices.length > 0
    readonly property int connectedDeviceCount: connectedDevices.length
    readonly property var firstConnectedDevice: connectedDevices.length > 0 ? connectedDevices[0] : null
    readonly property string firstConnectedDeviceName: firstConnectedDevice?.name ?? ""
    
    // ===== Icon State =====
    
    readonly property string bluetoothIcon: {
        if (!enabled) return Fonts.iconBluetoothOff;
        if (hasConnectedDevices) return Fonts.iconBluetoothConnect;
        return Fonts.iconBluetooth;
    }
    
    // ===== Control Functions =====
    
    /**
     * Enable or disable Bluetooth adapter
     */
    function enableBluetooth(enabled = true): void {
        if (Bluetooth.defaultAdapter) {
            Bluetooth.defaultAdapter.enabled = enabled;
        }
    }
    
    /**
     * Toggle Bluetooth on/off
     */
    function toggleBluetooth(): void {
        enableBluetooth(!root.enabled);
    }
    
    /**
     * Start scanning for nearby devices
     */
    function startDiscovery(): void {
        if (Bluetooth.defaultAdapter && root.enabled) {
            Bluetooth.defaultAdapter.discovering = true;
            // Start the timer to auto-stop discovery
            discoveryTimer.restart();
        }
    }
    
    /**
     * Stop scanning for devices and make adapter not discoverable
     */
    function stopDiscovery(): void {
        // Prevent multiple simultaneous stop operations
        if (root.isStoppingDiscovery) {
            console.log("Discovery stop already in progress, skipping...");
            return;
        }
        
        if (Bluetooth.defaultAdapter) {
            root.isStoppingDiscovery = true;
            
            try {
                // Only stop if actually discovering
                if (Bluetooth.defaultAdapter.discovering) {
                    Bluetooth.defaultAdapter.discovering = false;
                }
                
                // Make adapter not discoverable when closing panel
                if (Bluetooth.defaultAdapter.discoverable) {
                    Bluetooth.defaultAdapter.discoverable = false;
                }
            } catch (error) {
                // Silently ignore common errors during cleanup
                const errorStr = error.toString();
                if (!errorStr.includes("No discovery started") && 
                    !errorStr.includes("Operation already in progress")) {
                    console.error("Failed to stop discovery:", error);
                }
            } finally {
                // Always stop the timer and reset the flag
                discoveryTimer.stop();
                // Reset flag after a short delay to prevent rapid repeated calls
                Qt.callLater(() => {
                    root.isStoppingDiscovery = false;
                });
            }
        }
    }
    
    /**
     * Toggle device discovery
     */
    function toggleDiscovery(): void {
        if (root.discovering) {
            stopDiscovery();
        } else {
            startDiscovery();
        }
    }
    
    /**
     * Make adapter discoverable by other devices
     */
    function setDiscoverable(discoverable = true): void {
        if (Bluetooth.defaultAdapter) {
            Bluetooth.defaultAdapter.discoverable = discoverable;
        }
    }
    
    /**
     * Set adapter pairable state
     */
    function setPairable(pairable = true): void {
        if (Bluetooth.defaultAdapter) {
            Bluetooth.defaultAdapter.pairable = pairable;
        }
    }
    
    // ===== Device Functions =====
    
    /**
     * Connect to a Bluetooth device
     * Handles pairing if device is not yet paired
     */
    function connectDevice(device): void {
        if (!device || device.connected) return;
        
        // If device is not paired, pair it first
        if (!device.paired && !device.pairing) {
            console.log("Device not paired, initiating pairing for:", device.name || device.address);
            
            // Make adapter pairable
            if (Bluetooth.defaultAdapter) {
                Bluetooth.defaultAdapter.pairable = true;
                Bluetooth.defaultAdapter.discoverable = true;
            }
            
            // Trust device first for better pairing stability
            device.trusted = true;
            
            // Initiate pairing
            device.pair();
            
            // Note: Connection will happen automatically after pairing succeeds
            // via the onPairedChanged handler below
            return;
        }
        
        // Device is already paired, just connect
        if (device.paired && !device.connected) {
            console.log("Connecting to paired device:", device.name || device.address);
            if (!device.trusted) device.trusted = true;
            device.connect();
        }
    }
    
    /**
     * Disconnect from a Bluetooth device
     */
    function disconnectDevice(device): void {
        if (!device || !device.connected) return;
        device.disconnect();
    }
    
    /**
     * Forget (unpair) a device
     */
    function forgetDevice(device): void {
        if (!device) return;
        device.forget();
    }
    
    // ===== Background Processes =====
    
    // Start bluetoothctl agent to handle pairing
    Process {
        id: btAgent
        running: true
        command: ["bluetoothctl", "agent", "on"]
    }
    
    // ===== Timers =====
    
    // Auto-stop discovery after timeout
    Timer {
        id: discoveryTimer
        interval: root.discoveryDuration
        running: false
        repeat: false
        onTriggered: root.stopDiscovery()
    }
    
    // Stop discovery when Bluetooth is disabled
    onEnabledChanged: {
        if (!enabled) stopDiscovery();
    }
    
    // ===== Auto-trust and Auto-connect =====
    
    // Monitor device list changes to auto-trust newly paired devices
    Connections {
        target: Bluetooth.devices
        function onValuesChanged() {
            if (Bluetooth.devices) {
                [...Bluetooth.devices.values].forEach(device => {
                    // Auto-trust newly paired devices
                    if (device.paired && !device.trusted) {
                        console.log("Auto-trusting newly paired device:", device.name || device.address);
                        device.trusted = true;
                        
                        // Auto-connect after trusting (with small delay)
                        Qt.callLater(() => {
                            if (!device.connected) {
                                console.log("Auto-connecting trusted device:", device.name || device.address);
                                device.connect();
                            }
                        });
                    }
                });
            }
        }
    }
}

```

## File: `modules/quickshell/config/services/ClipService.qml`

```qml
pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import QtQml
import Quickshell
import Quickshell.Io

// Minimal clipboard history service using the `cliphist` CLI
// Exposes a simple list usable by the UI without extra deps
QtObject {
    id: root

    // Raw lines from `cliphist list` (usually: "<id> <preview text>")
    // Limited to 100 entries for performance
    property list<string> entries: []
    property int maxEntries: 100

    // Timestamp tracking: store when entries were first seen
    property var entryTimestamps: ({})
    property date lastRefreshTime: new Date()

    // Format relative time (e.g., "2m ago", "1h ago", "2d ago")
    function formatTimeAgo(timestamp) {
        if (!timestamp)
            return "Just now";

        var now = new Date();
        var seconds = Math.floor((now - timestamp) / 1000);

        if (seconds < 60)
            return "Just now";

        var minutes = Math.floor(seconds / 60);
        if (minutes < 60)
            return minutes + "m ago";

        var hours = Math.floor(minutes / 60);
        if (hours < 24)
            return hours + "h ago";

        var days = Math.floor(hours / 24);
        if (days < 7)
            return days + "d ago";

        var weeks = Math.floor(days / 7);
        if (weeks < 4)
            return weeks + "w ago";

        var months = Math.floor(days / 30);
        return months + "mo ago";
    }

    // UI-friendly objects
    // - text: content without the leading id or metadata
    // - entry: original line to feed back to cliphist
    // - isImage: heuristic detection for image entries
    // - id, width, height: parsed when available
    // - timestamp: when this entry was first seen
    // - timeAgo: human-readable relative time
    readonly property var preparedEntries: {
        var result = [];
        for (var i = 0; i < entries.length; i++) {
            var line = entries[i];
            var str = String(line);
            var textOnly = str.replace(/^\s*\S+\s+/, "");
            var idMatch = str.match(/^\s*(\d+)/);
            var entryId = idMatch ? idMatch[1] : str;
            var dims = textOnly.match(/(\d+)x(\d+)/);
            var isImage = /\[\[binary data/i.test(textOnly) || /\bimage\//i.test(textOnly) || !!dims;

            // Track timestamp: either use stored timestamp or estimate based on position
            var timestamp = root.entryTimestamps[entryId];
            if (!timestamp) {
                // Estimate: newer entries are at the top, each position = ~1 minute older
                var minutesOld = i * 1;
                timestamp = new Date(root.lastRefreshTime - minutesOld * 60000);
                // Don't modify entryTimestamps during preparedEntries calculation
                // Store it separately to avoid triggering re-evaluation
            }

            result.push({
                text: textOnly,
                entry: str,
                isImage: isImage,
                id: idMatch ? parseInt(idMatch[1]) : 0,
                width: dims ? parseInt(dims[1]) : 0,
                height: dims ? parseInt(dims[2]) : 0,
                timestamp: timestamp,
                timeAgo: root.formatTimeAgo(timestamp)
            });
        }
        return result;
    }

    // Escape a string for safe inclusion inside single quotes in a shell command
    function shellSingleQuoteEscape(s) {
        return String(s).replace(/'/g, "'\\''");
    }

    // Copy a specific history entry back into the clipboard (decoding if needed)
    function copy(entry) {
        // Use bash for the small pipeline
        Quickshell.execDetached(["bash", "-c", `echo '${shellSingleQuoteEscape(entry)}' | cliphist decode | wl-copy`]);
    }

    // Delete a specific entry from history
    function deleteEntry(entry) {
        // Extract the ID from the entry string
        var idMatch = String(entry).match(/^\s*(\d+)/);
        if (idMatch) {
            var entryId = idMatch[1];
            Quickshell.execDetached(["bash", "-c", `cliphist delete ${entryId}`]);
            // Optimistically update and schedule a refresh
            root.delayedUpdateTimer.restart();
        }
    }

    // Wipe the entire history and clear current clipboards
    function clearAll() {
        Quickshell.execDetached(["bash", "-c",
            // Try native wipe, fallback to deleting all ids if unavailable; also clear clipboard + primary
            "cliphist wipe || (cliphist list | awk '{print $1}' | xargs -r cliphist delete); wl-copy -c; wl-copy -pc"]);
        // Optimistically clear UI and schedule a refresh
        root.entries = [];
        root.delayedUpdateTimer.restart();
    }

    // Trigger a refresh from cliphist
    function refresh() {
        // Don't start a new refresh if one is already running
        if (readProc.running) return;
        
        root.lastRefreshTime = new Date();
        readProc.buffer = [];
        readProc.running = true;
    }

    // Update when the clipboard text changes (helps keep history fresh)
    property var _clipConn: Connections {
        target: Quickshell
        function onClipboardTextChanged() {
            root.delayedUpdateTimer.restart();
        }
    }

    property var delayedUpdateTimer: Timer {
        interval: 150   // small debounce to avoid races
        repeat: false
        onTriggered: root.refresh()
    }

    // Read the history via `cliphist list`
    property var readProc: Process {
        property list<string> buffer: []

        command: ["cliphist", "list"]

        stdout: SplitParser {
            onRead: line => root.readProc.buffer.push(line)
        }

        onStarted: {
            // Clear buffer when process starts to avoid accumulation
            root.readProc.buffer = [];
        }

        onRunningChanged: {
            if (!running) {
                // Accept the latest buffer when process stops (limited to maxEntries)
                var newEntries = root.readProc.buffer.slice(0, root.maxEntries);
                
                // Update timestamps for new entries before setting the entries property
                var newTimestamps = Object.assign({}, root.entryTimestamps);
                for (var i = 0; i < newEntries.length; i++) {
                    var str = String(newEntries[i]);
                    var idMatch = str.match(/^\s*(\d+)/);
                    var entryId = idMatch ? idMatch[1] : str;
                    
                    if (!newTimestamps[entryId]) {
                        // Estimate: newer entries are at the top, each position = ~1 minute older
                        var minutesOld = i * 1;
                        newTimestamps[entryId] = new Date(root.lastRefreshTime - minutesOld * 60000);
                    }
                }
                
                // Update both properties together to avoid intermediate states
                root.entryTimestamps = newTimestamps;
                root.entries = newEntries;
            }
        }
    }

    // Copy entry to clipboard and paste it after a short delay
    function copyAndPaste(entry) {
        // First, copy the entry to clipboard using cliphist decode
        Quickshell.execDetached(["bash", "-c", `echo '${shellSingleQuoteEscape(entry)}' | cliphist decode | wl-copy`]);

        // Wait briefly for clipboard to update, then paste
        Quickshell.execDetached(["bash", "-c", "sleep 0.1; wtype -M ctrl v -m ctrl"]);
    }

    // Just copy without pasting
    function copyOnly(entry) {
        Quickshell.execDetached(["bash", "-c", `echo '${shellSingleQuoteEscape(entry)}' | cliphist decode | wl-copy`]);
    }
}

```

## File: `modules/quickshell/config/services/DrawerFocusManager.qml`

```qml
pragma Singleton
import Quickshell


// Somehow the Drawer looses Focus, whenever a Popup like RelaodPopup or a Notification disappears and I have no clue how to fix this. I opted for just retriggering Focus whenever a popup get's closed. Whoever fixes this and can me explain how, you get a coffee!
Singleton {
    id: focusManager

    // Signal emitted when a popup window is closed/destroyed
    signal popupClosed()

    // Call this when any PanelWindow could close while a Drawer with a searchbar is open
    function notifyPopupClosed() {
        popupClosed()
    }
}

```

## File: `modules/quickshell/config/services/DwlService.qml`

```qml
pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

// DwlService for MangoWC
Singleton {
    id: root

    property bool dwlAvailable: false
    // Enable verbose debug logging for troubleshooting
    property bool debug: false
    property var outputs: ({})
    property int tagCount: 9
    property string activeOutput: ""

    signal stateChanged()

    Component.onCompleted: {
        checkMangoWC()
    }

    // Timer to poll MangoWC state - faster polling for better responsiveness
    Timer {
        interval: 100  
        running: root.dwlAvailable
        repeat: true
        onTriggered: root.getTagState()
    }

    Process {
        id: checkProcess
        command: ["sh", "-c", "pgrep -x mango || pgrep -x dwl"]
        running: false

        onExited: exitCode => {
            const wasAvailable = dwlAvailable
            dwlAvailable = (exitCode === 0)
            if (root.debug) console.log("DwlService: checkProcess exited, available=", dwlAvailable)
            
            if (dwlAvailable && !wasAvailable) {
                getTagState()
            } else if (!dwlAvailable && wasAvailable) {
                outputs = {}
                stateChanged()
            }
        }
    }

    Process {
        id: tagStateProcess
        command: ["mmsg", "-g", "-t", "-l"]
        running: false
        
        property var lineBuffer: []

        stdout: SplitParser {
            onRead: data => {
                tagStateProcess.lineBuffer.push(data)
            }
        }

        onExited: exitCode => {
            if (exitCode === 0 && tagStateProcess.lineBuffer.length > 0) {
                const fullOutput = tagStateProcess.lineBuffer.join('\n')
                parseTagOutput(fullOutput)
                if (root.debug) console.log("DwlService: tagStateProcess output:\n", fullOutput)
            }
            tagStateProcess.lineBuffer = []
        }
    }

    function parseTagOutput(data) {
        try {
            const lines = data.trim().split('\n')
            const newOutputs = {}
            
            for (const line of lines) {
                const parts = line.trim().split(/\s+/)
                
                if (parts.length < 3) continue
                
                const outputName = parts[0]
                const key = parts[1]
                
                if (!newOutputs[outputName]) {
                    newOutputs[outputName] = {
                        name: outputName,
                        tags: Array(tagCount).fill(null).map((_, i) => ({
                            tag: i,
                            state: 0,
                            clients: 0
                        })),
                        layout: "",
                        isSelected: true
                    }
                }
                
                if (key === "tag" && parts.length >= 5) {
                    const tagNum = parseInt(parts[2]) - 1
                    const state = parseInt(parts[3])
                    const clients = parseInt(parts[4])
                    
                    if (tagNum >= 0 && tagNum < tagCount) {
                        newOutputs[outputName].tags[tagNum] = {
                            tag: tagNum,
                            state: state,
                            clients: clients
                        }
                    }
                } else if (key === "layout") {
                    newOutputs[outputName].layout = parts[2]
                }
            }
            
            outputs = newOutputs
            if (Object.keys(newOutputs).length > 0) {
                activeOutput = Object.keys(newOutputs)[0]
            }
            if (root.debug) console.log("DwlService: parsed outputs ->", JSON.stringify(newOutputs))
            
            stateChanged()
            
        } catch (e) {
            console.error("Error parsing tag output:", e)
        }
    }

    function checkMangoWC() {
        checkProcess.running = true
    }

    function getTagState() {
        if (dwlAvailable) {
            tagStateProcess.running = true
            if (root.debug) console.log("DwlService: requesting tag state")
        }
    }

    function getOutputState(outputName) {
        return outputs[outputName] || null
    }

    function getActiveTags(outputName) {
        const output = getOutputState(outputName)
        if (!output || !output.tags) return []
        
        return output.tags
            .filter(tag => tag.state === 1)
            .map(tag => tag.tag)
    }

    function switchToTag(outputName, tagIndex) {
        if (!dwlAvailable) {
            console.warn("MangoWC not available")
            return
        }
        
        const tagNumber = tagIndex + 1
        console.log("Switching to tag", tagNumber, "on output", outputName)
        
        Quickshell.execDetached(["mmsg", "-t", tagNumber.toString()])
        if (root.debug) console.log("DwlService: switchToTag ->", outputName, tagIndex)
        refreshTimer.restart()
    }

    function toggleTag(outputName, tagIndex) {
        if (!dwlAvailable) return

        const output = getOutputState(outputName)
        if (!output || !output.tags) return

        let currentMask = 0
        output.tags.forEach(tag => {
            if (tag.state === 1) {
                currentMask |= (1 << tag.tag)
            }
        })

        const clickedMask = 1 << tagIndex
        let newMask = currentMask ^ clickedMask
        if (newMask === 0) {
            newMask = clickedMask
        }
        
        console.log("Toggling tag", tagIndex + 1, "on output", outputName, "new mask", newMask)
        
        Quickshell.execDetached(["mmsg", "-o", outputName, "-v", newMask.toString()])
        if (root.debug) console.log("DwlService: toggleTag ->", outputName, tagIndex, "mask", newMask)
        refreshTimer.restart()
    }

    function moveToTag(outputName, tagIndex) {
        if (!dwlAvailable) {
            console.warn("MangoWC not available")
            return
        }
        
        const tagNumber = tagIndex + 1
        console.log("Moving window to tag", tagNumber, "on output", outputName)
        
        // Use -s -t to set/move the focused window to a tag
        Quickshell.execDetached(["mmsg", "-o", outputName, "-s", "-t", tagNumber.toString()])
        if (root.debug) console.log("DwlService: moveToTag ->", outputName, tagIndex)
        refreshTimer.restart()
    }

    // Simple IPC debugging interface
    IpcHandler {
        target: "dwl"

        function setDebug(enabled) {
            root.debug = !!enabled
            console.log("DwlService: debug set to", root.debug)
        }

        function dumpState() {
            return JSON.stringify({ dwlAvailable: root.dwlAvailable, activeOutput: root.activeOutput, outputs: root.outputs })
        }
    }

    // Refresh state after commands
    Timer {
        id: refreshTimer
        interval: 150
        onTriggered: root.getTagState()
    }

    // Periodic check if MangoWC is still running
    Timer {
        interval: 2000
        running: true
        repeat: true
        onTriggered: {
            if (!root.dwlAvailable) {
                root.checkMangoWC()
            }
        }
    }
}

```

## File: `modules/quickshell/config/services/DwlWindows.qml`

```qml
pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import "."

Singleton {
    id: root
    property var windowList: []
    property var manualTagMap: ({})
    property var manualMonitorMap: ({})
    signal windowsChanged()
    function windowsForTag(monitorName, tagIndex) {
        return windowList.filter(w => w.monitorName === monitorName && w.tagIndex === tagIndex)
    }
    function windowCountForTag(monitorName, tagIndex) {
        return windowsForTag(monitorName, tagIndex).length
    }
    function moveWindowToTag(toplevel, targetTagIndex) {
        if (!toplevel) return
        let monitorName = ""
        if (toplevel.outputs && toplevel.outputs.length > 0) {
            monitorName = toplevel.outputs[0].name
        }
        let key = getWindowKey(toplevel)
        manualTagMap[key] = targetTagIndex
        if (monitorName) manualMonitorMap[key] = monitorName
        toplevel.activate()
        let outputToUse = monitorName || DwlService.activeOutput
        moveTimer.targetTag = targetTagIndex
        moveTimer.targetOutput = outputToUse
        moveTimer.restart()
        Qt.callLater(refreshWindowList)
    }

    function closeWindow(toplevel) {
        if (!toplevel) return
        let key = getWindowKey(toplevel)
        delete manualTagMap[key]
        delete manualMonitorMap[key]
        toplevel.requestClose()
        Qt.callLater(refreshWindowList)
    }

    function getWindowKey(toplevel) {
        return (toplevel.appId || "unknown") + "_" + (toplevel.title || "untitled")
    }

    function refreshWindowList() {
        let toplevels = ToplevelManager.toplevels.values.filter(t => t && t.title !== "")
        let newWindowList = []
        
        let outputNames = Object.keys(DwlService.outputs)
        
        let monitorTagCounts = {} 
        for (let name of outputNames) {
            let state = DwlService.getOutputState(name)
            if (state && state.tags) {
                monitorTagCounts[name] = state.tags.map(t => t.clients || 0)
            } else {
                monitorTagCounts[name] = Array(9).fill(0)
            }
        }
        
        let monitorAssignedCounts = {}
        for (let name of outputNames) {
            monitorAssignedCounts[name] = Array(9).fill(0)
        }

        function monitorHasRoom(mName) {
            if (!monitorTagCounts[mName]) return false
            let totalExpected = monitorTagCounts[mName].reduce((a,b) => a+b, 0)
            let totalAssigned = monitorAssignedCounts[mName].reduce((a,b) => a+b, 0)
            return totalAssigned < totalExpected
        }
        
        let knownToplevels = []
        let unknownToplevels = [] 
        
        for (let toplevel of toplevels) {
            let key = getWindowKey(toplevel)
            
            if (manualMonitorMap[key]) {
                toplevel.manualMonitor = manualMonitorMap[key]
                toplevel.manualTag = manualTagMap[key]
                knownToplevels.push(toplevel)
                continue
            }
            
            let foundOutput = false
            if (toplevel.outputs && toplevel.outputs.length > 0) {
                 for (let o of toplevel.outputs) {
                     if (outputNames.includes(o.name)) {
                         toplevel.detectedMonitor = o.name
                         foundOutput = true
                         break
                     }
                 }
            }
            
            if (foundOutput) {
                knownToplevels.push(toplevel)
            } else {
                unknownToplevels.push(toplevel)
            }
        }
        
        for (let toplevel of knownToplevels) {
            let key = getWindowKey(toplevel)
            let monitorName = toplevel.manualMonitor || toplevel.detectedMonitor
            
            let assignedTag = -1
            
            if (toplevel.manualTag !== undefined) {
                assignedTag = toplevel.manualTag
            } else {
                let counts = monitorTagCounts[monitorName] || Array(9).fill(0)
                let assigneds = monitorAssignedCounts[monitorName] || Array(9).fill(0)
                
                for (let t = 0; t < 9; t++) {
                    if (counts[t] > 0 && assigneds[t] < counts[t]) {
                        assignedTag = t
                        break
                    }
                }
                if (assignedTag === -1) {
                     let activeTags = DwlService.getActiveTags(monitorName)
                     assignedTag = activeTags.length > 0 ? activeTags[0] : 0
                }
            }
            
            if (!monitorAssignedCounts[monitorName]) monitorAssignedCounts[monitorName] = Array(9).fill(0)
            monitorAssignedCounts[monitorName][assignedTag]++
            
            newWindowList.push({
                toplevel: toplevel,
                tagIndex: assignedTag,
                monitorName: monitorName,
                appId: toplevel.appId || "unknown",
                title: toplevel.title || "untitled",
                activated: toplevel.activated || false
            })
        }
        for (let toplevel of unknownToplevels) {
            let chosenMonitor = ""
            
            if (monitorHasRoom(DwlService.activeOutput)) {
                chosenMonitor = DwlService.activeOutput
            } else {
                for (let m of outputNames) {
                    if (monitorHasRoom(m)) {
                        chosenMonitor = m
                        break
                    }
                }
            }
            
            if (!chosenMonitor) continue
            
            let counts = monitorTagCounts[chosenMonitor] || Array(9).fill(0)
            let assigneds = monitorAssignedCounts[chosenMonitor] || Array(9).fill(0)
            let assignedTag = -1
            
            for (let t = 0; t < 9; t++) {
                if (counts[t] > 0 && assigneds[t] < counts[t]) {
                    assignedTag = t
                    break
                }
            }
            if (assignedTag === -1) {
                 let activeTags = DwlService.getActiveTags(chosenMonitor)
                 assignedTag = activeTags.length > 0 ? activeTags[0] : 0
            }
            
            if (!monitorAssignedCounts[chosenMonitor]) monitorAssignedCounts[chosenMonitor] = Array(9).fill(0)
            monitorAssignedCounts[chosenMonitor][assignedTag]++
            
            newWindowList.push({
                toplevel: toplevel,
                tagIndex: assignedTag,
                monitorName: chosenMonitor,
                appId: toplevel.appId || "unknown",
                title: toplevel.title || "untitled",
                activated: toplevel.activated || false
            })
        }
        
        windowList = newWindowList
        windowsChanged()
    }

    Timer {
        id: moveTimer
        property int targetTag: -1
        property string targetOutput: ""
        interval: 150
        onTriggered: {
            if (targetTag >= 0 && targetOutput !== "") {
                DwlService.moveToTag(targetOutput, targetTag)
                DwlService.getTagState()
                targetTag = -1
                targetOutput = ""
            }
        }
    }

    Connections {
        target: ToplevelManager.toplevels
        function onValuesChanged() { refreshWindowList() }
    }

    Connections {
        target: DwlService
        function onStateChanged() { refreshWindowList() }
    }

    Component.onCompleted: refreshWindowList()
}

```

## File: `modules/quickshell/config/services/FileSearch.qml`

```qml
pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick
import qs.settings

Singleton {
    id: root

    property string currentQuery: ""
    property var searchResults: []
    property bool isSearching: false
    property bool hasPerformedSearch: false  // Tracks if any search/listing has completed
    property int maxResults: 100
    property int operationId: 0  // Track which operation is current
    property int lastCompletedOperationId: -1  // Track last completed operation to prevent duplicates

    signal resultsReady()

    // Sort function: directories first, then by name (case-insensitive)
    function sortResults(results) {
        return results.sort((a, b) => {
            // Directories come before files
            if (a.isDirectory !== b.isDirectory) {
                return a.isDirectory ? -1 : 1;
            }
            // Within same type, sort alphabetically (case-insensitive)
            return a.name.toLowerCase().localeCompare(b.name.toLowerCase());
        });
    }

    // Debounce timer to avoid too many searches
    property Timer searchTimer: Timer {
        id: searchTimer
        interval: 300
        repeat: false
        onTriggered: root.performSearch()
    }

    // Search process
    property Process searchProcess: Process {
        id: searchProcess
        running: false
        property int myOperationId: 0  // Track which operation started this process

        stdout: StdioCollector {
            id: searchCollector
            onStreamFinished: {
                // Only process results if this is still the current operation
                if (searchProcess.myOperationId !== root.operationId) {
                    return;
                }
                
                // Prevent processing the same operation twice
                if (searchProcess.myOperationId === root.lastCompletedOperationId) {
                    return;
                }
                
                root.lastCompletedOperationId = searchProcess.myOperationId;
                root.isSearching = false;
                root.hasPerformedSearch = true;
                const lines = text.trim().split('\n').filter(line => line.length > 0);
                
                // Parse results into file objects
                const parsedResults = lines.slice(0, root.maxResults).map(path => {
                    const cleanPath = path.replace(/\/$/, ''); // Remove trailing slash
                    const parts = cleanPath.split('/');
                    const name = parts[parts.length - 1];
                    const isDirectory = path.endsWith('/'); // fd marks directories with /
                    
                    return {
                        path: cleanPath,
                        name: name || '/', // If name is empty, it's root directory
                        isDirectory: isDirectory,
                        parentPath: parts.slice(0, -1).join('/')
                    };
                });
                
                // Sort: directories first, then by name
                root.searchResults = root.sortResults(parsedResults);
                root.resultsReady();
            }
        }

        stderr: StdioCollector {
            id: errorCollector
            onStreamFinished: {
                if (text.length > 0) {
                    console.warn("FileSearch error:", text);
                }
            }
        }
    }

    // Directory listing process (for showing initial directory contents)
    property Process listProcess: Process {
        id: listProcess
        running: false
        property int myOperationId: 0  // Track which operation started this process

        stdout: StdioCollector {
            id: listCollector
            onStreamFinished: {
                // Only process results if this is still the current operation
                if (listProcess.myOperationId !== root.operationId) {
                    return;
                }
                
                // Prevent processing the same operation twice
                if (listProcess.myOperationId === root.lastCompletedOperationId) {
                    return;
                }
                
                root.lastCompletedOperationId = listProcess.myOperationId;
                root.isSearching = false;
                root.hasPerformedSearch = true;
                const lines = text.trim().split('\n').filter(line => line.length > 0);
                
                // Parse results into file objects (same format as search)
                const parsedResults = lines.map(path => {
                    const cleanPath = path.replace(/\/$/, '');
                    const parts = cleanPath.split('/');
                    const name = parts[parts.length - 1];
                    const isDirectory = path.endsWith('/');
                    
                    return {
                        path: cleanPath,
                        name: name || '/',
                        isDirectory: isDirectory,
                        parentPath: parts.slice(0, -1).join('/')
                    };
                });
                
                // Sort: directories first, then by name
                root.searchResults = root.sortResults(parsedResults);
                root.resultsReady();
            }
        }

        stderr: StdioCollector {
            id: listErrorCollector
            onStreamFinished: {
                if (text.length > 0) {
                    console.warn("FileSearch list error:", text);
                }
            }
        }
    }

    function search(query) {
        root.currentQuery = query;
        
        if (root.currentQuery.length === 0) {
            // Show directory contents instead of empty results
            listDirectory(Config.fileSearchPath);
            return;
        }

        // Execute immediately if debounce is disabled, otherwise use timer
        if (Config.useDebounceTimer) {
            searchTimer.restart();
        } else {
            performSearch();
        }
    }

    function expandTildePath(path) {
        if (!path) return "";
        if (path.startsWith("~/")) {
            const homeDir = Quickshell.env("HOME");
            return homeDir + path.substring(1);
        }
        if (path === "~") {
            return Quickshell.env("HOME");
        }
        return path;
    }

    function performSearch() {
        if (root.currentQuery.length === 0) {
            return;
        }

        // Increment operation ID to invalidate any previous operations
        root.operationId++;
        
        // Stop any running searches or listings
        if (searchProcess.running) {
            searchProcess.running = false;
        }
        if (listProcess.running) {
            listProcess.running = false;
        }

        root.isSearching = true;
        root.hasPerformedSearch = false;  // Reset until results are ready

        // Build fd command with config options
        let cmd = ["fd"];
        
        // Add query pattern
        cmd.push(root.currentQuery);
        
        // Add search path (ensure ~ is expanded)
        const searchPath = root.expandTildePath(Config.fileSearchPath);
        cmd.push(searchPath);
        
        // Add options based on config
        if (Config.includeHiddenFiles) {
            cmd.push("--hidden");
        }
        
        // Exclude extensions
        if (Config.excludedExtensions && Config.excludedExtensions.length > 0) {
            Config.excludedExtensions.forEach(ext => {
                cmd.push("--exclude");
                cmd.push(`*${ext}`);
            });
        }
        
        // Additional options
        cmd.push("--type", "f"); // files
        cmd.push("--type", "d"); // directories
        cmd.push("--max-results", root.maxResults.toString());
        cmd.push("--color", "never");
        cmd.push("--absolute-path");
        
        searchProcess.command = cmd;
        searchProcess.myOperationId = root.operationId;  // Tag this process with current operation
        searchProcess.running = true;
    }

    function openFile(filePath) {
        Quickshell.execDetached({
            command: ["xdg-open", filePath]
        });
    }

    function openContainingFolder(filePath) {
        const parentPath = filePath.substring(0, filePath.lastIndexOf('/'));
        Quickshell.execDetached({
            command: ["xdg-open", parentPath]
        });
    }

    function copyToClipboard(text) {
        // Use wl-copy for Wayland
        const copyProcess = Quickshell.exec({
            command: ["wl-copy", text]
        });
    }

    function listDirectory(dirPath) {
        // Increment operation ID to invalidate any previous operations
        root.operationId++;
        
        // Stop any running list process or search
        if (listProcess.running) {
            listProcess.running = false;
        }
        if (searchProcess.running) {
            searchProcess.running = false;
        }

        root.isSearching = true;
        root.hasPerformedSearch = false;  // Reset until results are ready

        // Expand ~ in directory path
        const expandedPath = root.expandTildePath(dirPath);

        // Build fd command to list directory contents (depth 1)
        let cmd = ["fd"];
        cmd.push(".");  // Match everything
        cmd.push(expandedPath);
        cmd.push("--max-depth", "1");
        cmd.push("--type", "f");  // files
        cmd.push("--type", "d");  // directories
        cmd.push("--color", "never");
        cmd.push("--absolute-path");
        
        if (Config.includeHiddenFiles) {
            cmd.push("--hidden");
        }

        listProcess.command = cmd;
        listProcess.myOperationId = root.operationId;  // Tag this process with current operation
        listProcess.running = true;
    }
}


```

## File: `modules/quickshell/config/services/HyprStats.qml`

```qml
pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import qs.settings

Singleton {
    id: root

    property var workspaceRules: ({})
    property string splash: ""    
    // TopLevel Window
    readonly property HyprlandToplevel activeToplevel: Hyprland.activeToplevel?.wayland?.activated ? Hyprland.activeToplevel : null
    // Workspaces
    readonly property var workspaces: Hyprland.workspaces
    readonly property HyprlandWorkspace focusedWorkspace: Hyprland.focusedWorkspace
    readonly property int activeWsId: focusedWorkspace?.id ?? 1

    // Emitted when monitors are added/removed
    signal monitorConfigChanged(string eventName)


    // Initialize on component creation
    Component.onCompleted: {
        // Load workspace rules from config if available
        if (Config.ready && Config.workspaceRules && Object.keys(Config.workspaceRules).length > 0) {
            root.workspaceRules = Config.workspaceRules;
        } else {
            refreshWorkspaceRules();
        }
    }

    // Refresh workspace rules
    function refreshWorkspaceRules() {
        getWorkspaceRules.running = true;
        getSplash.running = true;
    }

    // Get workspace rules
    Process {
        id: getWorkspaceRules
        running: true
        command: ["hyprctl", "workspacerules"]
        stdout: StdioCollector {
            id: workspaceRulesCollector
            onStreamFinished: {
                try {
                    const text = workspaceRulesCollector.text;
                    const lines = text.split('\n');
                    let currentWorkspace = null;
                    let currentMonitor = null;
                    let rulesByMonitor = {};
                    
                    for (let i = 0; i < lines.length; i++) {
                        const line = lines[i];
                        
                        // Match workspace rule header with number (e.g., "Workspace rule 1:")
                        const wsMatch = line.match(/^Workspace rule (\d+):/);
                        if (wsMatch) {
                            currentWorkspace = parseInt(wsMatch[1]);
                            currentMonitor = null;
                            continue;
                        }
                        
                        // Match monitor line
                        const monitorMatch = line.match(/^\s*monitor:\s*(.+)$/);
                        if (monitorMatch && currentWorkspace !== null) {
                            currentMonitor = monitorMatch[1].trim();
                            
                            // Only add if monitor is set (not <unset>)
                            if (currentMonitor !== "<unset>" && currentMonitor !== "") {
                                if (!rulesByMonitor[currentMonitor]) {
                                    rulesByMonitor[currentMonitor] = [];
                                }
                                rulesByMonitor[currentMonitor].push(currentWorkspace);
                            }
                            currentWorkspace = null;
                        }
                    }
                    
                    // Sort workspace arrays for each monitor
                    for (let monitor in rulesByMonitor) {
                        rulesByMonitor[monitor].sort((a, b) => a - b);
                    }
                    
                    root.workspaceRules = rulesByMonitor;
                    
                    // Save to config for persistence
                    saveWorkspaceRulesToConfig();
                } catch (e) {
                    console.error("Error parsing workspace rules:", e);
                }
            }
        }
    }

    // Save workspace rules to config file
    function saveWorkspaceRulesToConfig() {
        if (!Config.ready) {
            console.warn("Config not ready yet, skipping workspace rules save");
            return;
        }
        
        // Helper function to create a sorted JSON string for comparison
        function sortedStringify(obj) {
            if (typeof obj !== 'object' || obj === null) return JSON.stringify(obj);
            if (Array.isArray(obj)) return JSON.stringify(obj);
            
            // Sort object keys and create a new object with sorted keys
            const sortedObj = {};
            Object.keys(obj).sort().forEach(key => {
                sortedObj[key] = obj[key];
            });
            return JSON.stringify(sortedObj);
        }
        
        // Only save if workspace rules have changed
        const currentRulesJson = sortedStringify(root.workspaceRules);
        const configRulesJson = sortedStringify(Config.workspaceRules);
        
        if (currentRulesJson !== configRulesJson) {
            Config.set.workspaceRules = root.workspaceRules;
            console.log("Workspace rules saved to config");
        }
    }

    // Get splash text
    Process {
        id: getSplash
        running: true
        command: ["hyprctl", "splash"]
        stdout: StdioCollector {
            id: splashCollector
            onStreamFinished: {
                root.splash = splashCollector.text.trim();
            }
        }
    }

    // Listen to Hyprland events and update accordingly
    Connections {
        target: Hyprland

        function onRawEvent(event) {
            const n = event.name;
            
            // Skip v2 events
            if (n.endsWith("v2"))
                return;

            if (["workspace", "moveworkspace", "activespecial", "focusedmon", "openwindow", "closewindow", "movewindow"].includes(n)) {
            Hyprland.refreshWorkspaces();
            Hyprland.refreshToplevels();
            }
            // Workspace-specific events: refresh workspaces only
            else if (n.includes("workspace")) {
            Hyprland.refreshWorkspaces();
            }
            // Window-related events: refresh toplevels only
            else if (n.includes("window") || n.includes("group") || ["pin", "fullscreen", "changefloatingmode", "minimize"].includes(n)) {
            Hyprland.refreshToplevels();
            } 
            // Monitor configuration changed (hot-plug/unplug or suspend/resume)
            else if (n === "monitoradded" || n === "monitorremoved") {
                root.monitorConfigChanged(n);
            }
            else if (n === "configreloaded") {
                // When Hyprland config is reloaded, workspace rules may have changed
                console.log("Hyprland config reloaded, refreshing workspace rules and reloading components...");
                refreshWorkspaceRules();
                // Delay the reload slightly to let other events settle
                reloadDelayTimer.start();
            }
        }
    }

    Timer {
        id: reloadDelayTimer
        interval: 500
        repeat: false
        running: false
        onTriggered: {
            Quickshell.reload(false);
        }
    }
}

```

## File: `modules/quickshell/config/services/Hyprsunset.qml`

```qml
pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

/**
 * Simple hyprsunset service for controlling blue light filter.
 * Using the kill/launch approach for reliability since hyprctl doesn't always work consistently.
 */
Singleton {
    id: root
    
    // State
    property bool active: false
    property int colorTemperature: 3500
    
    // Fetch initial state on load
    Component.onCompleted: {
        fetchState();
    }
    
    function enable() {
        root.active = true;
        Quickshell.execDetached(["bash", "-c", `pidof hyprsunset || hyprsunset --temperature ${root.colorTemperature}`]);
    }

    function disable() {
        root.active = false;
        Quickshell.execDetached(["bash", "-c", `pkill hyprsunset`]);
    }

    function toggle() {
        if (root.active) {
            root.disable();
        } else {
            root.enable();
        }
    }

    function fetchState() {
        fetchProc.running = true;
    }

    Process {
        id: fetchProc
        running: false
        command: ["bash", "-c", "hyprctl hyprsunset temperature"]
        stdout: StdioCollector {
            id: stateCollector
            onStreamFinished: {
                const output = stateCollector.text.trim();
                if (output.length == 0 || output.startsWith("Couldn't"))
                    root.active = false;
                else
                    root.active = (output != "6500");
            }
        }
    }
    
    // Convenience property for backward compatibility
    readonly property bool nightLightEnabled: active
    
    function toggleNightLight() {
        toggle();
    }
    
    function setTemperature(temp) {
        if (temp < 1000 || temp > 10000) {
            return;
        }
        
        root.colorTemperature = temp;
        
        // If currently enabled, restart with new temperature
        if (active) {
            disable();
            // Small delay before re-enabling
            Qt.callLater(enable);
        }
    }
}

```

## File: `modules/quickshell/config/services/MediaService.qml`

```qml
pragma Singleton

// NOTE: Firefox + YouTube MPRIS Bug (as of 2025-10)
//
// When playing YouTube videos in Firefox, the MPRIS interface does NOT reset
// the "position" property when a new video starts (especially during autoplay).
// This means Mpris.players.values.position may continue increasing from the
// previous video instead of resetting to 0.
//
// The issue is upstream in Firefox’s MPRIS implementation (Bugzilla #1979495)
// and not a Quickshell or QML bug. YouTube Music and other players usually work
// correctly.

import QtQuick
import Quickshell
import Quickshell.Services.Mpris

Singleton {
    id: root

    // All available MPRIS players
    property var players: Mpris.players

    // Active player selection logic
    property var activePlayer: {
        const playerList = players?.values ?? [];

        // First try to find a playing player
        const playingPlayer = playerList.find(player => player.playbackState === MprisPlaybackState.Playing);

        if (playingPlayer)
            return playingPlayer;

        // Otherwise return the first available player
        return playerList[0] ?? null;
    }

    // Convenience properties
    property bool hasActivePlayer: activePlayer !== null
    property bool isPlaying: activePlayer?.playbackState === MprisPlaybackState.Playing || false

    // Display values for smooth position updates
    property real displayPosition: activePlayer?.position || 0
    property real displayLength: activePlayer?.length || 1

    // Timer for smooth position updates when playing
    Timer {
        id: positionTimer
        interval: 1000
        repeat: true
        running: root.isPlaying && root.activePlayer?.positionSupported || false

        onTriggered: {
            if (root.activePlayer && root.activePlayer.valid) {
                root.displayPosition = root.activePlayer.position;
            }
        }
    }

    // Update displayPosition when track changes or player changes
    onActivePlayerChanged: {
        if (activePlayer && activePlayer.valid) {
            displayPosition = activePlayer.position;
            displayLength = activePlayer.length;
        }
    }

    // Connect to track changes
    Connections {
        target: root.activePlayer
        enabled: root.activePlayer?.valid ?? false

        function onTrackChanged() {
            if (root.activePlayer && root.activePlayer.valid) {
                root.displayPosition = root.activePlayer.position;
                root.displayLength = root.activePlayer.length;
            }
        }

        function onPositionChanged() {
            if (root.activePlayer && root.activePlayer.valid) {
                root.displayPosition = root.activePlayer.position;
            }
        }

        function onLengthChanged() {
            if (root.activePlayer && root.activePlayer.valid) {
                root.displayLength = root.activePlayer.length;
            }
        }
    }
}

```

## File: `modules/quickshell/config/services/Network.qml`

```qml
pragma Singleton
pragma ComponentBehavior: Bound

import Quickshell
import Quickshell.Io
import QtQuick
import qs.settings
import qs.services.network

/**
* Network service using nmcli to manage WiFi and Ethernet connections.
* Based on implementation from caelestia-dots/shell (GPLv3)
*/
Singleton {
    id: root

    // Connection type states
    property bool wifi: true
    property bool ethernet: false

    // WiFi states
    property bool wifiEnabled: false
    property bool wifiScanning: false
    property bool wifiConnecting: connectProc.running
    property WifiAccessPoint wifiConnectTarget

    // WiFi networks list (mutable so we can add/remove networks)
    property var wifiNetworks: []

    readonly property WifiAccessPoint activeNetwork: {
        if (!wifiNetworks || wifiNetworks.length === 0)
            return null;
        return wifiNetworks.find(n => n.active) ?? null;
    }

    // Network info
    property string networkName: ""
    property int networkStrength: 0

    // Icon for current network state (uses Fonts icons)
    readonly property string wifiIcon: wifiEnabled ? Fonts.iconWifi : Fonts.iconWifiOff

    // ===== Control Functions =====

    /**
    * Enable or disable WiFi radio
    */
    function enableWifi(enabled = true): void {
        const cmd = enabled ? "on" : "off";
        enableWifiProc.exec(["nmcli", "radio", "wifi", cmd]);
    }

    /**
    * Toggle WiFi on/off
    */
    function toggleWifi(): void {
        enableWifi(!wifiEnabled);
    }

    /**
    * Rescan for available WiFi networks
    */
    function rescanWifi(): void {
        wifiScanning = true;
        rescanProcess.running = true;
    }

    /**
    * Connect to a WiFi network
    */
    function connectToWifiNetwork(accessPoint: WifiAccessPoint): void {
        accessPoint.askingPassword = false;
        root.wifiConnectTarget = accessPoint;
        // Use `nmcli dev wifi connect` as it creates a connection profile automatically
        connectProc.exec(["nmcli", "dev", "wifi", "connect", accessPoint.ssid]);
    }

    /**
    * Disconnect from current WiFi network
    */
    function disconnectWifiNetwork(): void {
        if (activeNetwork) {
            disconnectProc.exec(["nmcli", "connection", "down", activeNetwork.ssid]);
        }
    }

    /**
    * Open public WiFi portal (for captive portal login)
    */
    function openPublicWifiPortal(): void {
        Quickshell.execDetached(["xdg-open", "https://nmcheck.gnome.org/"]);
    }

    /**
    * Change password for a WiFi network
    */
    function changePassword(network: WifiAccessPoint, password: string): void {
        network.askingPassword = false;
        root.wifiConnectTarget = network;

        // Delete any existing connection profile first to avoid incomplete settings,
        // then connect with password using printf to pipe the password to nmcli --ask
        changePasswordProc.exec({
            "environment": {
                "PASSWORD": password,
                "SSID": network.ssid
            },
            "command": ["bash", "-c", `nmcli connection delete "$SSID" 2>/dev/null; printf '%s\\n' "$PASSWORD" | nmcli --ask dev wifi connect "$SSID"`]
        });
    }

    // ===== Internal Processes =====

    Process {
        id: enableWifiProc
        onExited: root.update()
    }

    Process {
        id: connectProc
        environment: ({
                LANG: "C",
                LC_ALL: "C"
            })
        stdout: SplitParser {
            onRead: line => {
                console.log("WiFi connect:", line);
                getNetworks.running = true;
            }
        }
        stderr: SplitParser {
            onRead: line => {
                console.error("WiFi connect error:", line);
                if (line.includes("Secrets were required") && root.wifiConnectTarget) {
                    root.wifiConnectTarget.askingPassword = true;
                }
            }
        }
        onExited: (exitCode, exitStatus) => {
            if (root.wifiConnectTarget) {
                root.wifiConnectTarget.askingPassword = (exitCode !== 0);
            }
            if (exitCode === 0) {
                root.update();
            }
            root.wifiConnectTarget = null;
        }
    }

    Process {
        id: disconnectProc
        stdout: SplitParser {
            onRead: () => {
                getNetworks.running = true;
                root.update();
            }
        }
    }

    Process {
        id: changePasswordProc
        stdout: SplitParser {
            onRead: line => {
                console.log("WiFi password connect:", line);
                getNetworks.running = true;
            }
        }
        stderr: SplitParser {
            onRead: line => {
                console.error("WiFi password connect error:", line);
            }
        }
        onExited: (exitCode, exitStatus) => {
            if (exitCode === 0) {
                root.update();
            } else if (root.wifiConnectTarget) {
                root.wifiConnectTarget.askingPassword = true;
            }
            root.wifiConnectTarget = null;
        }
    }

    Process {
        id: rescanProcess
        command: ["nmcli", "dev", "wifi", "list", "--rescan", "yes"]
        stdout: SplitParser {
            onRead: () => {
                getNetworks.running = true;
            }
        }
        onExited: (exitCode, exitStatus) => {
            root.wifiScanning = false;
        }
    }

    // ===== Status Monitoring =====

    /**
    * Update all network status information
    */
    function update(): void {
        updateConnectionType.startCheck();
        wifiStatusProcess.running = true;
        updateNetworkName.running = true;
        updateNetworkStrength.running = true;
        getNetworks.running = true;
    }

    // Monitor network changes
    Process {
        id: subscriber
        running: true
        command: ["nmcli", "monitor"]
        stdout: SplitParser {
            onRead: root.update()
        }
    }

    // Check connection type (WiFi vs Ethernet)
    Process {
        id: updateConnectionType
        property string buffer
        command: ["sh", "-c", "nmcli -t -f NAME,TYPE,DEVICE c show --active"]
        running: true

        function startCheck(): void {
            buffer = "";
            updateConnectionType.running = true;
        }

        stdout: SplitParser {
            onRead: data => {
                updateConnectionType.buffer += data + "\n";
            }
        }

        onExited: (exitCode, exitStatus) => {
            const lines = updateConnectionType.buffer.trim().split('\n');
            let hasEthernet = false;
            let hasWifi = false;

            lines.forEach(line => {
                if (line.includes("ethernet"))
                    hasEthernet = true;
                else if (line.includes("wireless"))
                    hasWifi = true;
            });

            root.ethernet = hasEthernet;
            root.wifi = hasWifi;
        }
    }

    // Get active network name
    Process {
        id: updateNetworkName
        command: ["sh", "-c", "nmcli -t -f NAME c show --active | head -1"]
        running: true
        stdout: SplitParser {
            onRead: data => {
                root.networkName = data.trim();
            }
        }
    }

    // Get WiFi signal strength
    Process {
        id: updateNetworkStrength
        running: true
        command: ["sh", "-c", "nmcli -f IN-USE,SIGNAL,SSID device wifi | awk '/^\\*/{if (NR!=1) {print $2}}'"]
        stdout: SplitParser {
            onRead: data => {
                root.networkStrength = parseInt(data) || 0;
            }
        }
    }

    // Check if WiFi is enabled
    Process {
        id: wifiStatusProcess
        command: ["nmcli", "radio", "wifi"]
        Component.onCompleted: running = true
        environment: ({
                LANG: "C",
                LC_ALL: "C"
            })
        stdout: StdioCollector {
            onStreamFinished: {
                root.wifiEnabled = text.trim() === "enabled";
            }
        }
    }

    // Get list of available WiFi networks
    Process {
        id: getNetworks
        running: true
        command: ["nmcli", "-g", "ACTIVE,SIGNAL,FREQ,SSID,BSSID,SECURITY", "d", "w"]
        environment: ({
                LANG: "C",
                LC_ALL: "C"
            })
        stdout: StdioCollector {
            onStreamFinished: {
                const PLACEHOLDER = "STRINGWHICHHOPEFULLYWONTBEUSED";
                const rep = new RegExp("\\\\:", "g");
                const rep2 = new RegExp(PLACEHOLDER, "g");

                const allNetworks = text.trim().split("\n").map(n => {
                    const net = n.replace(rep, PLACEHOLDER).split(":");
                    return {
                        active: net[0] === "yes",
                        strength: parseInt(net[1]),
                        frequency: parseInt(net[2]),
                        ssid: net[3],
                        bssid: net[4]?.replace(rep2, ":") ?? "",
                        security: net[5] || ""
                    };
                }).filter(n => n.ssid && n.ssid.length > 0);

                // Group networks by SSID and prioritize connected ones
                const networkMap = new Map();
                for (const network of allNetworks) {
                    const existing = networkMap.get(network.ssid);
                    if (!existing) {
                        networkMap.set(network.ssid, network);
                    } else {
                        // Prioritize active/connected networks
                        if (network.active && !existing.active) {
                            networkMap.set(network.ssid, network);
                        } else if (!network.active && !existing.active) {
                            // If both are inactive, keep the one with better signal
                            if (network.strength > existing.strength) {
                                networkMap.set(network.ssid, network);
                            }
                        }
                    }
                }

                // Sort networks: active first, then by signal strength
                const wifiNetworks = Array.from(networkMap.values()).sort((a, b) => {
                    // Active networks first
                    if (a.active && !b.active)
                        return -1;
                    if (!a.active && b.active)
                        return 1;
                    // Then by signal strength (descending)
                    return b.strength - a.strength;
                });

                const rNetworks = root.wifiNetworks;
                // Remove networks that no longer exist
                const destroyed = rNetworks.filter(rn => !wifiNetworks.find(n => n.frequency === rn.frequency && n.ssid === rn.ssid && n.bssid === rn.bssid));

                for (const network of destroyed) {
                    rNetworks.splice(rNetworks.indexOf(network), 1).forEach(n => n.destroy());
                }

                // Clear and rebuild the list to maintain proper order
                const newNetworkList = [];

                // Update or create network objects in sorted order
                for (const network of wifiNetworks) {
                    const match = rNetworks.find(n => n.frequency === network.frequency && n.ssid === network.ssid && n.bssid === network.bssid);

                    if (match) {
                        match.lastIpcObject = network;
                        newNetworkList.push(match);
                    } else {
                        const newAp = apComp.createObject(root, {
                            lastIpcObject: network
                        });
                        newNetworkList.push(newAp);
                    }
                }

                // Replace the entire list to trigger proper refresh
                root.wifiNetworks = newNetworkList;
            }
        }
    }

    Component {
        id: apComp
        WifiAccessPoint {}
    }

    // Initialize on component creation
    Component.onCompleted: {
        update();
    }
}

```

## File: `modules/quickshell/config/services/Notifications.qml`

```qml
// Notifications.qml - Manages system notifications, popups, and notification daemon server
pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import Quickshell.Services.Notifications
import qs.settings
import qs.services

Singleton {
    id: root

    /**
    * Notification wrapper component that extends the base Notification with lifecycle management.
    * Adds popup state, timing, and automatic expiration handling.
    */
    component Notif: QtObject {
        id: wrapper
        required property int notificationId
        required property Notification notification

        readonly property list<NotificationAction> actions: notification.actions
        readonly property string appIcon: notification.appIcon
        readonly property string appName: notification.appName
        readonly property string body: notification.body
        readonly property string image: notification.image
        readonly property string summary: notification.summary
        readonly property string urgency: notification.urgency.toString()
        readonly property bool resident: notification.resident
        readonly property bool isTransient: notification.transient
        readonly property bool hasActionIcons: notification.hasActionIcons

        property bool popup: false
        readonly property date time: new Date()

        readonly property Timer timer: Timer {
            running: wrapper.popup
            interval: wrapper.notification.expireTimeout > 0 ? wrapper.notification.expireTimeout : Config.defaultExpireTimeout
            onTriggered: {
                if (!wrapper.resident) wrapper.popup = false;
            }
        }

        readonly property Connections retainableConn: Connections {
            target: wrapper.notification.Retainable

            function onDropped() {
                const index = root.list.findIndex(n => n.notificationId === wrapper.notificationId);
                if (index !== -1) {
                    root.list.splice(index, 1);
                    root.triggerListChange();
                }
            }

            function onAboutToDestroy() {
                wrapper.destroy();
            }
        }
    }

    property bool silent: false
    property list<Notif> list: []
    property var popupList: list.filter(notif => notif.popup)
    property bool popupInhibited: silent
    property var latestTimeForApp: ({})
    property int maxPopups: 6

    property var groupsByAppName: groupsForList(root.list)
    property var appNameList: appNameListForGroups(root.groupsByAppName)

    Component {
        id: notifComponent
        Notif {}
    }

    NotificationServer {
        id: notifServer
        actionsSupported: true
        actionIconsSupported: true
        bodyHyperlinksSupported: true
        bodyImagesSupported: true
        bodyMarkupSupported: true
        bodySupported: true
        imageSupported: true
        inlineReplySupported: false
        keepOnReload: false
        persistenceSupported: true

        onNotification: notification => {
            notification.tracked = true;
            const newNotifObject = notifComponent.createObject(root, {
                "notificationId": notification.id,
                "notification": notification
            });
            root.list = [...root.list, newNotifObject];

            if (!root.popupInhibited && !newNotifObject.isTransient) {
                newNotifObject.popup = true;

                const currentPopups = root.list.filter(n => n.popup);
                if (currentPopups.length > root.maxPopups && currentPopups[0]) {
                    currentPopups[0].popup = false;
                }
            }
        }
    }

    function appNameListForGroups(groups) {
        return Object.keys(groups).sort((a, b) => groups[b].time - groups[a].time);
    }

    function groupsForList(list) {
        const groups = {};
        list.forEach(notif => {
            if (!groups[notif.appName]) {
                groups[notif.appName] = {
                    appName: notif.appName,
                    appIcon: notif.appIcon,
                    notifications: [],
                    time: 0
                };
            }
            groups[notif.appName].notifications.push(notif);
            groups[notif.appName].time = latestTimeForApp[notif.appName] || notif.time;
        });
        return groups;
    }

    function discardNotification(id) {
        const index = root.list.findIndex(notif => notif.notificationId === id);
        if (index !== -1) {
            const newList = root.list.filter(notif => notif.notificationId !== id);
            root.list = newList;
        }
        const notifServerIndex = notifServer.trackedNotifications.values.findIndex(notif => notif.id === id);
        if (notifServerIndex !== -1) {
            notifServer.trackedNotifications.values[notifServerIndex].dismiss();
        }
    }

    function discardAllNotifications() {
        root.list = [];
        triggerListChange();
        notifServer.trackedNotifications.values.forEach(notif => {
            notif.dismiss();
        });
    }

    function cancelTimeout(id) {
        const index = root.list.findIndex(notif => notif.notificationId === id);
        if (root.list[index]?.timer) root.list[index].timer.stop();
    }

    function timeoutNotification(id) {
        const index = root.list.findIndex(notif => notif.notificationId === id);
        if (root.list[index] && !root.list[index].resident && root.list[index].timer) {
            root.list[index].timer.restart();
        }
    }

    function timeoutAll() {
        root.popupList.forEach(notif => {
            notif.popup = false;
        });
    }

    function attemptInvokeAction(id, notifIdentifier) {
        const notifServerIndex = notifServer.trackedNotifications.values.findIndex(notif => notif.id === id);

        if (notifServerIndex !== -1) {
            const notifServerNotif = notifServer.trackedNotifications.values[notifServerIndex];
            const action = notifServerNotif.actions.find(a => a.identifier === notifIdentifier);
            
            if (action) {
                // Create callback that invokes action and dismisses notification
                const actionCallback = () => {
                    action.invoke();
                    // Don't dismiss resident notifications
                    const notif = root.list.find(n => n.notificationId === id);
                    if (notif && !notif.resident) {
                        root.discardNotification(id);
                    }
                };
                
                // Move window from special workspace and invoke action callback
                WindowMover.moveWindowFromSpecial(notifServerNotif, actionCallback);
                return;
            }
        }

        // Fallback: dismiss non-resident notification if no action found
        const notifIndex = root.list.findIndex(notif => notif.notificationId === id);
        if (notifIndex !== -1 && !root.list[notifIndex].resident) {
            root.discardNotification(id);
        }
    }

    function triggerListChange() {
        root.list = root.list.slice(0);
    }

    onListChanged: {
        root.list.forEach(notif => {
            if (!root.latestTimeForApp[notif.appName] || notif.time > root.latestTimeForApp[notif.appName]) {
                root.latestTimeForApp[notif.appName] = Math.max(root.latestTimeForApp[notif.appName] || 0, notif.time);
            }
        });

        Object.keys(root.latestTimeForApp).forEach(appName => {
            if (!root.list.some(notif => notif.appName === appName)) {
                delete root.latestTimeForApp[appName];
            }
        });
    }
}

```

## File: `modules/quickshell/config/services/Power.qml`

```qml
pragma Singleton
pragma ComponentBehavior: Bound

import Quickshell
import Quickshell.Services.UPower
import QtQuick
import qs.settings

/**
 * Power service using Quickshell UPower API.
 * Provides access to power profiles and power management.
 */
Singleton {
    id: root

    // ===== Power Profile State =====
    
    readonly property int currentProfile: PowerProfiles.profile
    readonly property bool hasPerformanceProfile: PowerProfiles.hasPerformanceProfile
    readonly property int degradationReason: PowerProfiles.degradationReason
    readonly property var holds: PowerProfiles.holds
    
    // ===== Profile Names =====
    
    readonly property string currentProfileName: {
        switch (currentProfile) {
            case PowerProfile.Performance: return "High";
            case PowerProfile.Balanced: return "Balanced";
            case PowerProfile.PowerSaver: return "Eco";
            default: return "Unknown";
        }
    }
    
    // ===== Profile Icons =====
    
    readonly property string currentProfileIcon: {
        switch (currentProfile) {
            case PowerProfile.Performance: return Fonts.iconPowerFast;
            case PowerProfile.Balanced: return Fonts.iconPowerMedium;
            case PowerProfile.PowerSaver: return Fonts.iconPowerEco;
            default: return Fonts.iconPowerMedium;
        }
    }
    
    // ===== UPower Device State =====
    
    readonly property var displayDevice: UPower.displayDevice
    readonly property bool onBattery: UPower.onBattery
    readonly property bool hasBattery: displayDevice?.isLaptopBattery ?? false
    readonly property int batteryPercentage: hasBattery ? Math.round((displayDevice?.percentage ?? 0) * 100) : 0
    readonly property int batteryState: displayDevice?.state ?? 0
    readonly property bool isCharging: batteryState === 1 // UPowerDeviceState.Charging
    readonly property bool isDischarging: batteryState === 2 // UPowerDeviceState.Discharging
    readonly property bool isFull: batteryState === 4 // UPowerDeviceState.FullyCharged
    
    // ===== Control Functions =====
    
    /**
     * Set the power profile
     */
    function setProfile(profile: int): void {
        // Validate that we can set Performance mode
        if (profile === PowerProfile.Performance && !hasPerformanceProfile) {
            console.warn("Cannot set Performance profile: not available on this system");
            return;
        }
        
        // Validate the profile value
        if (profile !== PowerProfile.Performance && 
            profile !== PowerProfile.Balanced && 
            profile !== PowerProfile.PowerSaver) {
            console.warn("Invalid power profile:", profile);
            return;
        }
        
        PowerProfiles.profile = profile;
    }
    
    /**
     * Set Performance profile
     */
    function setPerformance(): void {
        setProfile(PowerProfile.Performance);
    }
    
    /**
     * Set Balanced profile
     */
    function setBalanced(): void {
        setProfile(PowerProfile.Balanced);
    }
    
    /**
     * Set Power Saver profile
     */
    function setPowerSaver(): void {
        setProfile(PowerProfile.PowerSaver);
    }
    
    /**
     * Cycle through available power profiles
     */
    function cycleProfile(): void {
        if (currentProfile === PowerProfile.PowerSaver) {
            setBalanced();
        } else if (currentProfile === PowerProfile.Balanced) {
            if (hasPerformanceProfile) {
                setPerformance();
            } else {
                setPowerSaver();
            }
        } else if (currentProfile === PowerProfile.Performance) {
            setPowerSaver();
        }
    }
    
    /**
     * Get degradation reason as human-readable string
     */
    function getDegradationReasonString(): string {
        switch (degradationReason) {
            case PerformanceDegradationReason.None: return "";
            case PerformanceDegradationReason.HighTemperature: return "High Temperature";
            case PerformanceDegradationReason.LapDetected: return "Lap Detected";
            default: return "Unknown Reason";
        }
    }
    
    /**
     * Check if a profile is currently active
     */
    function isProfileActive(profile: int): bool {
        return currentProfile === profile;
    }
    
}

```

## File: `modules/quickshell/config/services/ScreenGeometry.qml`

```qml
pragma Singleton
import QtQuick
import Quickshell
import qs.services

Singleton {
    id: root
    
    property var screenGeometries: ({})
    
    // Total desktop dimensions (merged from WallpaperSize)
    property int totalDesktopWidth: 0
    property int totalDesktopHeight: 0
    property int desktopMinX: 0
    property int desktopMinY: 0
    
    function recalculate() {
        var geometries = {};
        var firstScreen = true;
        var minX = 0;
        var maxX = 0;
        var minY = 0;
        var maxY = 0;
        
        for (let screen of Quickshell.screens) {
            geometries[screen.name] = {
                x: screen.x,
                y: screen.y,
                width: screen.width,
                height: screen.height,
                name: screen.name
            };
            
            // Calculate total desktop bounds
            var left = screen.x;
            var right = screen.x + screen.width;
            var top = screen.y;
            var bottom = screen.y + screen.height;

            if (firstScreen) {
                minX = left;
                maxX = right;
                minY = top;
                maxY = bottom;
                firstScreen = false;
            } else {
                if (left < minX) minX = left;
                if (right > maxX) maxX = right;
                if (top < minY) minY = top;
                if (bottom > maxY) maxY = bottom;
            }
        }
        
        screenGeometries = geometries;
        desktopMinX = minX;
        desktopMinY = minY;
        totalDesktopWidth = maxX - minX;
        totalDesktopHeight = maxY - minY;
    }
    
    function getGeometry(screenName) {
        return screenGeometries[screenName] || {
            x: 0,
            y: 0,
            width: 1920,
            height: 1080,
            name: screenName || "unknown"
        };
    }
    
    function calculateScreenPositioning(sourceWidth, sourceHeight, screenX, screenY) {
        if (sourceWidth <= 0 || sourceHeight <= 0) {
            return { scale: 1, x: 0, y: 0, scaledWidth: 0, scaledHeight: 0 };
        }

        var scaleX = totalDesktopWidth / sourceWidth;
        var scaleY = totalDesktopHeight / sourceHeight;
        var scale = Math.max(scaleX, scaleY);

        var scaledWidth = sourceWidth * scale;
        var scaledHeight = sourceHeight * scale;

        var imageOffsetX = (totalDesktopWidth - scaledWidth) / 2;
        var imageOffsetY = (totalDesktopHeight - scaledHeight) / 2;

        var finalX = imageOffsetX - (screenX - desktopMinX);
        var finalY = imageOffsetY - (screenY - desktopMinY);

        return {
            scale: scale,
            x: finalX,
            y: finalY,
            scaledWidth: scaledWidth,
            scaledHeight: scaledHeight
        };
    }
    
    Component.onCompleted: {
        recalculate();
    }
    
    Connections {
        target: Quickshell
        
        function onScreensChanged() {
            root.recalculate();
        }
    }

    Connections {
        target: HyprStats

        function onMonitorConfigChanged(eventName) {
            delayedRecalculateTimer.restart();
        }
    }

    Timer {
        id: delayedRecalculateTimer
        interval: 100
        repeat: false
        onTriggered: {
            root.recalculate();
        }
    }
}

```

## File: `modules/quickshell/config/services/System.qml`

```qml
pragma Singleton
import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root

    // System information properties
    property string hostname: ""
    property string osRelease: ""
    property string kernelVersion: ""
    property int uptimeDays: 0
    property int uptimeHours: 0
    property int uptimeMinutes: 0
    
    // Get hostname
    Process {
        id: hostnameProc
        command: ["hostname"]
        running: true
        
        stdout: StdioCollector {
            onStreamFinished: {
                root.hostname = text.trim()
            }
        }
    }
    
    // Get OS release information
    Process {
        id: osReleaseProc
        command: ["sh", "-c", "cat /etc/os-release | grep PRETTY_NAME | cut -d'=' -f2 | tr -d '\"'"]
        running: true
        
        stdout: StdioCollector {
            onStreamFinished: {
                root.osRelease = text.trim()
            }
        }
    }
    
    // Get kernel version
    Process {
        id: kernelProc
        command: ["uname", "-r"]
        running: true
        
        stdout: StdioCollector {
            onStreamFinished: {
                root.kernelVersion = text.trim()
            }
        }
    }
    
    // Get uptime (in seconds from /proc/uptime)
    Process {
        id: uptimeProc
        command: ["sh", "-c", "cat /proc/uptime | awk '{print int($1)}'"]
        running: true
        
        stdout: StdioCollector {
            onStreamFinished: {
                var totalSeconds = parseInt(text.trim())
                root.uptimeDays = Math.floor(totalSeconds / 86400)
                root.uptimeHours = Math.floor((totalSeconds % 86400) / 3600)
                root.uptimeMinutes = Math.floor((totalSeconds % 3600) / 60)
            }
        }
    }
    
    // Timer to refresh uptime
    Timer {
        interval: 60000 // Update every minute
        running: true
        repeat: true
        
        onTriggered: {
            uptimeProc.running = true
        }
    }
}

```

## File: `modules/quickshell/config/services/Time.qml`

```qml
pragma Singleton
import Quickshell
import QtQuick

Singleton {
    id: root
    readonly property string time: {
        Qt.formatDateTime(clock.date, "hh:mm");
    }
    readonly property string date: {
        Qt.formatDateTime(clock.date, "dd.MMM.");
    }
    readonly property string day: {
        Qt.formatDateTime(clock.date, "dddd");
    }

    readonly property string fulldate: {
        Qt.formatDateTime(clock.date, "dd.MM.yyyy");
    }

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
}

```

## File: `modules/quickshell/config/services/WallpaperService.qml`

```qml
pragma Singleton
import QtQuick
import QtQuick.Controls
import Qt.labs.folderlistmodel
import Quickshell
import Quickshell.Io
import qs.settings
import qs.services

Singleton {
    id: root

    // ========== Configuration Properties ==========
    property bool useWallpaperDirectory: false
    property string wallpaperPath: ""
    property string wallpaperDirectory: ""
    property string currentWallpaperPath: ""
    property string nextWallpaperPath: ""
    property bool autoRotateEnabled: false
    property int autoRotateInterval: 300000
    property int transitionDuration: 800
    property bool pauseAutoRotateOnManual: true

    // ========== State Properties ==========
    property var wallpaperQueue: []
    property int currentIndex: -1
    property bool isTransitioning: false
    readonly property int queueLength: wallpaperQueue.length
    
    // ========== Screen Coordination Properties ==========
    property var readyScreens: ({})
    property string pendingWallpaperPath: ""

    // ========== Signals ==========
    signal wallpaperChanged(string newPath)
    signal queueRefreshed(int newLength)
    signal allScreensReady()  // New signal when all screens are ready

    // ========== Internal Properties ==========
    property bool initialLoadComplete: false

    // ========== FolderListModel for Directory Scanning ==========
    FolderListModel {
        id: folderModel
        folder: root.useWallpaperDirectory && root.wallpaperDirectory ? Qt.resolvedUrl(root.wallpaperDirectory) : ""
        nameFilters: ["*.jpg", "*.jpeg", "*.png", "*.bmp", "*.gif", "*.JPG", "*.JPEG", "*.PNG"]
        showDirs: false
        showDotAndDotDot: false
        showHidden: false

        onCountChanged: {
            if (initialLoadComplete && root.useWallpaperDirectory) {
                Qt.callLater(refreshQueue);
            }
        }
    }

    // ========== Auto-Rotation Timer ==========
    Timer {
        id: autoRotateTimer
        interval: root.autoRotateInterval
        running: root.autoRotateEnabled && root.useWallpaperDirectory && root.queueLength > 1 && !root.isTransitioning
        repeat: true
        onTriggered: {
            root.nextWallpaper(false);
        }
    }

    // ========== Screen Geometry Recalculation ==========
    function recalculateScreenGeometry() {
        ScreenGeometry.recalculate();
    }

    // ========== Public Methods ==========
    function nextWallpaper(manualTrigger = false) {
        if (!useWallpaperDirectory) {
            return;
        }

        // Recalculate screen geometry before wallpaper change (handles suspend/resume, hot-plug events)
        recalculateScreenGeometry();

        if (isTransitioning) {
            return;
        }

        if (queueLength === 0) {
            return;
        }
        
        // Prevent switching if only one image (would load same image to both layers)
        if (queueLength === 1) {
            console.log("WallpaperService: Cannot switch wallpaper with only 1 image in queue");
            return;
        }

        isTransitioning = true;

        // Move to next index
        currentIndex = (currentIndex + 1) % queueLength;

        // If we've looped back to start, regenerate queue
        if (currentIndex === 0 && queueLength > 1) {
            regenerateQueue();
        }

        // Update current wallpaper
        var newPath = wallpaperQueue[currentIndex];
        currentWallpaperPath = newPath;
        
        // Update next wallpaper path for reference
        if (queueLength > 0) {
            nextWallpaperPath = wallpaperQueue[(currentIndex + 1) % queueLength];
        }
        
        // Emit signal for display component
        wallpaperChanged(newPath);

        // Reset timer if manual trigger and configured
        if (manualTrigger && pauseAutoRotateOnManual && autoRotateEnabled) {
            autoRotateTimer.restart();
        }

        // Note: transitionTimer will be started when allScreensReady() is emitted
    }

    function previousWallpaper() {
        if (!useWallpaperDirectory) {
            return;
        }

        // Recalculate screen geometry before wallpaper change (handles suspend/resume, hot-plug events)
        recalculateScreenGeometry();

        if (isTransitioning) {
            return;
        }

        if (queueLength === 0) {
            return;
        }
        
        // Prevent switching if only one image (would load same image to both layers)
        if (queueLength === 1) {
            console.log("WallpaperService: Cannot switch wallpaper with only 1 image in queue");
            return;
        }

        isTransitioning = true;

        // Move to previous index
        currentIndex = currentIndex - 1;
        if (currentIndex < 0) {
            currentIndex = queueLength - 1;
        }

        // Update current wallpaper
        var newPath = wallpaperQueue[currentIndex];
        currentWallpaperPath = newPath;
        
        // Update next wallpaper path for reference
        if (queueLength > 0) {
            nextWallpaperPath = wallpaperQueue[(currentIndex + 1) % queueLength];
        }
        
        // Emit signal
        wallpaperChanged(newPath);

        // Note: transitionTimer will be started when allScreensReady() is emitted
    }

    function refreshQueue() {
        buildQueue();
    }

    function setWallpaper(path) {
        if (!path) {
            return;
        }
        
        // Recalculate screen geometry before wallpaper change (handles suspend/resume, hot-plug events)
        recalculateScreenGeometry();
        // Find index in current queue
        var idx = wallpaperQueue.indexOf(path);
        
        if (idx !== -1) {
            currentIndex = idx;
            currentWallpaperPath = path;
            wallpaperChanged(path);
            
            // Update next wallpaper path for reference
            if (queueLength > 0) {
                nextWallpaperPath = wallpaperQueue[(currentIndex + 1) % queueLength];
            }
        } else {
            // Path not in queue, add it and use it
            wallpaperQueue.push(path);
            currentIndex = wallpaperQueue.length - 1;
            currentWallpaperPath = path;
            wallpaperChanged(path);
            
            // Update next wallpaper path for reference
            if (queueLength > 0) {
                nextWallpaperPath = wallpaperQueue[(currentIndex + 1) % queueLength];
            }
        }
    }
    
    // ========== Screen Coordination Methods ==========
    function reportScreenReady(screenName) {
        readyScreens[screenName] = true;
        
        // Calculate current expected screen count from active screens
        var currentScreenCount = Quickshell.screens.length;
        
        // Check how many active screens are ready
        var readyCount = 0;
        for (let screen of Quickshell.screens) {
            if (readyScreens[screen.name]) {
                readyCount++;
            }
        }
        
        // All active screens are ready
        if (readyCount === currentScreenCount && currentScreenCount > 0) {
            allScreensReady();
            readyScreens = {}; // Reset for next transition
            
            // Start the transition timer now that the visual transition is beginning
            if (isTransitioning) {
                transitionTimer.restart();
            }
        }
    }

    // ========== Internal Methods ==========
    function buildQueue() {
        // If not using directory mode, use single wallpaper path
        if (!useWallpaperDirectory) {
            if (root.wallpaperPath) {
                // Store the plain path without file:// prefix
                // The consumer (e.g., BlurredWallpaper.qml) will add file:// when needed
                var wallpaperUrl = root.wallpaperPath;
                // Remove file:// prefix if present
                if (wallpaperUrl.startsWith("file://")) {
                    wallpaperUrl = wallpaperUrl.substring(7);
                }
                wallpaperQueue = [wallpaperUrl];
                currentIndex = 0;
                currentWallpaperPath = wallpaperQueue[0];
                queueRefreshed(1);
                
                if (initialLoadComplete) {
                    wallpaperChanged(currentWallpaperPath);
                }
            } else {
                wallpaperQueue = [];
                currentIndex = -1;
                currentWallpaperPath = "";
                queueRefreshed(0);
            }
            return;
        }

        // Directory mode: build queue from folder
        var newQueue = [];
        for (var i = 0; i < folderModel.count; i++) {
            var filePath = folderModel.get(i, "filePath");
            if (filePath) {
                // filePath is a URL from FolderListModel, convert to plain path
                var pathStr = filePath.toString();
                // Remove file:// prefix to store as plain path
                if (pathStr.startsWith("file://")) {
                    pathStr = pathStr.substring(7);
                }
                newQueue.push(pathStr);
            }
        }

        if (newQueue.length === 0) {
            wallpaperQueue = [];
            currentIndex = -1;
            currentWallpaperPath = "";
            queueRefreshed(0);
            return;
        }

        // Shuffle the queue
        shuffleArray(newQueue);

        // Try to preserve current wallpaper position if it still exists
        var currentPath = currentWallpaperPath;
        wallpaperQueue = newQueue;

        if (currentPath && newQueue.indexOf(currentPath) !== -1) {
            currentIndex = newQueue.indexOf(currentPath);
        } else {
            // Start at random position (not first)
            if (newQueue.length > 1) {
                currentIndex = Math.floor(Math.random() * newQueue.length);
            } else {
                currentIndex = 0;
            }
            currentWallpaperPath = wallpaperQueue[currentIndex];
            
            // Emit signal for new wallpaper if service is initialized
            if (initialLoadComplete) {
                wallpaperChanged(currentWallpaperPath);
            }
        }

        queueRefreshed(wallpaperQueue.length);

        // Update next wallpaper path for reference
        if (queueLength > 0) {
            nextWallpaperPath = wallpaperQueue[(currentIndex + 1) % queueLength];
        }
    }

    function regenerateQueue() {
        var oldQueue = wallpaperQueue.slice(); // Copy current queue
        shuffleArray(wallpaperQueue);
        
        // Ensure new queue doesn't start with the same image we just showed
        if (wallpaperQueue.length > 1 && wallpaperQueue[0] === oldQueue[oldQueue.length - 1]) {
            // Swap first and last
            var temp = wallpaperQueue[0];
            wallpaperQueue[0] = wallpaperQueue[wallpaperQueue.length - 1];
            wallpaperQueue[wallpaperQueue.length - 1] = temp;
        }
    }

    function shuffleArray(array) {
        // Fisher-Yates shuffle
        for (var i = array.length - 1; i > 0; i--) {
            var j = Math.floor(Math.random() * (i + 1));
            var temp = array[i];
            array[i] = array[j];
            array[j] = temp;
        }
    }

    // ========== Transition Timer ==========
    Timer {
        id: transitionTimer
        interval: root.transitionDuration
        onTriggered: {
            root.isTransitioning = false;
        }
    }

    // ========== Config Change Handlers ==========
    Connections {
        target: Config

        function onUseWallpaperDirectoryChanged() {
            root.useWallpaperDirectory = Config.useWallpaperDirectory;
            Qt.callLater(refreshQueue);
        }

        function onWallpaperPathChanged() {
            root.wallpaperPath = Config.wallpaperPath;
            if (!root.useWallpaperDirectory) {
                Qt.callLater(refreshQueue);
            }
        }

        function onAutoRotateEnabledChanged() {
            root.autoRotateEnabled = Config.autoRotateEnabled;
        }

        function onAutoRotateIntervalChanged() {
            root.autoRotateInterval = Config.autoRotateInterval;
            if (autoRotateTimer.running) {
                autoRotateTimer.restart();
            }
        }

        function onWallpaperDirectoryChanged() {
            root.wallpaperDirectory = Config.wallpaperDirectory;
            if (root.useWallpaperDirectory) {
                Qt.callLater(refreshQueue);
            }
        }
    }

    // ========== Initialization ==========
    Component.onCompleted: {
        // Wait for Config to be ready before initializing
        if (Config.ready) {
            initializeService();
        }
    }

    Connections {
        target: Config
        
        function onReadyChanged() {
            if (Config.ready && !initialLoadComplete) {
                initializeService();
            }
        }
    }

    function initializeService() {
        // Load config values
        root.useWallpaperDirectory = Config.useWallpaperDirectory;
        root.wallpaperPath = Config.wallpaperPath;
        root.wallpaperDirectory = Config.wallpaperDirectory;
        root.autoRotateEnabled = Config.autoRotateEnabled;
        root.autoRotateInterval = Config.autoRotateInterval;
        root.pauseAutoRotateOnManual = Config.pauseAutoRotateOnManual;
        
        // Build initial queue
        buildQueue();
        initialLoadComplete = true;
        
        // Emit initial wallpaper after queue is built
        if (currentWallpaperPath) {
            wallpaperChanged(currentWallpaperPath);
        }
    }
}

```

## File: `modules/quickshell/config/services/WindowMover.qml`

```qml
// WindowMover.qml
// Service to move windows from special workspaces to main workspace (5)
pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import qs.services
import qs.settings

Singleton {
    id: root

    property var _pendingActionCallback: null

    // Get the first workspace ID for the main monitor
    readonly property int targetWorkspace: {
        const mainMonitorId = Config.mainMonitorId;
        const workspaceRules = Config.workspaceRules;
        if (workspaceRules && workspaceRules[mainMonitorId] && workspaceRules[mainMonitorId].length > 0) {
            return workspaceRules[mainMonitorId][0];
        }
        return 1; // Fallback to 1 if config not available
    }

    // Process to move a window to the target workspace
    Process {
        id: moveWindowProcess
        property string windowAddress: ""
        property var pendingAction: null

        readonly property string formattedAddress: {
            const addr = windowAddress.startsWith("0x") ? windowAddress : "0x" + windowAddress;
            return addr;
        }

        command: ["hyprctl", "dispatch", "movetoworkspace", root.targetWorkspace + ",address:" + formattedAddress]

        onExited: (exitCode) => {
            if (moveWindowProcess.pendingAction) {
                moveWindowProcess.pendingAction();
                moveWindowProcess.pendingAction = null;
            }
        }
    }

    // Process to lookup window initialClass from PID
    Process {
        id: pidLookupProcess
        property int targetPid: 0
        property string foundAppId: ""

        command: ["hyprctl", "clients", "-j"]

        stdout: StdioCollector {
            id: pidLookupCollector
            onStreamFinished: {
                try {
                    const clients = JSON.parse(pidLookupCollector.text);
                    if (Array.isArray(clients)) {
                        for (let i = 0; i < clients.length; i++) {
                            if (clients[i].pid === pidLookupProcess.targetPid && clients[i].initialClass) {
                                pidLookupProcess.foundAppId = clients[i].initialClass;
                                break;
                            }
                        }
                    }
                } catch (e) {
                    // JSON parse error - continue without AppId
                }
            }
        }

        onExited: (exitCode) => {
            root.processLookupResult();
        }
    }

    /**
    * Attempts to move a window associated with a notification to the main monitor's first workspace.
    * @param notification - The Notification object
    * @param onComplete - Optional callback to invoke after move completes or immediately if no move needed
    */
    function moveWindowFromSpecial(notification, onComplete) {
        const appId = extractAppId(notification);

        if (appId === null) {
            // Async PID lookup in progress
            root._pendingActionCallback = onComplete || null;
            return;
        }

        if (!appId) {
            // No AppId found, invoke callback immediately
            if (onComplete) onComplete();
            return;
        }

        executeMove(appId, onComplete);
    }

    /**
    * Extracts AppId from notification, triggering async PID lookup if needed.
    * @returns AppId string, null if async lookup started, or empty string if lookup failed
    */
    function extractAppId(notification) {
        if (notification.hints && notification.hints["sender-pid"]) {
            try {
                const senderPid = parseInt(notification.hints["sender-pid"].toString());
                if (!isNaN(senderPid) && senderPid > 0) {
                    pidLookupProcess.targetPid = senderPid;
                    pidLookupProcess.running = true;
                    return null; // Async
                }
            } catch (e) {
                // Fall through to app name
            }
        }

        return notification.appName || "";
    }

    /**
    * Processes the result of PID lookup and moves window if found.
    * @private
    */
    function processLookupResult() {
        const appId = pidLookupProcess.foundAppId;
        pidLookupProcess.foundAppId = "";

        if (appId) {
            executeMove(appId, root._pendingActionCallback);
        } else if (root._pendingActionCallback) {
            root._pendingActionCallback();
        }

        root._pendingActionCallback = null;
    }

    /**
    * Executes the window move if window is found on special workspace.
    * @private
    */
    function executeMove(appId, onComplete) {
        if (typeof BackgroundWindows === 'undefined') {
            if (onComplete) onComplete();
            return;
        }

        const windowAddress = BackgroundWindows.getAddressOnSpecial(appId);
        if (windowAddress && windowAddress !== "0x0") {
            moveWindowProcess.windowAddress = windowAddress;
            moveWindowProcess.pendingAction = onComplete || null;
            moveWindowProcess.running = true;
        } else if (onComplete) {
            onComplete();
        }
    }
}

```

## File: `modules/quickshell/config/services/WorkspaceService.qml`

```qml
pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland

Singleton {
    id: root




    readonly property bool isHyprland: Hyprland.connected


    property int activeWorkspaceId: isHyprland ? (Hyprland.focusedWorkspace?.id ?? 1) : (DwlService.activeTag ?? 1)



    property var windows: []


    function moveToWorkspace(address, workspaceId) {
        if (isHyprland) {
            Hyprland.dispatch(`movetoworkspacesilent ${workspaceId},address:${address}`)
        } else {

             DwlService.moveToTag(DwlService.activeOutput, workspaceId - 1)
        }
    }
    

    function switchToWorkspace(workspaceId) {
        if (isHyprland) {
            Hyprland.dispatch(`workspace ${workspaceId}`)
        } else {



             DwlService.switchToTag(DwlService.activeOutput, workspaceId - 1)
        }
    }




    Connections {
        target: Hyprland
        enabled: root.isHyprland
        
        function onClientsChanged() {
            root.updateHyprlandWindows()
        }
        function onFocusedWorkspaceChanged() {

        }
    }

    function updateHyprlandWindows() {
        if (!isHyprland) return;

        let newWindows = [];
        let clients = Hyprland.clients;
        
        for (let i = 0; i < clients.length; i++) {
            let client = clients[i];
            newWindows.push({
                address: client.address,
                workspaceId: client.workspace.id,
                class: client.class,
                title: client.title,
                x: client.at[0],
                y: client.at[1],
                width: client.size[0],
                height: client.size[1],
                focus: client.focus
            });
        }
        root.windows = newWindows;
    }


    Connections {
        target: ToplevelManager
        enabled: !root.isHyprland
        
        function onToplevelsChanged() {
            root.updateGenericWindows()
        }
    }

    function updateGenericWindows() {
         if (isHyprland) return;

         let newWindows = [];
         let toplevels = ToplevelManager.toplevels.values;
         let activeWs = root.activeWorkspaceId;

         for (let i = 0; i < toplevels.length; i++) {
             let t = toplevels[i];
             


             
             newWindows.push({
                 address: t.appId + i,
                 workspaceId: activeWs, 
                 class: t.appId,
                 title: t.title,
                 x: 50 + (i * 30),
                 y: 50 + (i * 30),
                 width: 400,
                 height: 300,
                 focus: t.active
             });
         }
         root.windows = newWindows;
    }
    

    Component.onCompleted: {
        if (isHyprland) {
            updateHyprlandWindows();
        } else {
            updateGenericWindows();
        }
    }
    



}

```

## File: `modules/quickshell/config/settings/themes/MonokaiPro.qml`

```qml
pragma Singleton
import Quickshell
import QtQml

QtObject {
    readonly property color accent1: "#ff6188"
    readonly property color accent2: "#fc9867"
    readonly property color accent3: "#ffd866"
    readonly property color accent4: "#a9dc76"
    readonly property color accent5: "#78dce8"
    readonly property color accent6: "#ab9df2"

    readonly property color dimmed1: "#c1c0c0"
    readonly property color dimmed2: "#939293"
    readonly property color dimmed3: "#727072"
    readonly property color dimmed4: "#5b595c"
    readonly property color dimmed5: "#403e41"

    readonly property color text: "#fcfcfa"
    readonly property color background: "#2d2a2e"
    readonly property color dark1: "#221f22"
    readonly property color dark2: "#19181a"
}

```

## File: `modules/quickshell/config/settings/themes/MonokaiProClassic.qml`

```qml
pragma Singleton
import Quickshell
import QtQml

QtObject {
    readonly property color accent1: "#f92672"
    readonly property color accent2: "#fd971f"
    readonly property color accent3: "#e6db74"
    readonly property color accent4: "#a6e22e"
    readonly property color accent5: "#66d9ef"
    readonly property color accent6: "#ae81ff"

    readonly property color dimmed1: "#c0c1b5"
    readonly property color dimmed2: "#919288"
    readonly property color dimmed3: "#6e7066"
    readonly property color dimmed4: "#57584f"
    readonly property color dimmed5: "#3b3c35"

    readonly property color text: "#fdfff1"
    readonly property color background: "#272822"
    readonly property color dark1: "#1d1e19"
    readonly property color dark2: "#161613"
}

```

## File: `modules/quickshell/config/settings/themes/MonokaiProLight.qml`

```qml
pragma Singleton
import Quickshell
import QtQml

QtObject {
    readonly property color accent1: "#e14775"
    readonly property color accent2: "#e16032"
    readonly property color accent3: "#cc7a0a"
    readonly property color accent4: "#269d69"
    readonly property color accent5: "#1c8ca8"
    readonly property color accent6: "#7058be"

    readonly property color dimmed1: "#706b6e"
    readonly property color dimmed2: "#918c8e"
    readonly property color dimmed3: "#a59fa0"
    readonly property color dimmed4: "#bfb9ba"
    readonly property color dimmed5: "#d3cdcc"

    readonly property color text: "#29242a"
    readonly property color background: "#faf4f2"
    readonly property color dark1: "#ede7e5"
    readonly property color dark2: "#d3cdcc"
}

```

## File: `modules/quickshell/config/settings/themes/MonokaiProMachine.qml`

```qml
pragma Singleton
import Quickshell
import QtQml

QtObject {
    readonly property color accent1: "#ff6d7e"
    readonly property color accent2: "#ffb270"
    readonly property color accent3: "#ffed72"
    readonly property color accent4: "#a2e57b"
    readonly property color accent5: "#7cd5f1"
    readonly property color accent6: "#baa0f8"

    readonly property color dimmed1: "#b8c4c3"
    readonly property color dimmed2: "#8b9798"
    readonly property color dimmed3: "#6b7678"
    readonly property color dimmed4: "#545f62"
    readonly property color dimmed5: "#3a4449"

    readonly property color text: "#f2fffc"
    readonly property color background: "#273136"
    readonly property color dark1: "#1d2528"
    readonly property color dark2: "#161b1e"
}

```

## File: `modules/quickshell/config/settings/themes/MonokaiProOctagon.qml`

```qml
pragma Singleton
import Quickshell
import QtQml

QtObject {
    readonly property color accent1: "#ff657a"
    readonly property color accent2: "#ff9b5e"
    readonly property color accent3: "#ffd76d"
    readonly property color accent4: "#bad761"
    readonly property color accent5: "#9cd1bb"
    readonly property color accent6: "#c39ac9"

    readonly property color dimmed1: "#b2b9bd"
    readonly property color dimmed2: "#888d94"
    readonly property color dimmed3: "#696d77"
    readonly property color dimmed4: "#535763"
    readonly property color dimmed5: "#3a3d4b"

    readonly property color text: "#eaf2f1"
    readonly property color background: "#282a3a"
    readonly property color dark1: "#1e1f2b"
    readonly property color dark2: "#161821"
}

```

## File: `modules/quickshell/config/settings/themes/MonokaiProRistretto.qml`

```qml
pragma Singleton
import Quickshell
import QtQml

QtObject {
    readonly property color accent1: "#fd6883"
    readonly property color accent2: "#f38d70"
    readonly property color accent3: "#f9cc6c"
    readonly property color accent4: "#adda78"
    readonly property color accent5: "#85dacc"
    readonly property color accent6: "#a8a9eb"

    readonly property color dimmed1: "#c3b7b8"
    readonly property color dimmed2: "#948a8b"
    readonly property color dimmed3: "#72696a"
    readonly property color dimmed4: "#5b5353"
    readonly property color dimmed5: "#403838"

    readonly property color text: "#fff1f3"
    readonly property color background: "#2c2525"
    readonly property color dark1: "#211c1c"
    readonly property color dark2: "#191515"
}

```

## File: `modules/quickshell/config/settings/themes/MonokaiProSpectrum.qml`

```qml
pragma Singleton
import Quickshell
import QtQml

QtObject {
    readonly property color accent1: "#fc618d"
    readonly property color accent2: "#fd9353"
    readonly property color accent3: "#fce566"
    readonly property color accent4: "#7bd88f"
    readonly property color accent5: "#5ad4e6"
    readonly property color accent6: "#948ae3"

    readonly property color dimmed1: "#bab6c0"
    readonly property color dimmed2: "#8b888f"
    readonly property color dimmed3: "#69676c"
    readonly property color dimmed4: "#525053"
    readonly property color dimmed5: "#363537"

    readonly property color text: "#f7f1ff"
    readonly property color background: "#222222"
    readonly property color dark1: "#191919"
    readonly property color dark2: "#131313"
}

```

## File: `modules/quickshell/config/settings/AppState.qml`

```qml
pragma Singleton
import QtQuick
import Quickshell
import Quickshell.Io
import qs.services
import qs.settings

Singleton {
    id: state
    // if lockscreen is active, hide other UI elements
    readonly property bool barVisible: true
    
    // Use previous property names for clarity and compatibility
    property bool preLockOverlayVisible: false
    property bool lockscreenVisible: false
    property bool launcherVisible: false
    property bool controlCenterVisible: false
    property bool settingsWindowVisible: false
    property bool clipHistVisible: false
    property bool isFreshStartup: true

    // Timer to delay lockscreen after overlay fade-in
    Timer {
        id: smoothLockTimer
        interval: 300  // Match fade-in duration
        repeat: false
        onTriggered: {
            lockscreenVisible = true;
        }
    }

    // Timer to delay overlay fade-out after unlock
    Timer {
        id: overlayFadeTimer
        interval: 300  // Match fade-out duration
        repeat: false
        onTriggered: {
            preLockOverlayVisible = false;
        }
    }

    // Start overlay, then show lockscreen after fade-in
    function lock() {
        preLockOverlayVisible = true;
        smoothLockTimer.start();
    }

    // Hide lockscreen, then fade out overlay
    function unlock() {
        lockscreenVisible = false;
        overlayFadeTimer.start();
    }

    function toggleLockscreen() {
        if (lockscreenVisible) {
            unlock();
        } else {
            lock();
        }
    }
    
    function toggleLauncher() {
        launcherVisible = !launcherVisible;
    }
    function toggleControlCenter() {
        controlCenterVisible = !controlCenterVisible;
    }
    function toggleSettingsWindow() {
        settingsWindowVisible = !settingsWindowVisible;
    }
    function toggleClipHist() {
        clipHistVisible = !clipHistVisible;
    }

    // Open functions
    function openLauncher() {
        launcherVisible = true;
    }
    function openControlCenter() {
        controlCenterVisible = true;
    }
    function openSettingsWindow() {
        settingsWindowVisible = true;
    }
    function openClipHist() {
        clipHistVisible = true;
    }

    // Close functions
    function closeLockscreen() {
        lockscreenVisible = false;
    }
    function closeLauncher() {
        launcherVisible = false;
    }
    function closeControlCenter() {
        controlCenterVisible = false;
    }
    function closeSettingsWindow() {
        settingsWindowVisible = false;
    }
    function closeClipHist() {
        clipHistVisible = false;
    }

    // Wallpaper root function: call the Wallpaper service so other modules or IPC can invoke it
    function nextWallpaper() {
        WallpaperService.nextWallpaper(true);
    }

    // Listen for reload signals to mark when a reload happens
    Connections {
        target: Quickshell

        function onReloadCompleted() {
            state.isFreshStartup = false;
        }

        function onReloadFailed() {
            state.isFreshStartup = false;
        }
    }

    // Helper function to check and lock on startup
    function tryLockOnStartup() {
        if (Config.lockOnStartup && state.isFreshStartup) {
            Qt.callLater(state.lock);
        }
    }

    // Lock on startup if configured
    Component.onCompleted: {
        if (Config.ready) {
            tryLockOnStartup();
        } else {
            Config.readyChanged.connect(() => Config.ready && tryLockOnStartup());
        }
    }

    IpcHandler {
        // expose this handler under the name "state" so external callers can use:
        // qs ipc call state nextWallpaper
        target: "state"

        // Launcher controls
        function toggleLauncher(): void {
            console.log("IPC: toggleLauncher called");
            state.toggleLauncher();
        }

        // Lockscreen controls - ONLY lock, never unlock externally
        function lockScreen(): void {
            console.log("IPC: lockScreen called");
            state.lock();
        }

        // Control Center controls
        function toggleControlCenter(): void {
            console.log("IPC: toggleControlCenter called");
            state.toggleControlCenter();
        }

        // Control Center controls
        function toggleClipboard(): void {
            console.log("IPC: Clipboard called");
            state.toggleClipHist();
        }

        // Wallpaper controls
        function nextWallpaper(): void {
            console.log("IPC: nextWallpaper called");
            // delegate to the root function so behavior is centralized
            state.nextWallpaper();
        }
    }
}

```

## File: `modules/quickshell/config/settings/Colors.qml`

```qml
pragma ComponentBehavior: Bound
pragma Singleton

import Quickshell
import QtQuick
import qs.settings
import qs.settings.themes

Singleton {
    // Maps the string from Config to an imported Theme singleton
    readonly property QtObject theme: resolveTheme(Config.theme)
    function resolveTheme(name) {
        switch (name) {
        case "CatppuccinMocha": return CatppuccinMocha;
        case "CatppuccinLatte": return CatppuccinLatte;
        case "CatppuccinFrappe": return CatppuccinFrappe;
        case "CatppuccinMacchiato": return CatppuccinMacchiato;
        default: return CatppuccinMocha;  // Fallback to Mocha theme
        }
    }

    // Theme colors
    readonly property color rosewater: theme.rosewater
    readonly property color flamingo: theme.flamingo
    readonly property color pink: theme.pink
    readonly property color mauve: theme.mauve
    readonly property color red: theme.red
    readonly property color maroon: theme.maroon
    readonly property color peach: theme.peach
    readonly property color yellow: theme.yellow
    readonly property color green: theme.green
    readonly property color teal: theme.teal
    readonly property color sky: theme.sky
    readonly property color sapphire: theme.sapphire
    readonly property color blue: theme.blue
    readonly property color lavender: theme.lavender

    // Background colors
    readonly property color text: theme.text
    readonly property color textSecondary: theme.crust
    readonly property color textSubdued: theme.subtext0

    readonly property color bg: theme.base
    readonly property color bg_1: theme.surface1
    readonly property color bg_2: theme.surface2
    readonly property color bg_4: theme.overlay2
    readonly property color bgDark: theme.mantle

    readonly property color bgBlur: Qt.alpha(theme.base, Config.transparency)
    readonly property color bg_1Blur: Qt.alpha(theme.surface1, Config.transparency)
    readonly property color bg_2Blur: Qt.alpha(theme.surface2, Config.transparency)
    readonly property color bg_3Blur: Qt.alpha(theme.overlay0, Config.transparency)
    readonly property color bg_4Blur: Qt.alpha(theme.overlay2, Config.transparency)    
    readonly property color bgDarkBlur: Qt.alpha(theme.mantle, Config.transparency)

    // Brightness modifier (flipped for light themes)
    readonly property bool isLightTheme: Config.theme === "CatppuccinLatte"
    
    readonly property color brighten_1: isLightTheme ? Qt.rgba(0, 0, 0, 0.01) : Qt.rgba(1, 1, 1, 0.01)
    readonly property color brighten_3: isLightTheme ? Qt.rgba(0, 0, 0, 0.03) : Qt.rgba(1, 1, 1, 0.03)
    readonly property color brighten_5: isLightTheme ? Qt.rgba(0, 0, 0, 0.05) : Qt.rgba(1, 1, 1, 0.05)
    readonly property color brighten_10: isLightTheme ? Qt.rgba(0, 0, 0, 0.1) : Qt.rgba(1, 1, 1, 0.1)
    readonly property color brighten_20: isLightTheme ? Qt.rgba(0, 0, 0, 0.2) : Qt.rgba(1, 1, 1, 0.2)
    readonly property color brighten_50: isLightTheme ? Qt.rgba(0, 0, 0, 0.5) : Qt.rgba(1, 1, 1, 0.5)

    readonly property color darken_1: isLightTheme ? Qt.rgba(1, 1, 1, 0.01) : Qt.rgba(0, 0, 0, 0.01)
    readonly property color darken_3: isLightTheme ? Qt.rgba(1, 1, 1, 0.03) : Qt.rgba(0, 0, 0, 0.03)
    readonly property color darken_5: isLightTheme ? Qt.rgba(1, 1, 1, 0.05) : Qt.rgba(0, 0, 0, 0.05)
    readonly property color darken_10: isLightTheme ? Qt.rgba(1, 1, 1, 0.1) : Qt.rgba(0, 0, 0, 0.1)
    readonly property color darken_20: isLightTheme ? Qt.rgba(1, 1, 1, 0.2) : Qt.rgba(0, 0, 0, 0.2)
    readonly property color darken_50: isLightTheme ? Qt.rgba(1, 1, 1, 0.5) : Qt.rgba(0, 0, 0, 0.5)

}
```

## File: `modules/quickshell/config/settings/Config.qml`

```qml
pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import Quickshell.Io
import qs.settings

Singleton {
    id: root
    property string filePath: Qt.resolvedUrl("./config.json")
    property bool ready: false

    // For writing to the config file
    property alias set: configJsonAdapter

    // Easy access to config properties with Config.aliasName
    readonly property alias audioIncrement: configJsonAdapter.audioIncrement
    readonly property alias autoRotateEnabled: configJsonAdapter.autoRotateEnabled
    readonly property alias autoRotateInterval: configJsonAdapter.autoRotateInterval
    readonly property alias barHeight: configJsonAdapter.barHeight
    readonly property alias clipHistWidth: configJsonAdapter.clipHistWidth
    readonly property alias controlCenterWidth: configJsonAdapter.controlCenterWidth
    readonly property alias defaultExpireTimeout: configJsonAdapter.defaultExpireTimeout
    readonly property alias excludedExtensions: configJsonAdapter.excludedExtensions
    readonly property string fileSearchPath: root.expandPath(configJsonAdapter.fileSearchPath)
    readonly property alias gapsIn: configJsonAdapter.gapsIn
    readonly property alias gapsOut: configJsonAdapter.gapsOut
    readonly property alias includeHiddenFiles: configJsonAdapter.includeHiddenFiles
    readonly property alias launcherWidth: configJsonAdapter.launcherWidth
    readonly property alias drawerMargins: configJsonAdapter.drawerMargins
    readonly property alias lockOnStartup: configJsonAdapter.lockOnStartup
    readonly property alias lockscreenDimming: configJsonAdapter.lockscreenDimming
    readonly property alias mainMonitorId: configJsonAdapter.mainMonitorId
    readonly property alias pauseAutoRotateOnManual: configJsonAdapter.pauseAutoRotateOnManual
    readonly property alias settingsHeight: configJsonAdapter.settingsHeight
    readonly property alias showSplashOnLockscreen: configJsonAdapter.showSplashOnLockscreen
    readonly property alias showSplashOnWallpaper: configJsonAdapter.showSplashOnWallpaper
    readonly property alias showVolumeBarAlways: configJsonAdapter.showVolumeBarAlways
    readonly property alias theme: configJsonAdapter.theme
    readonly property alias transparency: configJsonAdapter.transparency
    readonly property alias useDebounceTimer: configJsonAdapter.useDebounceTimer
    readonly property alias useWallpaperDirectory: configJsonAdapter.useWallpaperDirectory
    readonly property string wallpaperDirectory: root.expandPath(configJsonAdapter.wallpaperDirectory)
    readonly property string wallpaperPath: root.expandPath(configJsonAdapter.wallpaperPath)
    readonly property alias windowRounding: configJsonAdapter.windowRounding
    readonly property alias workspaceRules: configJsonAdapter.workspaceRules
    
    // Greeter settings
    readonly property alias greeterBlurRadius: configJsonAdapter.greeterBlurRadius
    readonly property alias greeterDimming: configJsonAdapter.greeterDimming
    readonly property alias showSplashOnGreeter: configJsonAdapter.showSplashOnGreeter
    readonly property alias greeterSplashText: configJsonAdapter.greeterSplashText

    // Settable colors
    readonly property color launcherAccent: root.resolveColor(configJsonAdapter.launcherAccent)
    readonly property color launcherBackground: root.resolveColor(configJsonAdapter.launcherBackground)
    readonly property color controlCenterAccent: root.resolveColor(configJsonAdapter.controlCenterAccent)
    readonly property color controlCenterBackground: root.resolveColor(configJsonAdapter.controlCenterBackground)
    readonly property color clipHistAccent: root.resolveColor(configJsonAdapter.clipHistAccent)
    readonly property color clipHistBackground: root.resolveColor(configJsonAdapter.clipHistBackground)
    
    // Helper function to expand ~ to home directory (for reading)
    function expandPath(path) {
        if (!path) return "";
        
        // Expand ~ to home directory
        if (path.startsWith("~/")) {
            var homeDir = Quickshell.env("HOME");
            return homeDir + path.substring(1);
        }
        return path;
    }
    
    // Helper function to collapse home directory to ~ (for writing)
    function collapsePath(path) {
        if (!path) return "";
        
        var homeDir = Quickshell.env("HOME");
        if (path.startsWith(homeDir + "/")) {
            return "~" + path.substring(homeDir.length);
        }
        return path;
    }
    
    function resolveColor(name) {
        switch (name) {
            case "rosewater": return Colors.rosewater;
            case "flamingo": return Colors.flamingo;
            case "pink": return Colors.pink;
            case "mauve": return Colors.mauve;
            case "red": return Colors.red;
            case "maroon": return Colors.maroon;
            case "peach": return Colors.peach;
            case "yellow": return Colors.yellow;
            case "green": return Colors.green;
            case "teal": return Colors.teal;
            case "sky": return Colors.sky;
            case "sapphire": return Colors.sapphire;
            case "blue": return Colors.blue;
            case "lavender": return Colors.lavender;
            case "crust": return Colors.textSecondary;
            case "base": return Colors.bg;
            case "mantle": return Colors.bgDark;
            default: return Colors.text;
        }
    }

    FileView {
        path: root.filePath
        watchChanges: true
        onFileChanged: reload()
        onAdapterUpdated: writeAdapter()
        onLoaded: root.ready = true
        onLoadFailed: error => {
            if (error == FileViewError.FileNotFound) {
                writeAdapter();
            }
        }

        JsonAdapter {
            id: configJsonAdapter

            // ============================================================
            // Global Spacings & Appearance
            // ============================================================
            property int gapsOut: 12
            property int gapsIn: 4
            property int windowRounding: 12
            property int drawerMargins: 28
            property string mainMonitorId: "DP-1"
            property var workspaceRules: ({})
            
            // Theme & Colors
            property string theme: "CatppuccinMocha"
            property real transparency: 0.77

            // ============================================================
            // Bar
            // ============================================================
            property int barHeight: 44
            property real audioIncrement: 2
            property bool showVolumeBarAlways: true  // Set to false to only show when volume changes

            // ============================================================
            // SettingsWindow
            // ============================================================
            property int settingsHeight: 44

            // ============================================================
            // Launcher
            // ============================================================
            property int launcherWidth: 600
            property string fileSearchPath: "/home/kai"
            property bool includeHiddenFiles: false
            property var excludedExtensions: [".log", ".tmp", ".cache", ".ini", ".pid", ".lock", ".sock"]
            property bool useDebounceTimer: false
            
            // Colors
            property string launcherAccent: "lavender"
            property string launcherBackground: "mantle"

            // ============================================================
            // ClipHistory
            // ============================================================
            property int clipHistWidth: controlCenterWidth
            
            // Colors
            property string clipHistAccent: "green"
            property string clipHistBackground: "mantle"

            // ============================================================
            // ControlCenter
            // ============================================================
            property int controlCenterWidth: 450
            
            // Colors
            property string controlCenterAccent: "maroon"
            property string controlCenterBackground: "mantle"

            // ============================================================
            // LockscreenOverlay & Lock
            // ============================================================
            property bool lockOnStartup: false  // Set to true to automatically lock on Quickshell startup
            property real lockscreenDimming: 0.4  // Dimming opacity for lockscreen overlay (0.0 - 1.0)
            
    // Splash
    property bool showSplashOnLockscreen: true

    // ============================================================
    // Greeter
    // ============================================================
    property int greeterBlurRadius: 64
    property real greeterDimming: 0.5
    property bool showSplashOnGreeter: true
    property string greeterSplashText: "Welcome to MangoWC"

    // ============================================================
    // Wallpaper
    // ============================================================
            property string wallpaperPath: ""
            property string wallpaperDirectory: "~/Pictures/Wallpapers"
            property bool useWallpaperDirectory: false
            
            // Auto-rotation settings
            property bool autoRotateEnabled: false
            property int autoRotateInterval: 1800000 // 60min in milliseconds
            property bool pauseAutoRotateOnManual: true

            // Splash
            property bool showSplashOnWallpaper: false

            // ============================================================
            // NotificationPopup
            // ============================================================
            property int defaultExpireTimeout: 5000

            // ============================================================
            // ReloadPopup
            // ============================================================
            // (No specific settings yet)
        }
    }

    // (Removed backwards-compatibility aliases) Use `root.options` or `configJsonAdapter` directly.

}

```

## File: `modules/quickshell/config/settings/Fonts.qml`

```qml
pragma ComponentBehavior: Bound
pragma Singleton

import QtQuick
import Quickshell
import qs.settings.themes

Singleton {
    // Typography: Font sizes
    readonly property int p: 14
    readonly property int h1: 24
    readonly property int h2: 22
    readonly property int h3: 20
    readonly property int h4: 18
    readonly property int h5: 16
    readonly property int h6: 14

    readonly property string iconFont: "Symbols Nerd Font"

    // Navigation icons
    readonly property string iconChevronDown: "\uf078"
    readonly property string iconChevronLeft: "\uf053"
    readonly property string iconChevronRight: "\uf054"
    readonly property string iconChevronUp: "\uf077"
    readonly property string iconMenu: "\udb80\udf5c"

    // UI state icons
    readonly property string iconCircle: "\uf111"
    readonly property string iconCircleFilled: "\uea71"
    readonly property string iconTrue: "\uf00c"
    readonly property string iconFalse: "\uf00d"
    readonly property string iconCheckboxChecked: "\uf14a"
    readonly property string iconCheckboxUnchecked: "\uf0c8"
    readonly property string iconRadioChecked: "\uf192"
    readonly property string iconRadioUnchecked: "\uf111"

    // Control and action icons
    readonly property string iconPlus: "\uf067"
    readonly property string iconClear: "\uea81"
    readonly property string iconSearch: "\uf002"
    readonly property string iconLink: "\uf0c1"
    readonly property string iconRepeat: "\uf01e"
    readonly property string iconLock: "\uf023"
    readonly property string iconInfo: "\uf05a"
    readonly property string iconBell: "\uf0f3"
    readonly property string iconSpinner: "\uf110"

    // Media and playback icons
    readonly property string iconPlay: "\uf04b"
    readonly property string iconPause: "\uf04c"
    readonly property string iconForward: "\uf04e"
    readonly property string iconBackward: "\uf04a"
    readonly property string iconMusic: "\uf001"

    // Audio and volume icons
    readonly property string iconVolumeMute: "\ueee8"
    readonly property string iconVolumeLow: "\uf026"
    readonly property string iconVolumeMedium: "\uf027"
    readonly property string iconVolumeHigh: "\uf028"
    readonly property string iconHeadset: "\udb80\udece"
    readonly property string iconSpeaker: "\uf028"
    readonly property string iconMicrophone: "\uf130"

    // Power and system icons
    readonly property string iconPowerOff: "\uf011"
    readonly property string iconSleep: "\uf186"
    readonly property string iconReboot: "\uf021"
    readonly property string iconPowerFast: "\udb81\udcc5"
    readonly property string iconPowerMedium: "\udb83\udf85"
    readonly property string iconPowerEco: "\udb83\udf86"
    readonly property string iconBattery: "\uf240"
    readonly property string iconClock: "\uf43a"
    readonly property string iconTimer: "\uf017"

    // Network and connectivity icons
    readonly property string iconWifi: "\udb81\udda9"
    readonly property string iconWifiOff: "\udb81\uddaa"
    readonly property string iconLanOn: "\udb80\ude01"
    readonly property string iconLanOff: "\udb80\ude02"
    readonly property string iconBluetooth: "\udb80\udcaf"
    readonly property string iconBluetoothConnect: "\udb80\udcb1"
    readonly property string iconBluetoothOff: "\udb80\udcb2"

    // Display and appearance icons
    readonly property string iconLightOff: "\udb80\udf36"
    readonly property string iconLightNight: "\udb86\ude4d"
    readonly property string iconMonitor: "\udb80\udf79"
    readonly property string iconRoundedCorner: "\udb85\udcfc"
    readonly property string iconGapsOut: "\udb80\udcce"
    readonly property string iconGapsIn: "\udb80\udccb"
    readonly property string iconDimming: "\udb83\udc4a"

    // Settings and configuration icons
    readonly property string iconSettings: "\uf085"
    readonly property string iconGeneralSettings: "\ue690"
    readonly property string iconTheme: "\udb81\udd0e"
    readonly property string iconPalette: "\ue22b"
    readonly property string iconColor: "\ue22b"
    readonly property string iconEye: "\uf06e"
    readonly property string iconSpacing: "\udb81\ude1e"
    readonly property string iconLockSettings: "\udb80\udf3e"

    // File and folder icons
    readonly property string iconFolder: "\uf07b"
    readonly property string iconFolderOpen: "\uf07c"
    readonly property string iconImage: "\udb80\udeeb"

    // Device and hardware icons
    readonly property string iconPhone: "\uf10b"
    readonly property string iconComputer: "\udb80\udf22"
    readonly property string iconKeyboard: "\udb80\udf0c"
    readonly property string iconMouse: "\udb80\udf7d"

    // Application and brand icons
    readonly property string iconArch: "\udb82\udcc7"
    readonly property string iconHyprland: "\uf359"
    readonly property string iconLauncher: "\udb85\udcdf"
    readonly property string iconGithub: "\uf09b"

    // Wallpaper and visual icons
    readonly property string iconWallpaperNext: "\uf03e"
    readonly property string iconSplash: "\udb80\udd88"

    // Status and feedback icons
    readonly property string iconAllDone: "\udb82\udd95"
    
}
```

## File: `modules/quickshell/config/settings/UsageMetric.json`

```json
{
  "data": {
    "data": {
      "usageData": {}
    }
  }
}

```

## File: `modules/quickshell/config/settings/config.json`

```json
{
    "audioIncrement": 2,
    "autoRotateEnabled": true,
    "autoRotateInterval": 1800000,
    "barHeight": 28,
    "clipHistAccent": "mauve",
    "clipHistBackground": "mantle",
    "clipHistWidth": 0,
    "controlCenterAccent": "sky",
    "controlCenterBackground": "crust",
    "controlCenterWidth": 0,
    "defaultExpireTimeout": 5000,
    "drawerMargins": 28,
    "excludedExtensions": [
        ".log",
        ".tmp",
        ".cache",
        ".ini",
        ".pid",
        ".lock",
        ".sock"
    ],
    "fileSearchPath": "~",
    "gapsIn": 8,
    "gapsOut": 12,
    "includeHiddenFiles": false,
    "launcherAccent": "lavender",
    "launcherBackground": "mantle",
    "launcherWidth": 0,
    "lockOnStartup": true,
    "lockscreenDimming": 0.4,
    "mainMonitorId": "DP-1",
    "pauseAutoRotateOnManual": false,
    "settingsHeight": 44,
    "showSplashOnLockscreen": true,
    "showSplashOnWallpaper": false,
    "showVolumeBarAlways": false,
    "theme": "MonokaiProSpectrum",
    "transparency": 0.76,
    "useDebounceTimer": false,
    "useWallpaperDirectory": true,
    "wallpaperDirectory": "~/.config/quickshell/assets/wallpapers",
    "wallpaperPath": "~/.config/quickshell/assets/wallpapers/AdobeStock_314157553.jpeg",
    "windowRounding": 12,
    "workspaceRules": {
        "DP-1": [
            5,
            6,
            7,
            8
        ],
        "DP-3": [
            9,
            10,
            11,
            12
        ],
        "HDMI-A-1": [
            1,
            2,
            3,
            4
        ]
    }
}

```

## File: `modules/quickshell/config/VERSION`

```text
0.0.3

```

## File: `modules/quickshell/config/shell.qml`

```qml
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

```

## File: `modules/quickshell/hm-module.nix`

```nix
{ config, lib, pkgs, ... }:

let
  cfg = config.programs.quickshell.mangowc;

  # Build the MangoWC quickshell configuration package (same as in NixOS module for consistency)
  mangowcQuickshellConfig = pkgs.stdenv.mkDerivation {
    name = "mangowc-quickshell-config";
    src = ./config;

    installPhase = ''
      mkdir -p $out/share/quickshell/mangowc
      cp -r . $out/share/quickshell/mangowc/
      chmod -R u+r $out/share/quickshell/mangowc/
    '';
  };
in {
  options.programs.quickshell.mangowc = {
    enable = lib.mkEnableOption "MangoWC Quickshell configuration";
    
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.quickshell;
      description = "The quickshell package to use";
    };

    configPackage = lib.mkOption {
      type = lib.types.package;
      default = mangowcQuickshellConfig;
      description = "The MangoWC quickshell configuration package";
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = [ cfg.package ];

    xdg.configFile = {
      "quickshell/shell.qml".source = "${cfg.configPackage}/share/quickshell/mangowc/shell.qml";
      "quickshell/modules".source = "${cfg.configPackage}/share/quickshell/mangowc/modules";
      "quickshell/components".source = "${cfg.configPackage}/share/quickshell/mangowc/components";
      "quickshell/settings".source = "${cfg.configPackage}/share/quickshell/mangowc/settings";
      "quickshell/services".source = "${cfg.configPackage}/share/quickshell/mangowc/services";
      "quickshell/assets".source = "${cfg.configPackage}/share/quickshell/mangowc/assets";
    };
  };
}

```

## File: `modules/quickshell/module.nix`

```nix
{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.programs.quickshell.mangowc;

  # Build quickshell package with MangoWC configuration
  quickshellPackage = pkgs.quickshell;

  # Build the MangoWC quickshell configuration package
  mangowcQuickshellConfig = pkgs.stdenv.mkDerivation {
    name = "mangowc-quickshell-config";
    src = ./config;

    installPhase = ''
      mkdir -p $out/share/quickshell/mangowc

      # Copy all configuration files
      cp -r . $out/share/quickshell/mangowc/

      # Ensure proper permissions
      chmod -R u+r $out/share/quickshell/mangowc/
    '';
  };

  # Build greeter-specific configuration package
  greeterConfig = pkgs.stdenv.mkDerivation {
    name = "mangowc-greeter-config";
    src = ./config;

    installPhase = ''
            mkdir -p $out/share/quickshell/greeter

            # Copy essential settings
            mkdir -p $out/share/quickshell/greeter/settings
            cp settings/*.qml $out/share/quickshell/greeter/settings/ 2>/dev/null || true
            cp settings/*.json $out/share/quickshell/greeter/settings/ 2>/dev/null || true

            # Copy shared components
            mkdir -p $out/share/quickshell/greeter/components
            cp -r components/animations $out/share/quickshell/greeter/components/ 2>/dev/null || true

            # Copy greeter module
            mkdir -p $out/share/quickshell/greeter/modules/greeter
            cp modules/greeter/Greeter.qml $out/share/quickshell/greeter/modules/greeter/ 2>/dev/null || true
            mkdir -p $out/share/quickshell/greeter/modules/greeter/components
            cp modules/greeter/components/*.qml $out/share/quickshell/greeter/modules/greeter/components/ 2>/dev/null || true
            cp -r modules/greeter/pam $out/share/quickshell/greeter/modules/greeter/ 2>/dev/null || true

            # Copy lockscreen components needed by greeter
            cp modules/lockscreen/components/BlurredWallpaper.qml $out/share/quickshell/greeter/modules/greeter/components/ 2>/dev/null || true

            # Copy services needed by greeter
            mkdir -p $out/share/quickshell/greeter/services
            cp -r services/* $out/share/quickshell/greeter/services/ 2>/dev/null || true

            # Create greeter-specific shell.qml
            cat > $out/share/quickshell/greeter/shell.qml << 'EOF'
      pragma ComponentBehavior: Bound
      import QtQuick
      import Quickshell
      import qs.modules.greeter

      ShellRoot {
          id: greeterRoot
          reloadableId: "greeterModule"

          Greeter {
              anchors.fill: parent
          }
      }
      EOF

            # Create qmldir for proper module resolution
            mkdir -p $out/share/quickshell/greeter/modules/greeter
            cat > $out/share/quickshell/greeter/qmldir << 'EOF'
      module qs
      EOF

            # Create module qmldir files
            cat > $out/share/quickshell/greeter/modules/greeter/qmldir << 'EOF'
            module qs.modules.greeter
            Greeter 1.0 Greeter.qml
            EOF

            mkdir -p $out/share/quickshell/greeter/modules/greeter/components
            cat > $out/share/quickshell/greeter/modules/greeter/components/qmldir << 'EOF'
      module qs.modules.greeter.components
      GreeterContext 1.0 GreeterContext.qml
      GreeterBackground 1.0 GreeterBackground.qml
      GreeterForm 1.0 GreeterForm.qml
      BlurredWallpaper 1.0 BlurredWallpaper.qml
      EOF

            # Create settings module qmldir
            mkdir -p $out/share/quickshell/greeter/settings
            cat > $out/share/quickshell/greeter/settings/qmldir << 'EOF'
            module qs.settings
            Config 1.0 Config.qml
            Colors 1.0 Colors.qml
            Fonts 1.0 Fonts.qml
            AppState 1.0 AppState.qml
            EOF

            # Create screenshot module qmldir so module can be imported as qs.modules.screenshot
            mkdir -p $out/share/quickshell/mangowc/modules/screenshot
            cat > $out/share/quickshell/mangowc/modules/screenshot/qmldir << 'EOF'
      module qs.modules.screenshot
      Controller 1.0 Controller.qml
      CutoutRect 1.0 CutoutRect.qml
      EOF
    '';
  };
in {
  options.programs.quickshell.mangowc = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable MangoWC Quickshell configuration";
    };

    package = lib.mkOption {
      type = lib.types.package;
      default = quickshellPackage;
      description = "The quickshell package to use";
    };

    configPackage = lib.mkOption {
      type = lib.types.package;
      default = mangowcQuickshellConfig;
      description = "The MangoWC quickshell configuration package";
    };

    greeter.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable greeter-specific configuration";
    };

    greeterPackage = lib.mkOption {
      type = lib.types.package;
      default = greeterConfig;
      description = "The MangoWC greeter configuration package";
    };

    autoStart = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Automatically start quickshell on MangoWC session startup";
    };
  };

  config = lib.mkIf cfg.enable {
    # Set Qt platform to Wayland for quickshell
    environment.sessionVariables = {
      QT_QPA_PLATFORM = "wayland-egl";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      GBM_BACKEND = "nvidia-drm";
      __EGL_VENDOR_LIBRARY_FILENAMES = "/run/opengl-driver/share/glvnd/egl_vendor.d/10_nvidia.json";
    };

    # Install quickshell and configuration
    environment.systemPackages =
      [
        cfg.package
        cfg.configPackage
        pkgs.polkit
        pkgs.grim
        pkgs.wl-clipboard
        pkgs.imagemagick
        pkgs.qt6.qtwayland
        pkgs.wlroots
        pkgs.egl-wayland
        pkgs.eglexternalplatform
      ]
      ++ lib.optionals cfg.greeter.enable [cfg.greeterPackage];

    # Enable polkit authentication agent
    security.polkit.enable = true;

    # Auto-start quickshell with MangoWC
  };
}

```

## File: `nix/hm-module.nix`

```nix
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

```

## File: `nix/nixos-module.nix`

```nix
self: {
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.programs.panchakosha;
in {
  imports = [
    (import ../modules/greetd/module.nix)
    (import ../modules/quickshell/module.nix)
    (import ../modules/mangowc/module.nix)
  ];
  options = {
    programs.panchakosha = {
      enable = lib.mkEnableOption "panchakosha, a wayland compositor based on dwl";
      package = lib.mkOption {
        type = lib.types.package;
        default = self.packages.${pkgs.stdenv.hostPlatform.system}.mangowc or pkgs.mangowc;
        description = "The panchakosha package to use";
      };
    };
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = [
      cfg.package
    ];

    # Enable sub-modules automatically
    services.greetd.mangowc.enable = lib.mkDefault true;
    programs.quickshell.mangowc.enable = lib.mkDefault true;

    xdg.portal = {
      enable = lib.mkDefault true;

      config = {
        panchakosha = {
          default = [
            "gtk"
          ];
          "org.freedesktop.impl.portal.Secret" = ["gnome-keyring"];
          "org.freedesktop.impl.portal.ScreenCast" = ["wlr"];
          "org.freedesktop.impl.portal.ScreenShot" = ["wlr"];
          "org.freedesktop.impl.portal.Inhibit" = [];
        };
      };
      extraPortals = with pkgs; [
        xdg-desktop-portal-wlr
        xdg-desktop-portal-gtk
      ];

      wlr.enable = lib.mkDefault true;

      configPackages = [cfg.package];
    };

    security.polkit.enable = lib.mkDefault true;

    programs.xwayland.enable = lib.mkDefault true;

    services = {
      displayManager.sessionPackages = [cfg.package];

      graphical-desktop.enable = lib.mkDefault true;
    };
  };
}
```

## File: `README.md`

```markdown
# PanchaKosha - MangoWC NixOS Configuration

A complete NixOS flake configuration for MangoWC (Mango Window Compositor) with Quickshell integration and greetd display manager.

## Overview

PanchaKosha provides a modular, aesthetically pleasing Wayland desktop environment built on:

- **MangoWC** - A dwl-based Wayland compositor with advanced visual effects
- **Quickshell** - Qt/QML-based shell framework for bars, lockscreen, and greeter
- **greetd** - Modern display manager with custom Quickshell greeter
- **Home Manager** - User environment management

## Features

### Visual Effects
- Blur effects with configurable passes and radius
- Drop shadows for windows and layers
- Smooth animations with customizable curves
- Rounded corners with configurable radius
- Catppuccin and other popular color themes

### Components
- **Window Manager**: MangoWC with scroller and master-stack layouts
- **Shell**: Quickshell providing bar, overview, and notifications
- **Lockscreen**: Quickshell-based with blurred wallpaper
- **Greeter**: greetd with Quickshell UI matching lockscreen appearance

### Integration
- XDG portal support for screen sharing and file pickers
- Polkit authentication agent
- Systemd session management
- PAM authentication for greeter

## Project Structure

```
PanchaKosha/
├── flake.nix                      # Main flake entry point
├── nix/
│   ├── nixos-module.nix          # NixOS system module
│   └── hm-module.nix             # Home Manager user module
├── modules/
│   ├── mangowc/                  # MangoWC compositor
│   │   ├── module.nix
│   │   ├── lib/formatters.nix
│   │   └── options/*.nix         # Option definitions
│   ├── greetd/                   # Display manager
│   │   ├── module.nix
│   │   ├── options/
│   │   ├── AGENTS.md
│   │   └── QUICKSTART.md
│   └── quickshell/               # Quickshell configuration
│       ├── module.nix
│       └── config/               # QML files
│           ├── shell.qml
│           ├── settings/
│           ├── components/
│           ├── modules/
│           │   ├── bar/
│           │   ├── lockscreen/
│           │   ├── overview/
│           │   └── greeter/
│           ├── services/
│           └── assets/
└── .documentation/
    ├── ENABLE_GREETD.md          # GreetD setup guide
    └── DEPENDENCIES.md           # Complete dependency list
```

## Quick Start

For detailed installation instructions, see **[INSTALLATION.md](./.documentation/INSTALLATION.md)**.

### 1. Add as Flake Input

```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    panchakosha = {
      url = "github:yourusername/PanchaKosha";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, panchakosha }: {
    nixosConfigurations.my-hostname = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        panchakosha.nixosModules.default
        ./configuration.nix
      ];
    };
  };
}
```

### 2. Enable MangoWC

```nix
{ pkgs, ... }: {
  # Enable MangoWC compositor
  programs.mangowc.enable = true;
  
  # Enable greetd with Quickshell greeter
  services.greetd.mangowc = {
    enable = true;
    quickshellGreeter.enable = true;
    appearance.theme = "CatppuccinMocha";
    appearance.wallpaper = "/path/to/wallpaper.jpg";
  };
  
  # Enable Quickshell
  programs.quickshell.mangowc.enable = true;
}
```

### 3. Build and Switch

```bash
sudo nixos-rebuild switch --flake .#my-hostname
```

## Configuration Options

### NixOS Module Options

#### MangoWC

```nix
programs.mangowc = {
  enable = true;                    # Enable MangoWC
  package = pkgs.mangowc;           # Custom package (optional)
};
```

#### GreetD

```nix
services.greetd.mangowc = {
  enable = true;                    # Enable greetd
  quickshellGreeter.enable = true;  # Use Quickshell greeter
  
  appearance = {
    theme = "CatppuccinMocha";      # Theme name
    wallpaper = "/path/to/wall.jpg";
    blurRadius = 10.0;              # Blur strength
    dimming = 0.3;                  # Background dimming
    showSplashOnGreeter = true;     # Show welcome message
    splashText = "Welcome";
  };
  
  session = {
    rememberLastSession = true;     # Remember last DE
    numlockOnStartup = true;        # Enable numlock
  };
};
```

#### Quickshell

```nix
programs.quickshell.mangowc = {
  enable = true;                    # Enable Quickshell
  autoStart = true;                 # Auto-start on session
};
```

### Home Manager Module Options

```nix
wayland.windowManager.mangowc = {
  enable = true;
  
  # Environment variables
  environment = {
    XDG_CURRENT_DESKTOP = "wlroots";
    QT_QPA_PLATFORM = "wayland";
    # ... more variables
  };
  
  # Startup commands
  # Note: quickshell is auto-started by default and handles wallpapers
  execOnce = [
    "dunst"              # Notification daemon
    "nm-applet --indicator"  # Network manager (runs in background)
  ];
  
  # Monitor configuration
  monitors = {
    "DP-1" = {
      width = 1920;
      height = 1080;
      refreshRate = 60;
      scale = 1;
      position.x = 0;
      position.y = 0;
    };
  };
  
  # Keybindings
  bindings = [
    {
      mods = ["SUPER"];
      key = "Return";
      command = "spawn";
      params = "foot";
    }
  ];
};
```

## Available Themes

The Quickshell configuration supports these themes:

- **Catppuccin**: Latte, Frappé, Macchiato, Mocha
- **Gruvbox**: Dark
- **Nord**
- **Monokai Pro**: Classic, Machine, Octagon, Ristretto, Spectrum, Light

## Testing

### Evaluate Configuration

```bash
# Check NixOS configuration
nix eval .#nixosConfigurations.my-hostname.config.programs.mangowc.enable

# Check Home Manager configuration
nix eval .#homeConfigurations.user@hostname.config.wayland.windowManager.mangowc.enable
```

### Build Without Installing

```bash
# Build NixOS configuration
nix build .#nixosConfigurations.my-hostname.config.system.build.toplevel

# Build Home Manager configuration
nix build .#homeConfigurations.user@hostname.activationPackage
```

### Run Tests

```bash
nix flake check
```

## Development

### Enter Development Shell

```bash
nix develop
```

This provides:
- Nix language server (nil)
- Code formatters (nixfmt-classic, alejandra)
- NixOS test driver
- Qt6 development libraries

### Format Nix Files

```bash
nix fmt
```

### Run NixOS Tests

```bash
nix run .#checks.x86_64-linux.default
```

## Documentation

- **[INSTALLATION.md](./.documentation/INSTALLATION.md)** - Complete installation and setup guide
- **[ENABLE_GREETD.md](./.documentation/ENABLE_GREETD.md)** - GreetD configuration guide
- **[DEPENDENCIES.md](./.documentation/DEPENDENCIES.md)** - Dependency reference
- **[COMPLETION_SUMMARY.md](./.documentation/COMPLETION_SUMMARY.md)** - Project summary
- **[modules/greetd/AGENTS.md](./modules/greetd/AGENTS.md)** - GreetD module reference
- **[modules/greetd/QUICKSTART.md](./modules/greetd/QUICKSTART.md)** - GreetD quick start guide
- **[modules/mangowc/AGENTS.md](./modules/mangowc/AGENTS.md)** - MangoWC module reference

## Troubleshooting

### Common Issues

#### Greeter doesn't appear
```bash
# Check greetd status
systemctl status greetd

# View logs
journalctl -u greetd -f
```

#### Quickshell shows errors
```bash
# Check quickshell installation
nix-store -q --references $(which quickshell)

# View logs
journalctl --user -u quickshell
```

#### MangoWC fails to start
```bash
# Check configuration
nix-instantiate --parse nix/hm-module.nix

# View logs
journalctl --user -u mangowc-session.target
```

### Recovery

If you can't log in:

1. Switch to another TTY (Ctrl+Alt+F2)
2. Stop greetd: `sudo systemctl stop greetd`
3. Enable alternative display manager:
   ```nix
   services.xserver.displayManager.lightdm.enable = true;
   ```
4. Rebuild: `sudo nixos-rebuild switch`

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run `nix fmt` and `nix flake check`
5. Submit a pull request

## License

See the [LICENSE](./modules/quickshell/config/LICENSE) file in the Quickshell configuration directory.

## Acknowledgments

- [MangoWC](https://github.com/elenapan/MangoWC) - Base compositor
- [Quickshell](https://github.com/cozuya/quickshell) - Shell framework
- [greetd](https://greetd.emersion.works/) - Display manager
- [NixOS](https://nixos.org/) - Linux distribution
- [Home Manager](https://github.com/nix-community/home-manager) - User environment

## Support

For issues and questions:
- Open an issue on GitHub
- Check existing documentation
- Consult NixOS and MangoWC wikis

```

## File: `base16-spectrum.yaml`

```yaml
scheme: Monokai Pro Spectrum
author: Monokai
base00: "#131313"  # Default Background
base01: "#191919"  # Lighter Background (used for status bars, line highlighting, etc.)
base02: "#222222"  # Selection Background
base03: "#69676c"  # Comments, Invisible
base04: "#8b888f"  # Light Foreground (Carets, selection, etc.)
base05: "#bab6c0"  # Default Foreground
base06: "#f7f1ff"  # Light Accent Foreground
base07: "#f7f1ff"  # Bright Accent Foreground
base08: "#fc618d"  # Red
base09: "#fd9353"  # Orange
base0A: "#fce566"  # Yellow
base0B: "#7bd88f"  # Green
base0C: "#5ad4e6"  # Cyan
base0D: "#948ae3"  # Blue
base0E: "#948ae3"  # Magenta
base0F: "#fd9353"  # Brown

```

## File: `flake.nix`

```nix
{
  description = "Pancha Kosha - MangoWC NixOS configuration with Quickshell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home Manager for user configurations
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  }: let
    # Supported systems
    supportedSystems = [
      "x86_64-linux"
      "aarch64-linux"
    ];

    # Helper function to generate outputs for each system
    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

    # Import NixOS module
    nixosModule = import ./nix/nixos-module.nix self;

    # Import Home Manager module
    hmModule = import ./nix/hm-module.nix self;

    # Import greetd module
    greetdModule = import ./modules/greetd/module.nix;

    # Import quickshell module
    quickshellModule = import ./modules/quickshell/module.nix;

    # Import quickshell HM module
    quickshellHmModule = import ./modules/quickshell/hm-module.nix;
  in {
    # NixOS modules
    nixosModules = {
      # Main MangoWC module
      mangowc = nixosModule;

      # GreetD with Quickshell greeter
      greetd = greetdModule;

      # Quickshell configuration manager
      quickshell = quickshellModule;

      # All modules combined
      default = {
        imports = [
          nixosModule
          greetdModule
          quickshellModule
        ];
      };
    };

    # Home Manager modules
    homeManagerModules = {
      mangowc = hmModule;
      quickshell = quickshellHmModule;
      default = {
        imports = [
          hmModule
          quickshellHmModule
        ];
      };
    };

    # Packages provided by this flake
    packages = forAllSystems (system: let
      pkgs = nixpkgs.legacyPackages.${system};

      # Build MangoWC package
      mangowc = pkgs.stdenv.mkDerivation {
        pname = "mangowc";
        version = "0.1.0";
        src = ./modules/mangowc;

        buildInputs = with pkgs; [
          wayland
          wayland-protocols
          pixman
          libinput
          xorg.libxcb
        ];

        passthru.providedSessions = ["mango.desktop"];

        installPhase = ''
          mkdir -p $out/bin
          echo "#!/bin/sh" > $out/bin/mangowc
          echo "exec wayland compositor" >> $out/bin/mangowc
          chmod +x $out/bin/mangowc

          mkdir -p $out/share/wayland-sessions
          cat > $out/share/wayland-sessions/mango.desktop << 'EOF'
[Desktop Entry]
Name=MangoWC
Comment=MangoWC Wayland Compositor
Exec=mangowc
Type=Application
EOF
        '';
      };

      # Quickshell greeter package
      quickshellGreeter = pkgs.stdenv.mkDerivation {
        pname = "quickshell-greeter";
        version = "0.1.0";
        src = ./modules/quickshell/config;

        installPhase = ''
          mkdir -p $out/share/quickshell/greeter
          cp -r . $out/share/quickshell/greeter/
        '';
      };
    in {
      inherit mangowc quickshellGreeter;
      default = mangowc;
    });

    # Overlays for custom packages
    overlays.default = final: prev: {
      mangowc = self.packages.${prev.system}.default;
      quickshellGreeter = self.packages.${prev.system}.quickshellGreeter;
    };

    # Documentation
    devShells = forAllSystems (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      default = pkgs.mkShell {
        name = "panchakosha-dev";

        buildInputs = with pkgs; [
          # Development tools
          nil
          nixfmt-classic
          alejandra

          # Testing tools
          nixos-test-driver

          # Quickshell dependencies
          qt6.qtbase
          qt6.qtdeclarative
          qt6.qtsvg
        ];

        shellHook = ''
          echo "Pancha Kosha development environment"
          echo "Use 'nix fmt' to format Nix files"
          echo "Use 'nix develop' to enter this shell"
        '';
      };
    });

    # Formatter
    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.nixfmt-classic);
  };
}

```

