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


  programs.nixcord = {
    enable = true;  # enable Nixcord. Also installs discord package
    config = {
      useQuickCss = true;   # use out quickCSS
      themeLinks = [        # or use an online theme
        "https://raw.githubusercontent.com/catppuccin/discord/refs/heads/main/themes/mocha.theme.css"
      ];
      frameless = true; # set some Vencord options
      plugins = {
        messageLogger.enable = true;
        hideAttachments.enable = true;    # Enable a Vencord plugin
        silentTyping.enable = true;
      };
    };
  };


home.packages = [
    pkgs.tmux
    pkgs.neovim 
    pkgs.fish
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
    pkgs.flatpak
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
  
};

  programs.cava = {
    enable = true;
  };

  imports = [
  ./stylix.nix
  ./kitty.nix
  ./gtk.nix
  ./fish.nix
];





}
