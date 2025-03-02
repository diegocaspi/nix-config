{
  lib,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    zsh-syntax-highlighting
    zsh-autosuggestions
  ];

  programs.zsh = {
    enable = lib.mkDefault true;
    enableCompletion = true;
    syntaxHighlighting = {
      enable = true;
    };
    autosuggestion.enable = true;
    shellAliases = {
      ll = "eza -l";
      vi = "nvim";
      k = "kubectl";
    };
  };
}
