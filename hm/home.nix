{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "headset";
  home.homeDirectory = "/home/headset";
  home.stateVersion = "24.05"; # Please read the comment before changing.

catppuccin.enable = true;
nixpkgs.config.allowUnfree = true;


catppuccin.cursors = {
  enable = true;                
};


home.packages = [
    pkgs.tmux
    pkgs.neovim 
    pkgs.fish
    pkgs.eza
    pkgs.starship 
    pkgs.wl-clipboard
    pkgs.kitty
    pkgs.nerd-fonts.jetbrains-mono
    pkgs.vesktop
    pkgs.btop
    pkgs.nwg-displays
    pkgs.swww
    pkgs.spotify
    pkgs.prismlauncher
    pkgs.hyfetch
    pkgs.hyprshot
];


programs.firefox = {
	enable = true;
};

  home.sessionVariables = {
    EDITOR = "nvim";
  };


# Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

 
  programs.git = {
    enable = true;
    userName = "devHeadset";
    userEmail = "headset@devheadset.org";
  };


  programs.rofi = {
  enable = true;
  
};

  imports = [
  ./stylix.nix
  ./kitty.nix
  ./gtk.nix
  ./fish.nix
  ./ghostty.nix
];





}
