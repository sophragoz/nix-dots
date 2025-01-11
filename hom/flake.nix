{

	description = "furry femboy flake :3";
	
	inputs = {
	
	home-manager = {
	 url = "github:nix-community/home-manager";
	 inputs.nixpkgs.follows = "nixpkgs";
	};

	nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
	zen-browser.url = "github:0xc000022070/zen-browser-flake";
	ayugram-desktop.url = "github:/ayugram-port/ayugram-desktop/release?submodules=1";
	chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
	};

  outputs = { self, home-manager, nixpkgs, chaotic, ... }@inputs: 
    let 
      sys = "x86_64-linux";
      user = "sophragoz";
      host = "nixos-fox";
    in {
		nixosConfigurations.${host} = nixpkgs.lib.nixosSystem {
			system = "${sys}";
			modules = [ /home/${user}/nix/gen/default.nix chaotic.nixosModules.default ];
			specialArgs = { inherit inputs; };
			};
		homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
		 pkgs = nixpkgs.legacyPackages."${sys}";
		 modules = [ /home/${user}/.config/home-manager/home.nix ];
		 extraSpecialArgs = { inherit inputs; };
		};
 };

}
