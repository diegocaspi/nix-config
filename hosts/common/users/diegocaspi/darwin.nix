{
  lib,
  pkgs,
  config,
  ...
}:
{
  users.users.diegocaspi = {
    name = "diegocaspi";
    home = lib.mkDefault "/Users/diegocaspi";
    shell = pkgs.zsh;

    # openssh.authorizedKeys.keys = lib.splitString "\n" (
    #   builtins.readFile ../../../../home/diegocaspi/ssh.pub
    # );
  };

  home-manager.users.diegocaspi = import ../../../../home/diegocaspi/${config.networking.hostName}.nix;
}
