{
  description = "Home Manager configuration of headset";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    stylix.url = "github:danth/stylix";
    

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };


    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixcord = {
      url = "github:kaylorben/nixcord";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
};

  outputs = { nixpkgs, home-manager, catppuccin, stylix, spicetify-nix, nixcord, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations."headset" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
  modules = [
    ./home.nix
    stylix.homeManagerModules.stylix
    catppuccin.homeManagerModules.catppuccin
    spicetify-nix.homeManagerModules.default
    nixcord.homeManagerModules.nixcord
 ];


        # Optionally use extraSpecialArgs to pass through arguments to home.nix.
      };
    };
}

