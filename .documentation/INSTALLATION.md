# Installation Guide

This guide shows you how to add PanchaKosha to your NixOS flake configuration and enable all its components.

## Prerequisites

- NixOS with flakes enabled
- Basic understanding of NixOS configuration
- A working flake setup (`flake.nix` in `/etc/nixos/` or your config directory)

## Step 1: Add PanchaKosha as a Flake Input

Add PanchaKosha to your `flake.nix` inputs:

```nix
{
  description = "My NixOS Configuration";

  inputs = {
    # Main NixOS package repository
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    # Home Manager for user configurations
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    # Quickshell - required for shell features
    quickshell = {
      url = "github:cozuya/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    # PanchaKosha - MangoWC configuration
    panchakosha = {
      url = "github:YOUR_USERNAME/PanchaKosha";  # Replace with actual repo
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
      inputs.quickshell.follows = "quickshell";
    };
  };

  outputs = { self, nixpkgs, home-manager, quickshell, panchakosha }: {
    # Your configurations will go here
  };
}
```

## Step 2: Import Modules in Your Configuration

In your NixOS configuration file (e.g., `configuration.nix`), import the PanchaKosha modules:

```nix
{ pkgs, ... }: {
  # Import PanchaKosha modules
  imports = [
    panchakosha.nixosModules.mangowc
    panchakosha.nixosModules.greetd
    panchakosha.nixosModules.quickshell
  ];
  
  # Rest of your configuration...
}
```

## Step 3: Enable Components

### Minimal Setup (MangoWC + Quickshell)

```nix
{ pkgs, ... }: {
  imports = [
    panchakosha.nixosModules.mangowc
    panchakosha.nixosModules.quickshell
  ];
  
  # Enable MangoWC compositor
  programs.mangowc.enable = true;
  
  # Enable Quickshell (auto-starts with MangoWC)
  programs.quickshell.mangowc.enable = true;
}
```

### Full Setup (With GreetD Display Manager)

```nix
{ pkgs, ... }: {
  imports = [
    panchakosha.nixosModules.mangowc
    panchakosha.nixosModules.greetd
    panchakosha.nixosModules.quickshell
  ];
  
  # Enable MangoWC compositor
  programs.mangowc.enable = true;
  
  # Enable greetd display manager with Quickshell greeter
  services.greetd.mangowc = {
    enable = true;
    quickshellGreeter.enable = true;
    
    # Appearance settings
    appearance = {
      theme = "CatppuccinMocha";
      wallpaper = "/home/youruser/Pictures/wallpapers/my-wallpaper.jpg";
      blurRadius = 10.0;
      dimming = 0.3;
      showSplashOnGreeter = true;
      splashText = "Welcome to MangoWC";
    };
    
    # Session settings
    session = {
      rememberLastSession = true;
      numlockOnStartup = true;
    };
  };
  
  # Enable Quickshell
  programs.quickshell.mangowc.enable = true;
  
  # Optional: Disable other display managers if enabled
  # services.xserver.displayManager.lightdm.enable = false;
  # services.xserver.displayManager.gdm.enable = false;
  # services.xserver.displayManager.sddm.enable = false;
}
```

## Step 4: User-Level Configuration (Home Manager)

If you're using Home Manager, add this to your Home Manager configuration:

```nix
{ pkgs, ... }: {
  # Import Home Manager module
  imports = [
    panchakosha.homeManagerModules.mangowc
  ];
  
  # Enable MangoWC window manager
  wayland.windowManager.mangowc.enable = true;
  
  # Optional: Customize keybindings
  wayland.windowManager.mangowc.bindings = [
    {
      mods = ["SUPER"];
      key = "Return";
      command = "spawn";
      params = "foot";  # Terminal emulator
    }
    {
      mods = ["SUPER" "SHIFT"];
      key = "Q";
      command = "close";
    }
  ];
  
  # Optional: Add startup applications
  wayland.windowManager.mangowc.execOnce = [
    "dunst"                    # Notification daemon
    "nm-applet --indicator"    # Network manager
  ];
}
```

## Step 5: Build and Switch

Build your configuration and switch to it:

```bash
# If using flake in /etc/nixos/
sudo nixos-rebuild switch --flake .#your-hostname

# If using flake in another directory
sudo nixos-rebuild switch --flake /path/to/your/config#your-hostname
```

## Complete Example Configuration

Here's a complete `flake.nix` example:

```nix
{
  description = "My NixOS Configuration with MangoWC";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    quickshell = {
      url = "github:cozuya/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    panchakosha = {
      url = "github:YOUR_USERNAME/PanchaKosha";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
      inputs.quickshell.follows = "quickshell";
    };
  };

  outputs = { self, nixpkgs, home-manager, quickshell, panchakosha }: {
    nixosConfigurations."my-laptop" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        panchakosha.nixosModules.default
        
        ({ pkgs, ... }: {
          # System configuration
          system.stateVersion = "24.05";
          time.timeZone = "America/New_York";
          i18n.defaultLocale = "en_US.UTF-8";
          
          # Enable MangoWC
          programs.mangowc.enable = true;
          
          # Enable greetd with Quickshell greeter
          services.greetd.mangowc = {
            enable = true;
            quickshellGreeter.enable = true;
            appearance.theme = "CatppuccinMocha";
            appearance.wallpaper = "/home/user/Pictures/wallpapers/mango.jpg";
          };
          
          # Enable Quickshell
          programs.quickshell.mangowc.enable = true;
          
          # Users
          users.users.myuser = {
            isNormalUser = true;
            extraGroups = [ "wheel" "networkmanager" ];
          };
          
          # Other system configuration...
        })
      ];
    };
    
    homeConfigurations."myuser@my-laptop" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      modules = [
        panchakosha.homeManagerModules.mangowc
        
        ({ pkgs, ... }: {
          home.username = "myuser";
          home.homeDirectory = "/home/myuser";
          home.stateVersion = "24.05";
          
          # Enable MangoWC
          wayland.windowManager.mangowc.enable = true;
          
          # Home Manager packages
          home.packages = with pkgs; [
            foot              # Terminal
            dunst             # Notifications
            rofi-wayland      # App launcher
          ];
        })
      ];
    };
  };
}
```

## Component Overview

When you enable PanchaKosha, you get these components:

### 1. **MangoWC Compositor** (`programs.mangowc.enable`)
- Wayland compositor based on dwl
- Advanced visual effects (blur, shadows, animations)
- Scroller and master-stack layouts
- Customizable keybindings and rules

### 2. **Quickshell Shell** (`programs.quickshell.mangowc.enable`)
- Modern Qt/QML-based shell
- Status bar with widgets
- Application overview
- Notification center
- **Auto-starts with MangoWC by default**

### 3. **GreetD Display Manager** (`services.greetd.mangowc.enable`)
- Modern, secure display manager
- Quickshell-based greeter UI
- Matches lockscreen appearance
- PAM authentication
- Session selection

### 4. **Lockscreen** (included with Quickshell)
- Blurred wallpaper background
- Time and date display
- Matched to greeter styling

## Configuration Options Reference

### NixOS Level

```nix
{
  # MangoWC compositor
  programs.mangowc.enable = true;
  
  # GreetD display manager
  services.greetd.mangowc = {
    enable = true;
    quickshellGreeter.enable = true;
    appearance.theme = "CatppuccinMocha";
    appearance.wallpaper = "/path/to/wallpaper.jpg";
  };
  
  # Quickshell
  programs.quickshell.mangowc.enable = true;
}
```

### Home Manager Level

```nix
{
  # MangoWC window manager
  wayland.windowManager.mangowc = {
    enable = true;
    execOnce = [ "dunst" "nm-applet" ];
  };
}
```

## Testing Before Rebooting

You can test the configuration without rebooting:

```bash
# Build the configuration
sudo nixos-rebuild build --flake .#your-hostname

# Test in a VM first (recommended)
nixos-rebuild build-vm --flake .#your-hostname
./result/bin/run-nixos-vm

# If everything works, switch to it
sudo nixos-rebuild switch --flake .#your-hostname
```

## Troubleshooting

### Quickshell doesn't start automatically

Check if it's in the execOnce list:
```nix
wayland.windowManager.mangowc.execOnce = [ "quickshell" ];
```

Or manually start it:
```bash
quickshell &
```

### GreetD doesn't appear on boot

Check the service status:
```bash
systemctl status greetd
journalctl -u greetd -f
```

Make sure no other display manager is enabled:
```nix
services.xserver.displayManager.lightdm.enable = false;
```

### MangoWC fails to start

Check logs:
```bash
journalctl --user -u mangowc-session.target -f
```

Verify configuration syntax:
```bash
nix-instantiate --parse /path/to/your/configuration.nix
```

## Next Steps

After installation:

1. **Customize your theme** - See `.documentation/ENABLE_GREETD.md` for theme options
2. **Configure keybindings** - Add your preferred shortcuts in `wayland.windowManager.mangowc.bindings`
3. **Set up wallpapers** - Configure in greetd settings or Quickshell
4. **Install additional apps** - Add packages to `home.packages`
5. **Explore Quickshell modules** - Check `modules/quickshell/config/modules/` for bar, overview, etc.

## Additional Resources

- **[ENABLE_GREETD.md](./ENABLE_GREETD.md)** - Detailed greetd configuration
- **[DEPENDENCIES.md](./DEPENDENCIES.md)** - Complete dependency list
- **[README.md](../README.md)** - Main documentation
- **[NixOS Wiki](https://wiki.nixos.org/)** - General NixOS help
- **[Quickshell Docs](https://github.com/cozuya/quickshell)** - Quickshell framework

## Getting Help

If you encounter issues:
1. Check the troubleshooting sections in the documentation
2. Review logs with `journalctl`
3. Verify your flake syntax with `nix flake check`
4. Consult the NixOS and MangoWikis
5. Open an issue on GitHub

---

**Happy configuring!** 🎉
