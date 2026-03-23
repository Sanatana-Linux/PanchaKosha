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
