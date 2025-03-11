{ lib, pkgs, ... }:
{
  programs.go = {
    enable = lib.mkDefault true;
    package = pkgs.go_1_24;
    goPrivate = [
      "danfoss.visualstudio.com"
    ];
  };
}
