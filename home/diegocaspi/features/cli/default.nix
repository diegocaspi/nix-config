{ pkgs, ... }:
{
  imports = [
    ./aerospace.nix
    ./bun.nix
    ./docker.nix
    ./kube.nix
    ./neovim.nix
    ./gh.nix
    ./starship.nix
    ./zsh.nix
    ./yazi.nix
  ];

  home.packages = with pkgs; [
    eza
    azure-cli
  ];
}
