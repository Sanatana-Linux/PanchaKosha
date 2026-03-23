{
  description = "Pancha Kosha - MangoWC NixOS configuration with Quickshell";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Quickshell - Qt/QML-based shell framework (mirror)
    quickshell = {
      # use the quickshell mirror via the GitHub flake shorthand (preferred)
      url = "github:quickshell-mirror/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Home Manager for user configurations
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    quickshell,
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

      # Build MangoWC package (placeholder - replace with actual build)
      mangowc = pkgs.stdenv.mkDerivation {
        pname = "mangowc";
        version = "0.1.0";
        src = ./modules/mangowc;

        # Placeholder derivation - customize based on actual MangoWC build requirements
        buildInputs = with pkgs; [
          wayland
          wayland-protocols

          pixman
          libinput
          xorg.libxcb
        ];

        installPhase = ''
          mkdir -p $out/bin
          # Placeholder - replace with actual build commands
          echo "#!/bin/sh" > $out/bin/mangowc
          echo "exec wayland compositor" >> $out/bin/mangowc
          chmod +x $out/bin/mangowc
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

      # Default package
      default = mangowc;
    });

    # NixOS configurations
    nixosConfigurations = let
      # Helper to create a NixOS configuration
      mkNixosConfiguration = hostname: extraModules:
        nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {inherit self;};
          modules = [
            ./nix/nixos-module.nix
            ./modules/greetd/module.nix
            ./modules/quickshell/module.nix
            extraModules
          ];
        };
    in {
      # Example configuration - customize for your system
      example = mkNixosConfiguration "example" ({
        config,
        pkgs,
        ...
      }: {
        # Basic system configuration
        system.stateVersion = "24.05";

        # Enable MangoWC
        programs.mangowc.enable = true;

        # Enable greetd with Quickshell greeter
        services.greetd.mangowc = {
          enable = true;
          quickshellGreeter.enable = true;
          appearance.theme = "CatppuccinMocha";
        };

        # Enable Quickshell
        programs.quickshell.mangowc.enable = true;
      });
    };

    # Home Manager configurations
    homeConfigurations = let
      # Helper to create a Home Manager configuration
      mkHomeConfiguration = username: hostname: extraModules:
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = [
            ./nix/hm-module.nix
            extraModules
          ];
        };
    in {
      # Example configuration - customize for your setup
      "user@hostname" = mkHomeConfiguration "user" "hostname" ({
        config,
        pkgs,
        ...
      }: {
        home.username = "user";
        home.homeDirectory = "/home/user";
        home.stateVersion = "24.05";

        # Enable MangoWC window manager
        wayland.windowManager.mangowc.enable = true;
      });
    };

    # Overlays for custom packages
    overlays.default = final: prev: {
      mangowc = self.packages.${prev.system}.default;
      quickshellGreeter = self.packages.${prev.system}.quickshellGreeter;
      quickshell = quickshell.packages.${prev.system}.default;
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
