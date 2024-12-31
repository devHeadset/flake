{ pkgs, ... }: 
{

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
  
  stylix.image = ./my-cool-wallpaper.png;
  

  stylix.fonts = {
    monospace = {
      package = pkgs.nerd-fonts.jetbrains-mono;
      name = "JetBrainsMono Nerd Font ";
    };
    sansSerif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Sans";
    };
    serif = {
      package = pkgs.dejavu_fonts;
      name = "DejaVu Serif";
    };
  };


  stylix.targets.kitty.enable = true;
  stylix.targets.waybar.enable = true;
  stylix.targets.fish.enable = true;
  stylix.targets.hyprland.enable = true;
  stylix.targets.btop.enable = true;

}
