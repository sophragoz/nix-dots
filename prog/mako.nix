{ pkgs, ... }: {
  services.mako = let
    bg = "#26233a";
    fg = "#e0def4";
  in {
    enable = true;
    package = pkgs.mako;
    icons = true;
    font = "JetBrainsMonoNerdFont 11";
    actions = true;
    width = 200;
    height = 300;
    backgroundColor = "${bg}";
    textColor = "${fg}";
    borderColor = "${bg}";
    borderRadius = 12;
    layer = "top";
    anchor = "top-center";
    padding = "5";
    maxIconSize = 32;
    defaultTimeout = 5000;
    ignoreTimeout = true;
  };
}
