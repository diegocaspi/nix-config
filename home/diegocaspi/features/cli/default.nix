{ pkgs, ... }:
{
  imports = [
    ./aerospace.nix
    ./bun.nix
    ./docker.nix
    ./kube.nix
    ./neovim.nix
    ./git.nix
    ./starship.nix
    ./zsh.nix
    ./zellij.nix
  ];

  home.packages = with pkgs; [
    eza
    btop
    devbox
    nebula
  ];
}
