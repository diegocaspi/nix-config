{
  pkgs,
  ...
}:
{
  programs.vscode = {
    enable = false;
    package = pkgs.code-cursor;
  };
}
