{ lib, ... }:
{
  programs.gh = {
    enable = lib.mkDefault true;
    gitCredentialHelper.enable = false;

    settings = {
      git_protocol = "ssh";
    };
  };

  programs.lazygit = {
    enable = lib.mkDefault true;
  };
}
