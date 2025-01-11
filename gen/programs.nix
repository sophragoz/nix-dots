{ config, pkgs, ... }: {
  programs = {
    sway = {
      enable = true;
      extraPackages = with pkgs; [
        wl-clipboard
        seatd
        grim
      ];
    };
    zsh = {
      enable = true;
    };
    steam = {
      enable = true;
    };
  };
}
