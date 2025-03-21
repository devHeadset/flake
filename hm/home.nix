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



services.mpd = {
enable = true;
musicDirectory = "~/tunes";
  extraConfig = '' audio_output {
    type "pipewire"
    name "My PipeWire Output"
 }

  '';
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
    pkgs.lsd
    pkgs.emacs30
    pkgs.sxiv
    pkgs.vinegar
    pkgs.keepassxc
    pkgs.fastfetch
    pkgs.superTuxKart
    pkgs.xonotic
    pkgs.protontricks
];


programs.obs-studio = {
  enable = true;
};

  home.sessionVariables = {
    EDITOR = "emacsclient -c ";
    BROWSER = "zen";
     XDG_DATA_DIRS="/home/headset/.nix-profile/share:/nix/profile/share:/home/headset/.local/state/nix/profile/share:/etc/profiles/per-user/headset/share:/nix/var/nix/profiles/default/share:/run/current-system/sw/share:/home/headset/.local/share/flatpak/exports/share/:/var/lib/flatpak/exports/share/:/usr/local/share/:/usr/share/:";
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
    ./nixcord.nix
  
];
  
}
