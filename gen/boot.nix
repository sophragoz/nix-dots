{ pkgs, config, modulesPath, ... }: {
  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        efiSupport = true;
        device = "nodev";
      };
    };
    plymouth = {
      enable = true;
      theme = "bgrt";
    };
    kernelPackages = pkgs.linuxPackages_cachyos;
    initrd = {
      availableKernelModules = [ 
        "xhci_pci" 
        "ahci" 
        "usbhid" 
        "usb_storage" 
        "sd_mod" 
        "sdhci_pci" 
      ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-intel" ];
    extraModulePackages = [ ];
    blacklistedKernelModules = [ "nouveau" ];
  };
}
