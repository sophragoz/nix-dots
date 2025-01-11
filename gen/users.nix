{ config, pkgs, ... }: {
  users = {
    users = {
      sophragoz = {
        isNormalUser = true;
        extraGroups = [ "wheel" "networkmanager" "input" ];
        shell = pkgs.zsh;
      };
    };
  };
}
