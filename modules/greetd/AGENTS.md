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
