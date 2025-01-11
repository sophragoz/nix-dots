{ inputs, pkgs, config, ... }: {
	programs.zsh = {
	  enable = true;
	  package = pkgs.zsh;
	  shellAliases = let
	     flake = "env FLAKE=/home/sophragoz/nix/hom";
       args = "-- --impure -I nixos-config=/home/sophragoz/nix/gen/default.nix";
       sway = "--unsupported-gpu";
       xterm = "env TERM=xterm-256color";
	  in {
	    "nos" = "${flake} nh os switch ${args}";
	    "nosu" = "${flake} nh os switch --update ${args}";
	    "nhs" = "${flake} nh home switch ${args}";
	    "nhsu" = "${flake} nh home switch --update ${args}";
      "cle" = "${flake} nh clean all";
      "swayfx" = "sway ${sway}";
      "con" = "${xterm} ssh";
      "v" = "nvim";
	  };
	  syntaxHighlighting = {
	    enable = true;
	    highlighters = [ "main" "brackets" "pattern" "regexp" "root" "line" ];
	    styles = let
	        love = "#eb6f92";
		gold = "#f6c177";
		rose = "#ea9a97";
		pine = "#3e8fb0";
		foam = "#9ccfd8";
		iris = "#c4a7e7";
		text = "#e0def4";
		sbtl = "#908caa";
	    in {
	      command                 = "fg=${iris},bold";
              unknown-token           = "fg=${text},bold";
              reserved-word           = "fg=${rose},bold";
              alias                   = "fg=${foam},bold";
              builtin                 = "fg=${rose},bold";
              function                = "fg=${text},bold";
              commandseparator        = "fg=${pine},bold";
              path                    = "fg=${foam},bold";
              path_pathseparator      = "fg=${pine},bold";
              globbing                = "fg=${rose},bold";
              command-substitution    = "fg=${iris},bold";
              single-hyphen-option    = "fg=${foam},bold";
              double-hyphen-option    = "fg=${foam},bold";
              back-quoted-argument    = "fg=${pine},bold";
              single-quoted-argument  = "fg=${pine},bold";
              double-quoted-argument  = "fg=${pine},bold";
              redirection             = "fg=${foam},bold";
              comment        	      =	"fg=${sbtl},bold";
              arg0           	      = "fg=${foam},bold";
              default          	      = "fg=${iris},bold";
	    };
	  };
	  history.size = 10000;
	  initExtra = ''
	     export PROMPT='%m %2~ %B%b '
	  '';
     };
}
