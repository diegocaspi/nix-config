{ pkgs, ... }:
{
  imports = [
    ./brave.nix
    ./cursor.nix
    ./ghostty.nix
    ./raycast.nix
  ];
}

