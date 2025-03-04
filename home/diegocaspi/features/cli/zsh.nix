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

  programs = {
    zsh = {
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
        y = "yazi";
        dx = "devbox";
      };
    };

    yazi = {
      enable = lib.mkDefault true;
      enableZshIntegration = true;
    };

    atuin = {
      enable = true;
      enableZshIntegration = true;
      settings = {
        auto_sync = true;
        sync_frequency = "5m";
        style = "compact";
      };
    };

    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}
