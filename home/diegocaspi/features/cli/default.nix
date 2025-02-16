{ pkgs, ... }:
{
  imports = [
    ./aerospace.nix
    ./bun.nix
    ./docker.nix
    ./kube.nix
    ./neovim.nix
    ./gh.nix
  ];

  home.packages = with pkgs; [
    eza
  ];
}
