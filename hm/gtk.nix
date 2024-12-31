{ pkgs, ... }:

{
  gtk = {
    enable = true;
    font = {
      package = pkgs.nerd-fonts.jetbrains-mono; 
      name = "JetBrainsMono Nerd Font Regular";
    };
    
  };

}
