{ pkgs, ... }:
{
  programs.ghostty = {
    settings = {
      enable = true;
      font-size = 11;
      font-family = "JetBrainsMono Nerd Font";

      # The default is a bit intense for my liking
      # but it looks good with some themes
      unfocused-split-opacity = 0.96;


      # Disables ligatures
      font-feature = ["-liga" "-dlig" "-calt"];
    };
  };
}
