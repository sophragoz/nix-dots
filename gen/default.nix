{ ... }: {
  imports = [ 
    ./hardw-conf.nix
    ./pkgs.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./graphics.nix
    ./console.nix
    ./users.nix
    ./base.nix
    ./boot.nix
 ];
}
