{ config, pkgs, ... }: {
	 security.sudo = {
	  enable = true;
	  extraRules = [{
	   commands = [
	    {
	     command = "${pkgs.systemd}/bin/reboot";
	     options = [ "NOPASSWD" ];
	    }
	    {
	     command = "${pkgs.systemd}/bin/poweroff";
	     options = [ "NOPASSWD" ];
	    }
	  ];
	    groups = [ "wheel" ];
	  }];
	};
}
