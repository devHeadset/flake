{ pkgs, ... }:
{

programs.fish = {
    enable = true;
  interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
};


programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

}
