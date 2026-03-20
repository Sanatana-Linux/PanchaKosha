# PanchaKosha Dependencies and Packages

This document lists all external dependencies and packages required by the PanchaKosha configuration.

## Flake Inputs

These are the main flake inputs defined in `flake.nix`:

| Input | URL | Purpose |
|-------|-----|---------|
| `nixpkgs` | `github:nixos/nixpkgs/nixos-unstable` | Main NixOS package repository |
| `quickshell` | `github:cozuya/quickshell` | Qt/QML-based shell framework |
| `home-manager` | `github:nix-community/home-manager` | User environment management |

## System Packages (NixOS Level)

These packages are installed at the system level via `environment.systemPackages`:

### Core Packages

| Package | Nix Attribute | Module | Purpose |
|---------|---------------|--------|---------|
| **mangowc** | `pkgs.mangowc` | `nix/nixos-module.nix` | MangoWC compositor |
| **quickshell** | `pkgs.quickshell` | `modules/greetd/module.nix`, `modules/quickshell/module.nix` | Quickshell shell framework |
| **quickshell-greeter** | Custom derivation | `modules/greetd/module.nix` | GreetD greeter UI |
| **mangowc-quickshell-config** | Custom derivation | `modules/quickshell/module.nix` | Quickshell configuration |

### Portal and Desktop Integration

| Package | Nix Attribute | Module | Purpose |
|---------|---------------|--------|---------|
| **xdg-desktop-portal-wlr** | `pkgs.xdg-desktop-portal-wlr` | `nix/nixos-module.nix` | Wlroots screen sharing portal |
| **xdg-desktop-portal-gtk** | `pkgs.xdg-desktop-portal-gtk` | `nix/nixos-module.nix` | GTK file picker portal |
| **polkit** | `pkgs.polkit` (via `security.polkit`) | `nix/nixos-module.nix` | Authorization framework |
| **xwayland** | `pkgs.xorg.xwayland` (via `programs.xwayland`) | `nix/nixos-module.nix` | X11 compatibility layer |

### GreetD Specific

| Package | Nix Attribute | Module | Purpose |
|---------|---------------|--------|---------|
| **greetd** | `pkgs.greetd` (service) | `modules/greetd/module.nix` | Display manager daemon |
| **tuigreet** | `pkgs.greetd.tuigreet` | `modules/greetd/module.nix` | TUI greeter for greetd |

## User Packages (Home Manager Level)

These packages are installed at the user level via `home.packages`:

| Package | Nix Attribute | Module | Purpose |
|---------|---------------|--------|---------|
| **mangowc** | `cfg.package` | `nix/hm-module.nix` | MangoWC compositor |
| **wl-clipboard** | `pkgs.wl-clipboard` | `nix/hm-module.nix` | Wayland clipboard utilities |
| **grim** | `pkgs.grim` | `nix/hm-module.nix` | Screenshot utility |
| **slurp** | `pkgs.slurp` | `nix/hm-module.nix` | Region selector |
| **wlr-randr** | `pkgs.wlr-randr` | `nix/hm-module.nix` | Display configuration |

## QuickShell QML Dependencies

The Quickshell configuration requires these Qt6 modules (provided by quickshell):

| Module | Import Statement | Purpose |
|--------|------------------|---------|
| **QtQuick** | `import QtQuick` | Base QML types |
| **Quickshell** | `import Quickshell` | Quickshell API |
| **Quickshell.Services.Pam** | `import Quickshell.Services.Pam` | PAM authentication |
| **Quickshell.Io** | `import Quickshell.Io` | File I/O operations |
| **Quickshell.Services** | `import Quickshell.Services` | System services |

## Build Dependencies (Development)

These are needed for building MangoWC from source:

| Package | Nix Attribute | Purpose |
|---------|---------------|---------|
| **wayland** | `pkgs.wayland` | Wayland protocol |
| **pixman** | `pkgs.pixman` | Pixel manipulation library |
| **libinput** | `pkgs.libinput` | Input device handling |
| **libxcb** | `pkgs.xorg.libxcb` | X11 protocol access |

## Development Shell Dependencies

These packages are available in the development shell (`nix develop`):

| Package | Nix Attribute | Purpose |
|---------|---------------|---------|
| **nil** | `pkgs.nil` | Nix language server |
| **nixfmt-classic** | `pkgs.nixfmt-classic` | Nix code formatter |
| **alejandra** | `pkgs.alejandra` | Alternative Nix formatter |
| **nixos-test-driver** | `pkgs.nixos-test-driver` | NixOS testing framework |
| **qt6.qtbase** | `pkgs.qt6.qtbase` | Qt6 base libraries |
| **qt6.qtdeclarative** | `pkgs.qt6.qtdeclarative` | Qt6 QML support |
| **qt6.qtsvg** | `pkgs.qt6.qtsvg` | Qt6 SVG support |

## PAM Configuration

The following PAM service must be configured:

| Service | Configuration File | Module |
|---------|-------------------|--------|
| **greetd** | `/etc/pam.d/greetd` | `modules/greetd/module.nix` (via `security.pam.services.greetd`) |

## Systemd Services

These systemd units are created/used:

| Service/Target | Scope | Module | Purpose |
|----------------|-------|--------|---------|
| **greetd.service** | System | `modules/greetd/module.nix` | Display manager |
| **quickshell.service** | User | `modules/quickshell/module.nix` | Quickshell shell (auto-started) |
| **mangowc-session.target** | User | `nix/hm-module.nix` | MangoWC session target |
| **graphical-session.target** | User | Multiple | Standard graphical session |

**Note:** Quickshell is automatically started by MangoWC via the `execOnce` option (default: `["quickshell"]`). The systemd service provides additional restart-on-failure support.

## Environment Variables

These environment variables are set by the configuration:

### Set by Home Manager Module

```nix
XDG_CURRENT_DESKTOP = "wlroots"
QT_QPA_PLATFORM = "wayland"
XDG_SESSION_TYPE = "wayland"
GDK_BACKEND = "wayland"
SDL_VIDEODRIVER = "wayland"
CLUTTER_BACKEND = "wayland"
MOZ_ENABLE_WAYLAND = "1"
_JAVA_AWT_WM_NONREPARENTING = "1"
GTK_USE_PORTAL = "1"
NIXOS_XDG_OPEN_USE_PORTAL = "1"
ANKI_WAYLAND = "1"
QT_AUTO_SCREEN_SCALE_FACTOR = "1"
QT_WAYLAND_DISABLE_WINDOWDECORATION = "1"
QT_QPA_PLATFORMTHEME = "qt5ct"
XCURSOR_THEME = "..."
XCURSOR_SIZE = "..."
```

### Imported to Systemd/DBus

```bash
DISPLAY
WAYLAND_DISPLAY
XDG_CURRENT_DESKTOP
XDG_SESSION_TYPE
NIXOS_OZONE_WL
XCURSOR_THEME
XCURSOR_SIZE
```

## File Structure Overview

```
PanchaKosha/
├── flake.nix                          # Main flake entry point
├── nix/
│   ├── nixos-module.nix              # NixOS module (system-level)
│   └── hm-module.nix                 # Home Manager module (user-level)
├── modules/
│   ├── mangowc/                      # MangoWC compositor module
│   │   ├── module.nix
│   │   ├── lib/formatters.nix
│   │   └── options/*.nix             # Various option definitions
│   ├── greetd/                       # GreetD display manager module
│   │   ├── module.nix
│   │   ├── options/*.nix
│   │   └── AGENTS.md, QUICKSTART.md
│   └── quickshell/                   # Quickshell configuration module
│       ├── module.nix
│       └── config/                   # Quickshell QML configuration
│           ├── shell.qml
│           ├── settings/
│           ├── components/
│           ├── modules/
│           │   ├── lockscreen/
│           │   ├── bar/
│           │   ├── overview/
│           │   └── greeter/         # GreetD greeter
│           ├── services/
│           └── assets/
└── .documentation/
    └── ENABLE_GREETD.md             # Enablement guide
```

## Usage Examples

### Minimal NixOS Configuration

```nix
{ pkgs, ... }: {
  imports = [
    # Add your flake outputs
  ];
  
  programs.mangowc.enable = true;
  services.greetd.mangowc = {
    enable = true;
    quickshellGreeter.enable = true;
  };
}
```

### Home Manager Configuration

```nix
{ pkgs, ... }: {
  wayland.windowManager.mangowc.enable = true;
  
  home.packages = with pkgs; [
    # Additional packages
  ];
}
```

### Using the Flake

```bash
# Build NixOS configuration
nix build .#nixosConfigurations.your-hostname.config.system.build.toplevel

# Build Home Manager configuration
nix build .#homeConfigurations.user@hostname.activationPackage

# Enter development shell
nix develop

# Format Nix files
nix fmt

# Run tests
nix run .#checks.x86_64-linux.default
```

## Notes on Package Availability

- **quickshell**: Available as a flake input from `github:cozuya/quickshell`
- **greetd.tuigreet**: Available in nixpkgs as `pkgs.greetd.tuigreet`
- **mangowc**: Custom package built from local sources
- **xdg-desktop-portal-wlr**: Available in nixpkgs
- **wl-clipboard, grim, slurp, wlr-randr**: All available in nixpkgs

All standard packages should be available in nixpkgs unstable channel. If any package is missing, it can be added via overlays or custom derivations.
