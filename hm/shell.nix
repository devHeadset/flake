{ pkgs, ... }:
{
programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestion.enable = true;
  syntaxHighlighting.enable = true;


  shellAliases = {
    ll = "lsd -l";
    update = "sudo nixos-rebuild switch --flake ~/flake/#myNixos";
    ssh = "kitty +kitten ssh";
    ls = "lsd";
    nix-shell = "nix-shell --command zsh ";
    mv = "mv -v ";
    rm = "rm -v ";
    };

    oh-my-zsh = {
    enable = true;
    plugins = [ "git" ]; 
    theme = "alanpeabody";
    };
};

}
