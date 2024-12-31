{ pkgs, inputs, ... }:
{
  programs.spicetify = {
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      adblock
    ];
    theme = spicePkgs.themes.catppuccin;
    colorScheme = "mocha";
  };
}

