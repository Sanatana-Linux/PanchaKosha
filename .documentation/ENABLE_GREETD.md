# How to Enable GreetD with Quickshell Greeter

This guide explains how to enable the greetd display manager with the MangoWC Quickshell greeter.

## Prerequisites

- NixOS system with MangoWC/Quickshell configuration
- PAM installed (included by default in NixOS)
- A desktop environment or window manager session file

## Basic Enablement

Add the following to your NixOS configuration:

```nix
{
  services.greetd.mangowc = {
    enable = true;
    quickshellGreeter.enable = true;
    
    # Appearance settings
    appearance.theme = "CatppuccinMocha";  # or CatppuccinLatte, CatppuccinMacchiato, GruvboxDark, Nord
    appearance.wallpaper = "/path/to/wallpaper.jpg";
    appearance.blurRadius = 10.0;          # Blur strength (default: 10.0)
    appearance.dimming = 0.3;              # Background dimming (default: 0.3)
    
    # Optional: Show splash text on greeter
    appearance.showSplashOnGreeter = true;
    appearance.splashText = "Welcome to MangoWC";
  };
}
```

## Theme Options

Available themes:
- `CatppuccinLatte` - Light theme
- `CatppuccinFrappé` - Dark theme (cooler)
- `CatppuccinMacchiato` - Dark theme (balanced)
- `CatppuccinMocha` - Dark theme (warmest, **recommended**)
- `GruvboxDark` - Warm dark theme
- `Nord` - Cool blue-toned theme

## Session Configuration

Configure available sessions and auto-login:

```nix
{
  services.greetd.mangowc = {
    enable = true;
    quickshellGreeter.enable = true;
    
    session.rememberLastSession = true;     # Remember last selected session
    session.autoLoginUser = "yourusername"; # Auto-login for testing (optional)
    session.numlockOnStartup = true;        # Enable numlock on boot
    
    # Available sessions (at least one required)
    sessions = [
      "Hyprland"
      "Plasma"
      "GNOME"
      "XFCE"
      "Openbox"
    ];
  };
}
```

**Note:** Make sure the sessions you list are actually installed on your system. The session names must match the `.desktop` files in `/usr/share/wayland-sessions/` or `/usr/share/xsessions/`.

## Full Example

Here's a complete example for a Hyprland setup:

```nix
{ pkgs, ... }: {
  # Enable greetd with MangoWC Quickshell greeter
  services.greetd.mangowc = {
    enable = true;
    quickshellGreeter.enable = true;
    
    appearance = {
      theme = "CatppuccinMocha";
      wallpaper = "/home/user/Pictures/wallpapers/mango-wc.jpg";
      blurRadius = 12.0;
      dimming = 0.4;
      showSplashOnGreeter = true;
      splashText = "Welcome to MangoWC";
    };
    
    session = {
      rememberLastSession = true;
      numlockOnStartup = true;
    };
    
    sessions = [ "Hyprland" "Plasma" ];
  };
  
  # Ensure Hyprland is available as a session
  programs.hyprland.enable = true;
}
```

## Testing

### Test Without Rebooting

1. Build your configuration:
   ```bash
   sudo nixos-rebuild switch
   ```

2. Stop any running display manager (if applicable):
   ```bash
   sudo systemctl stop display-manager
   ```

3. Start greetd:
   ```bash
   sudo systemctl start greetd
   ```

4. If something goes wrong, check logs:
   ```bash
   journalctl -u greetd -f
   ```

### Test in Virtual Machine

Create a test VM before applying to your main system:

```bash
nixos-rebuild build-vm
./result/bin/run-nixos-vm
```

## Troubleshooting

### Greeter Doesn't Appear

1. Check if greetd is running:
   ```bash
   systemctl status greetd
   ```

2. Check for errors:
   ```bash
   journalctl -u greetd -n 50 --no-pager
   ```

3. Verify Quickshell greeter built successfully:
   ```bash
   nix-build -A mangowc-greeter modules/greetd/module.nix
   ```

### Authentication Fails

1. Verify PAM configuration exists:
   ```bash
   ls -la /etc/pam.d/greetd
   ```

2. Check that your user exists and has a password set.

3. Try auto-login temporarily for debugging:
   ```nix
   session.autoLoginUser = "yourusername";
   ```

### Wallpaper Not Showing

1. Verify the path is absolute and correct
2. Ensure the file is readable by the greetd user
3. Check file permissions:
   ```bash
   ls -l /path/to/wallpaper.jpg
   ```

4. Try a different image format (JPG or PNG recommended)

### Sessions Not Listed

1. Verify session desktop files exist:
   ```bash
   ls /usr/share/wayland-sessions/*.desktop
   ls /usr/share/xsessions/*.desktop
   ```

2. Use exact session names matching the desktop files (case-sensitive)

3. Add custom sessions if needed (see AGENTS.md for custom session format)

## Advanced Configuration

### Custom Wallpaper Per Theme

```nix
appearan wallpapersByTheme = {
  CatppuccinMocha = "/path/to/mocha-wallpaper.jpg";
  CatppuccinLatte = "/path/to/latte-wallpaper.jpg";
  GruvboxDark = "/path/to/gruvbox-wallpaper.jpg";
};
```

### Disable Blur for Performance

```nix
appearance.enableBlur = false;
```

### Custom Session Command

```nix
session.additionalSessions = [
  {
    name = "CustomWM";
    command = "/home/user/bin/start-custom-wm.sh";
  }
];
```

## Disable GreetD

To disable and return to your previous display manager:

```nix
{
  services.greetd.mangowc.enable = false;
  # Optionally re-enable your previous DM
  services.xserver.displayManager.lightdm.enable = true;
}
```

Then rebuild:
```bash
sudo nixos-rebuild switch
```

## Additional Resources

- See [modules/greetd/AGENTS.md](../modules/greetd/AGENTS.md) for complete option reference
- See [modules/greetd/QUICKSTART.md](../modules/greetd/QUICKSTART.md) for quick setup examples
- Check greetd upstream documentation: https://greetd.emersion.works/
