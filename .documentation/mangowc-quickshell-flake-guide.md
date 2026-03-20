# MangoWC Quickshell Configuration - NixOS Flake Integration Guide

## Overview

This document explains how to integrate the MangoWC Quickshell configuration into a NixOS flake setup. The configuration provides a Wayland compositor setup using MangoWC (a fork of Hyprland) with the Quickshell desktop environment.

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Flake Structure](#flake-structure)
3. [Enabling the Configuration](#enabling-the-configuration)
4. [Available Settings](#available-settings)
5. [Configuration Options](#configuration-options)
6. [Potential Conflicts](#potential-conflicts)
7. [Verification Steps](#verification-steps)
8. [Troubleshooting](#troubleshooting)

## Prerequisites

Before integrating this configuration, ensure you have:
- NixOS 24.05 or later
- Flakes enabled in your NixOS configuration
- Basic understanding of NixOS modules and flakes

## Flake Structure

To include this configuration in your flake, follow this structure:

```nix
{
  description = "Your NixOS configuration with MangoWC Quickshell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    # MangoWC Quickshell input
    panchakosha = {
      url = "github:cozuya/panchakosha";  # or your fork
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    # Other inputs...
  };

  outputs = { self, nixpkgs, panchakosha, ... }: {
    nixosConfigurations.your-hostname = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix  # Your host-specific configuration
        ${panchakosha}/modules/quickshell/module.nix  # MangoWC Quickshell module
        # Other modules...
      ];
    };
  };
}
```

## Enabling the Configuration

To enable MangoWC Quickshell in your `configuration.nix`:

```nix
{
  # Enable MangoWC Quickshell
  programs.quickshell.mangowc.enable = true;
  
  # Optional: Enable the greeter (login screen)
  programs.quickshell.mangowc.greeter.enable = true;
  
  # Optional: Disable auto-start if you want to start manually
  programs.quickshell.mangowc.autoStart = false;
  
  # MangoWC-specific settings
  programs.mangowc.enable = true;  # Enable the compositor itself
  
  # Keybindings for launching quickshell (if not auto-started)
  programs.mangowc.bindings = [
    { mods = ["SUPER"]; key = "Return"; command = "spawn"; params = "quickshell"; }
  ];
}
```

## Available Settings

The MangoWC Quickshell module provides the following top-level options:

### Main Options
- `programs.quickshell.mangowc.enable` - Boolean: Enable MangoWC Quickshell (default: false)
- `programs.quickshell.mangowc.package` - Package: The quickshell package to use (default: internal build)
- `programs.quickshell.mangowc.configPackage` - Package: The MangoWC quickshell configuration package
- `programs.quickshell.mangowc.autoStart` - Boolean: Automatically start quickshell on MangoWC session startup (default: true)

### Greeter Options
- `programs.quickshell.mangowc.greeter.enable` - Boolean: Enable greeter-specific configuration (default: false)
- `programs.quickshell.mangowc.greeterPackage` - Package: The MangoWC greeter configuration package

### MangoWC Core Options (via programs.mangowc)
All standard MangoWC options remain available:
- `programs.mangowc.enable` - Boolean: Enable MangoWC compositor
- `programs.mangowc.bindings` - List: Keyboard bindings configuration
- `programs.mangowc.mouseBindings` - List: Mouse bindings configuration
- `programs.mangowc.exec` - List: Commands to execute on every config reload
- `programs.mangowc.execOnce` - List: Commands to execute only once on Mango startup
- And all other standard MangoWC options (appearance, animations, effects, etc.)

## Configuration Options Detail

### Quickshell Integration Points

The configuration integrates with MangoWC through several mechanisms:

1. **Autostart Service**: When `autoStart = true`, creates a systemd user service that launches quickshell after graphical-session.target
2. **Configuration Files**: Installs quickshell configuration to `~/.config/quickshell/`
3. **Environment Variables**: Sets appropriate Wayland and Qt environment variables
4. **IPC Integration**: Provides quickshell IPC endpoints for external control

### Key Configuration Areas

#### Appearance
Controls visual elements like colors, gaps, borders:
```nix
programs.mangowc.appearance = {
  gapsIn = 10;
  gapsOut = 5;
  borderWidth = 2;
  activeBorderColor = "#5f819d";
  inactiveBorderColor = "#4c566a";
};
```

#### Animations
Controls window animation behavior:
```nix
programs.mangowc.animations = {
  enabled = true;
  bezierCurve = "0.05, 0.8, 0.2, 1";
  animationTime = 10;
};
```

#### Effects
Controls visual effects like blur, shadows:
```nix
programs.mangowc.effects = {
  blur = true;
  blurSize = 7;
  blurPasses = 1;
  brightness = "1.0";
  opacity = 0.9;
  shadows = true;
  shadowColor = "#000000aa";
  shadowRange = 8;
  shadowRenderPower = 3;
};
```

#### Layouts
Controls window layout behavior:
```nix
programs.mangowc.masterStack = {
  default_mfact = 0.6;
  default_nmaster = 1;
};
```

## Potential Conflicts

When integrating this configuration, check for conflicts with:

### 1. Display Server/Window Manager
- Ensure no other window managers are enabled (sway, i3, gnome-shell, etc.)
- Disable conflicting wayland compositors:
  ```nix
  wayland.windowManager.sway.enable = false;
  services.xserver.enable = false;  # If using pure Wayland
  ```

### 2. Input Configuration
- Input methods (fcitx5, ibus) may need adjustment
- Touchpad/libinput settings might conflict:
  ```nix
  # Check if these conflict with MangoWC input settings
  services.libinput.enable = true;
  ```

### 3. System Services
- Display managers (gdm, lightdm) conflict with direct session start
- If using greeter, ensure display manager is disabled:
  ```nix
  services.displayManager.enable = false;  # When using quickshell greeter
  services.greetd.enable = true;         # Alternative display manager
  ```

### 4. Keybindings
- Global shortcuts may conflict with desktop environment shortcuts
- Review programs.mangowc.bindings for overlaps with:
  - Desktop environment shortcuts
  - Application-specific global shortcuts
  - Accessibility shortcuts

### 5. Sound/Audio
- Audio servers (pipewire, pulseaudio) configuration
- Volume control shortcuts may conflict:
  ```nix
  sound.enable = true;
  sound.package = pkgs.pipewire;
  ```

## Verification Steps

After enabling the configuration, verify:

1. **Build Success**:
   ```bash
   nix build .#nixosConfigurations.your-hostname.config
   ```

2. **Configuration Validation**:
   ```bash
   nix run nixpkgs#nixos-rebuild build -- --flake .#your-hostname
   ```

3. **Service Status** (after reboot):
   ```bash
   systemctl --user status quickshell
   journalctl --user -u quickshell -f
   ```

4. **Process Verification**:
   ```bash
   pgrep -l quickshell
   pgrep -l mangowc
   ```

5. **Key Functionality Tests**:
   - Super+Return opens terminal
   - Super+Space shows overview (if enabled)
   - Super+Shift+Return opens application launcher
   - Super+L locks screen
   - Super+C opens control center
   - Super+S opens settings window

## Troubleshooting

### Common Issues

#### 1. Quickshell Fails to Start
- Check logs: `journalctl --user -u quickshell -b`
- Verify installation: `ls ~/.config/quickshell/`
- Check for QML import errors in logs

#### 2. MangoWC Doesn't Launch
- Verify MangoWC package: `which mangowc` or `ls $(which mangowc)`
- Check mangowc logs: `journalctl --user -u mangowc`
- Ensure proper graphics drivers are installed

#### 3. Keybindings Not Working
- Check if quickshell is running and has focus
- Verify IPC functionality: `quickshell ipc call state toggleLauncher`
- Check mangowc keybind logs: Check debug output if enabled

#### 4. Visual Artifacts/Rendering Issues
- Ensure proper OpenGL/Vulkan drivers
- Check for compositing conflicts
- Try disabling effects temporarily:
  ```nix
  programs.mangowc.effects = {
    enabled = false;
    blur = false;
    shadows = false;
  };
  ```

#### 5. Greeter Issues
- Verify greeter configuration: `ls ~/.config/quickshell/greeter/`
- Check greeter logs: `journalctl --user -u quickshell-greeter`
- Ensure proper PAM configuration if using authentication

## Advanced Configuration

### Custom Keybindings
Add custom keybindings in `configuration.nix`:
```nix
programs.mangowc.bindings = [
  # Custom launcher with different terminal
  { mods = ["SUPER"]; key = "Return"; command = "spawn"; params = "alacritty"; }
  
  # Custom screenshot tool
  { mods = ["SUPER" "SHIFT"]; key = "s"; command = "spawn"; params = "grimshot save area"; }
  
  # Quickreload config
  { mods = ["SUPER" "SHIFT"]; key = "r"; command = "spawn"; params = "quickshell ipc call state reloadConfig"; }
];
```

### Autostart Applications
Configure autostart applications:
```nix
programs.mangowc.execOnce = [
  "wayland-bar"  # Example status bar
  "nm-applet"    # Network manager applet
  "blueman-applet" # Bluetooth manager
  "xdg-desktop-portal-wlr"  # Portal for screen sharing
  "wl-paste --type text --watch cliphist store"  # Clipboard history
  "wl-paste --type image --watch cliphist store" # Image clipboard history
];
```

### Environment Variables
Set environment variables:
```nix
programs.mangowc.env = {
  QT_QPA_PLATFORM = "wayland";
  GDK_BACKEND = "wayland";
  CLUTTER_BACKEND = "wayland";
};
```

## Conclusion

The MangoWC Quickshell configuration provides a modern, customizable Wayland desktop experience with the flexibility of NixOS management. By following this guide, you can successfully integrate it into your flake-based NixOS configuration while being aware of potential conflicts and verification steps.

For additional help, refer to:
- The [Quickshell documentation](https://github.com/cozuya/quickshell)
- The [MangoWC documentation](https://github.com/sudo-su/mangowc)
- Your specific hardware documentation for driver compatibility