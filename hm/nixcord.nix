{ config, lib, pkgs, ... }:

{

  programs.nixcord = {
    enable = true;
    config = {
      useQuickCss = true;
      themeLinks = [
       "https://raw.githubusercontent.com/refact0r/system24/refs/heads/main/theme/flavors/catppuccin-mocha.theme.css"
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

}
