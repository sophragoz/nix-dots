{ pkgs, config, ... }: {
  wayland.windowManager.sway = {
	  enable = true;
	  package = pkgs.swayfx;
	  checkConfig = false;
	  xwayland = true;
	  wrapperFeatures.gtk = true;
	  extraConfig = '' include /etc/sway/config.d/* '';
	  config = {
	    terminal = "kitty";
	    menu = "wofi --show drun";
	  output = {
	    HDMI-A-2 = {
	      bg = "~/nix/prog/swayfx/wallpaper.png fill";
	      resolution = "1360x768";
	      position = "0,0";
	      };
	   };
	   workspaceLayout = "default";
	   defaultWorkspace = "workspace number 1";
	   focus.followMouse = true;
	   bars = [ { command = "${pkgs.waybar}/bin/waybar"; } ];
	   gaps = {
	     inner = 7;
	     outer = 7;
	   };
	   floating = {
	     border = 0;
	     titlebar = false;
	   };
	   window = {
	    border = 0;
	    titlebar = false;
	   };
	   input = {
	     "*" = {
	       xkb_layout = "us,ru";
	       xkb_options = "grp:alt_shift_toggle";
	   	};
	   };
	   modifier = "Mod4";
	   floating.modifier = "${config.wayland.windowManager.sway.config.modifier}";
	   bindkeysToCode = true;
	   keybindings = let
	    mod = config.wayland.windowManager.sway.config.modifier;
	   in {
	    "${mod}+1" = "workspace number 1";
	    "${mod}+2" = "workspace number 2";
	    "${mod}+3" = "workspace number 3";
	    "${mod}+4" = "workspace number 4";
	    "${mod}+5" = "workspace number 5";
	    "${mod}+6" = "workspace number 6";

	    "${mod}+Shift+1" = "move container to workspace number 1";
      "${mod}+Shift+2" = "move container to workspace number 2";
      "${mod}+Shift+3" = "move container to workspace number 3";
      "${mod}+Shift+4" = "move container to workspace number 4";
      "${mod}+Shift+5" = "move container to workspace number 5";
      "${mod}+Shift+6" = "move container to workspace number 6";

	    "${mod}+c" = "kill";
	    "${mod}+k" = "exec ${config.wayland.windowManager.sway.config.terminal}";
	    "${mod}+alt+c" = "exec grim";

	    "${mod}+f" = "fullscreen";
      "${mod}+s" = "floating toggle";
	    "${mod}+Shift+r" = "reload";
      "${mod}+Shift+q" = "exec 'swaymsg exit'";
	    "alt+space" = "exec ${config.wayland.windowManager.sway.config.menu}";
	      };
	   };
	   extraConfigEarly = ''
	   blur disable
	   corner_radius 13
	   shadows enable
	   shadow_blur_radius 10
	   shadow_color #2a283e
	   '';
	};
}
