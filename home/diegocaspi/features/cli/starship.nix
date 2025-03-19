{
  lib,
  ...
}:
{
  programs.starship = {
    enable = lib.mkDefault true;
    settings = {
      add_newline = false;
      format = "$directory";

      aws = {
        disabled = true;
        symbol = "  ";
      };

      azure = {
        disabled = true;
        format = "on [$symbol($subscription)]($style) ";
        symbol = "󰠅 ";
        style = "blue bold";
        subscription_aliases = {
          dcs-incubator-prod-001 = "az-incubator";
          Cooling-EcsAms = "az-alsense";
        };
      };

      kubernetes = {
        format = "on [⎈ ($context) ($namespace)](dimmed green) ";
        disabled = false;
      };
    };
  };
}

