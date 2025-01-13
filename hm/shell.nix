{ pkgs, ... }:
{
programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestion.enable = true;
  syntaxHighlighting.enable = true;


  shellAliases = {
    ll = "ls -l";
    update = "sudo nixos-rebuild switch --flake ~/flake/#myNixos";
    ssh = "kitty +kitten ssh";
    };

    oh-my-zsh = {
    enable = true;
    plugins = [ "git" ];
    theme = "alanpeabody";
    };
};

}
