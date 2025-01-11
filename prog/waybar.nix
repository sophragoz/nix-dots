{ pkgs, config, ... }: {
	programs.waybar = {
	    enable = true;
	    package = pkgs.waybar;
	    settings = {
	      mainBar = {
		layer = "top";
		position = "left";
		height = 768;
		spacing = 10;
		width = 40;
		
		modules-left = [ "sway/workspaces" ];
		modules-center = [ "clock" ];
		modules-right = [ "sway/language" "memory" "pulseaudio" ];

		"sway/workspaces" = {
		    format = "{icon}";
		    on-click = "activate";
		    all-outputs = true;
		    format-icons = {
		    "1" = "1"; 
		    "2" = "2"; 
		    "3" = "3"; 
		    "4" = "4"; 
		    "5" = "5"; 
		    "6" = "6";
		    };
		    persistent-workspaces = {
		    "1" = [];
		    "2" = [];
		    "3" = [];
		    "4" = [];
		    "5" = [];
		    "6" = [];
		    };
		    tooltip = false;
		};
		"clock" = {
		    interval = 1;
		    format = "{:%H\n%M}";
		    tooltip = false;
		};
		"sway/language" = {
		    format = "{}";
		    format-en = "us";
		    format-ru = "ru";
		};
		"memory" = {
		    format = "{used}";
		    interval =  30;
		    max-length = 10;
		    tooltip = false;
		};
		"pulseaudio" = {
		    scroll-step = 2;
		    format = "{volume}";
		    on-click = "pavucontrol";
		    tooltip = false;
		};
	      };
	    };
	    style = ''
	     @define-color bg #191724;
	     @define-color ov #26233a;
	     @define-color fg #e0def4;
	     @define-color ir #c4a7e7;
	     @define-color rs #ebbcba;

	     * {
	      font-family: JetBrainsMonoNerdFont;
	      font-size: 12px;
	      font-weight: bold;
	     }
	      
	     window#waybar {
	      background: @bg;
	     }

	     #workspaces {
	      background-color: @bg;
              border-radius: 5;
	      margin: 10px 0px 0px 0px;
	     }

	     #workspaces button.focused {
	      background-color: @ir;
	      color: @bg;
	      padding: 3px 0px;
	      margin: 2px 7px;
	      border-radius: 20px;
	     }

	     #workspaces button {
	      background-color: @ov;
	      color: @fg;
	      padding: 3px 0px;
	      margin: 2px 7px;
	      border-radius: 20px;
	     }

	     #clock {
	      color: @rs;
	      background-color: @ov;
	      border-radius: 12;
	      padding: 5px;
	      margin: 0px 7px;
	     }

	     #pulseaudio {
	      margin: 0px 0px 10px;
	     }
	     '';
	  };	

}
