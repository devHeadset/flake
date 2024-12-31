{
  description = "Headset's System flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";
  };

  outputs = { self, nixpkgs, hyprpanel, ... }: let  # Include hyprpanel as an input
    system = "x86_64-linux";  # Define the system variable here
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
    };
  in {
    nixosConfigurations = {
      myNixos = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./nixos/configuration.nix
          { nixpkgs.overlays = [ hyprpanel.overlay ]; }  # Use hyprpanel directly here
        ];
      };
    };
  };
}

