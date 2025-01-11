{ pkgs, config, ... }: {
	programs.kitty = {
	 enable = true;
	 package = pkgs.kitty;
	 #themeFile = "rose-pine-moon";
	 font = {
	   size = 10;
	   name = "JetBrains Mono Nerd Font";
	 };
	 settings = {
	   cursor_shape = "beam";
	   window_padding_width = 5;

	   foreground              = "#e0def4";
	   background              = "#232136";
     selection_foreground    = "#e0def4";
     selection_background    = "#44415a";
     cursor                  = "#9ccfd8";
     cursor_text_color       = "#e0def4";
	   url_color               = "#c4a7e7";
	   active_tab_foreground   = "#e0def4";
	   active_tab_background   = "#393552";
	   inactive_tab_foreground = "#6e6a86";
   	 inactive_tab_background = "#232136";

	   color0  = "#393552";
	   color8  = "#6e6a86";
	   color1  = "#eb6f92";
	   color9  = "#eb6f92";
	   color2  = "#3e8fb0";
	   color10 = "#3e8fb0";
	   color3  = "#f6c177";
	   color11 = "#f6c177";
	   color4  = "#9ccfd8";
	   color12 = "#9ccfd8";
	   color5  = "#c4a7e7";
	   color13 = "#c4a7e7";
	   color6  = "#ea9a97";
	   color14 = "#ea9a97";
	   color7  = "#e0def4";
 	   color15 = "#e0def4";
	 };
	};
}
