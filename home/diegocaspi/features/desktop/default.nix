{ pkgs, ... }:
{
  imports = [
    ./ghostty.nix
    ./raycast.nix
    ./zed.nix
  ];
}

