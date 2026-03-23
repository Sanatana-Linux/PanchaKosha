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
