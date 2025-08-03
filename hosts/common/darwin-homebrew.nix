{
  lib,
  inputs,
  ...
}:
{
  imports = [
    inputs.nix-homebrew.darwinModules.nix-homebrew
  ];

  nix-homebrew = {
    user = "diegocaspi";

    taps = {
      "homebrew/homebrew-bundle" = inputs.homebrew-bundle;
    };

    enable = true;
    autoMigrate = true;
    mutableTaps = false;
  };

  homebrew = {
    enable = lib.mkDefault true;

    casks = [
      "jordanbaird-ice"
      "headlamp"
      "font-fira-code"
    ];

      onActivation = {
      cleanup = "zap";
      autoUpdate = true;
    };

    global = {
      autoUpdate = false;
    };
  };
}
