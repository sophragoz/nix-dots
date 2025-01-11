{ pkgs, config, ... }: {
  programs.fastfetch = {
    enable = true;
    package = pkgs.fastfetch;
    settings = {
      logo = {
        source = "nixos_small";
      };
      display = {
        separator = "  ";
      };
      modules = [
        {
          type = "os";
          keyColor = "blue";
          key = "сис";
        }

        {
          type = "kernel";
          keyColor = "cyan";
          key = "кер";
        }

        {
          type = "packages";
          keyColor = "blue";
          key = "пак";
        }

        {
          type = "uptime";
          keyColor = "cyan";
          key = "апт";
        }

        {
          type = "wm";
          keyColor = "blue";
          key = "окн";
        }

        {
          type = "custom";
          format = " ";
        }
  
        {
          type = "colors";
        }
      ];
    };
  };
}
