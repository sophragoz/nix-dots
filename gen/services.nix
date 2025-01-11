{ config, pkgs, ... }: {
  services = {
    openssh = {
      enable = true;
      ports = [ 22 ];
      settings = {
        PasswordAuthentication = true;
        AllowUsers = [ "sophragoz" ];
        UseDns = true;
        PermitRootLogin = "yes";
      };
    };
  };
  systemd = {
    services = {
      gpu = {
        description = "Переключение частот";
        wantedBy = [ "multi-user.target" ];
        serviceConfig = {
          Type = "simple";
          ExecStart = ''
            ${pkgs.intel-gpu-tools}/bin/intel_gpu_frequency -s 400
          '';
        };
      };
    };
  };
}
