{
  lib,
  ...
}:
{
  programs.yazi = {
    enable = lib.mkDefault true;
    enableZshIntegration = true;
  };
}

