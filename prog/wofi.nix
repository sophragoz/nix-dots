{ pkgs, config, ... }: {
	programs.wofi = {
	  enable = true;
	  package = pkgs.wofi;
	  settings = {
	    width = 270;
	    height = 300;
	    no_actions = true;
	    hide_scroll = true;
	    prompt = "Search >";
	    term = "kitty";
	  };
	  style = ''
	    @define-color bg #232136;
	    @define-color fg #e0def4;
	    @define-color ir #c4a7e7;
	    
	    * {
	      font-family: JetBrainsMonoNerdFont;
	      font-size: 13px;
	      font-weight: bold;
	    }
	    
	    window {
	      background-color: @bg;
	      border-radius: 12px;
	      border: 1px solid @bg;
	      color: @fg;
	    }

	    #input {
	      background-color: @bg;
	      color: @fg;
              border-radius: 12;
	      border: 0px solid @bg;
	      padding: 3px;
	      margin: 5 3 5 3;
	      padding-left: 10px;
	      padding-right: 10px;
            }

            #outer-box {
	      margin: 5px;
	      padding: 0px;
	      background-color: @bg;
            }

            #text {
	      padding: 3px;
	      color: @fg;
	    }

            #entry:selected {
	      border-radius: 5px;
	      background-color: @ir;
	      font-color: @bg;
	    }

            #text:selected {
	      color: @bg;
	    }

            #input:focus {
	      box-shadow: 0px 0px 0px 1px @bg inset;
	    }
	  '';
	};
}
