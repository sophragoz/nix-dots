{ pkgs, config, ... }: {
	programs.neovim = {
	  enable = true;
	  package = pkgs.neovim-unwrapped;
	  plugins = with pkgs.vimPlugins; [
	    vim-devicons
      vim-nix
      rose-pine
	  ];
	  extraConfig = '' 
	  set encoding=utf8
	  set ignorecase
	  set smartcase
	  set hlsearch
	  set incsearch
	  set tabstop=2
	  set softtabstop=2
	  set shiftwidth=2
	  set expandtab
	  set smarttab
	  set number
	  set relativenumber
	  syntax on
	  set mouse=a
	  colorscheme rose-pine-moon
    '';
	};
}
