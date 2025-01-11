{ config, lib, ... }: {
  networking = {
    hostName = "nixos-fox";
    networkmanager = {
      enable = true;
    };
    useDHCP = lib.mkDefault true;
  };
  nixpkgs = {
    config.allowUnfree = true;
    hostPlatform = lib.mkDefault "x86_64-linux";
  };
  time.timeZone = "Asia/Yekaterinburg";
  i18n.defaultLocale = "ru_RU.UTF-8";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "unstable";

  services.getty.autologinUser = "sophragoz";
  environment.loginShellInit = ''
    [[ "$(tty)" == /dev/tty1 ]] && sway --unsupported-gpu
  '';
}
