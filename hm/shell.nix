{ pkgs, ... }:
{
programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestion.enable = true;
  syntaxHighlighting.enable = true;


  shellAliases = {
    ll = "lsd -l";
    update = "sudo nixos-rebuild switch --flake ~/docs/flake/#myNixos";
    ls = "lsd";
    nix-shell = "nix-shell --command zsh ";
    mv = "mv -v ";
    rm = "rm -v ";
    hms = "home-manager switch ";
    };

    oh-my-zsh = {
    enable = true;
    plugins = [ "git" ]; 
    theme = "alanpeabody";
    };
};

programs.zoxide = {
  enable = true;
  enableZshIntegration = true;
};

}
