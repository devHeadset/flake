{ config, pkgs, ... }:

{
home.username = "headset";
home.homeDirectory = "/home/headset";
home.stateVersion = "24.05"; # Please read the comment before changing.


catppuccin.enable = true;
nixpkgs.config.allowUnfree = true;


catppuccin.cursors = {
  enable = true;                
};



catppuccin.btop.enable = true;



  programs.nixcord = {
    enable = true;  
    config = {
      useQuickCss = true;   
      themeLinks = [        
        "https://raw.githubusercontent.com/catppuccin/discord/refs/heads/main/themes/mocha.theme.css"
      ];
      frameless = true; 
      plugins = {
        messageLogger.enable = true;
        hideAttachments.enable = true;    
        silentTyping.enable = true;
        fakeNitro.enable = true;
      };
    };
  };


home.packages = [
    pkgs.tmux
    pkgs.firefox
    pkgs.eza
    pkgs.starship 
    pkgs.wl-clipboard
    pkgs.kitty
    pkgs.nerd-fonts.jetbrains-mono
    pkgs.btop
    pkgs.nwg-displays
    pkgs.swww
    pkgs.prismlauncher
    pkgs.hyfetch
    pkgs.hyprshot
    pkgs.xfce.thunar
    pkgs.flatpak
    pkgs.gimp
    pkgs.neofetch
];

programs.obs-studio = {
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
    font = "JetBrainsMono Nerd Font 12";

    extraConfig = {
      modi = "drun,window";
      show-icons = true;
      sort = true;
    };
  };



  programs.cava = {
    enable = true;
  };


  imports = [
  ./stylix.nix
  ./kitty.nix
  ./gtk.nix
   ./shell.nix
   ./nvf.nix
];
  
}
