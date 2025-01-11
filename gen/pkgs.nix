{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    pavucontrol
    nwg-look

    inxi
    ventoy
    htop
    wget
    fastfetch
    bc
    git

    nh
    home-manager

    killall
    sudo
    zsh
    libnotify

    mesa
    mesa-demos
    exfat
    exfatprogs
    pciutils
    intel-gpu-tools
  ];
  fonts.packages = with pkgs; [
    noto-fonts-emoji
    noto-fonts
    jetbrains-mono
    nerd-fonts.jetbrains-mono
    cantarell-fonts
  ];
}
