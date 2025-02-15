{
  lib,
  ...
}:
{
  programs.aerospace = {
    enable = lib.mkDefault true;
  };
}
