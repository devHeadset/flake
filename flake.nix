{
  description = "headset's sys flake :3";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";
 };

  # outputs section to define configurations and outputs for the flake
  outputs = { self, nixpkgs, hyprpanel, ... }: let
    # define the target system architecture
    system = "x86_64-linux";

    # import nixpkgs with configuration allowing unfree packages
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true; # enable unfree package support
      };
    };
  in {
    # nixos configuration
    nixosConfigurations = {
      myNixos = nixpkgs.lib.nixosSystem {
        inherit system;

        # define nixos modules to be included
        modules = [
          ./nixos/configuration.nix
          { nixpkgs.overlays = [ hyprpanel.overlay ]; }
        ];
      };
    };
  };
}

