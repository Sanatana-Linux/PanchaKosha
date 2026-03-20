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
