{ pkgs, ... }:

{
  gtk = {
    enable = true;

    font = {
      package = pkgs.nerd-fonts.jetbrains-mono;
      name = "JetBrainsMono Nerd Font Regular";
    };

    catppuccin = {
      enable = true;
      flavor = "mocha";
      accent = "pink";
      size = "standard";
      tweaks = [ "normal" ];
    };

    iconTheme = {
      name = "candy-icons";  # Replace with the name of your desired icon theme
      package = pkgs.candy-icons;
    };
  };
}

