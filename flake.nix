{
  description = "PanchaKosha - Robust, Nvidia-Ready MangoWC & Quickshell Desktop";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      # 1. NixOS System Modules
      nixosModules.default = { ... }: {
        imports = [
          ./modules/core/default.nix
          ./modules/core/nixos.nix
        ];
      };

      # 2. Home-Manager Modules
      homeManagerModules.default = { ... }: {
        imports = [
          ./modules/mangowc/hm.nix
          ./modules/quickshell/hm.nix
        ];
      };

      # 3. Exported Packages
      packages = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          # Re-exporting assets for use in other derivations
          quickshell-config = pkgs.stdenv.mkDerivation {
            name = "panchakosha-config";
            src = ./modules/quickshell/config;
            installPhase = "mkdir -p $out && cp -r . $out/";
          };
        }
      );

      # 4. DevShell for testing configuration changes
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in {
          default = pkgs.mkShell {
            buildInputs = [ pkgs.nixpkgs-fmt pkgs.quickshell pkgs.mangowc ];
          };
        }
      );
    };
}
