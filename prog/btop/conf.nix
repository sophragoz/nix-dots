{ pkgs, ... }: {
  programs.btop = {
    enable = true;
    package = pkgs.btop;
    settings = {
      color_theme = "./rose-pine.theme";
    };
  };
}
