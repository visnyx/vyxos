{
  description = "Nyxee NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    nix-cachyos-kernel.url = "github:xddxdd/nix-cachyos-kernel/release";

    omniflake = {
      url = "github:fzakaria/omniflake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      chaotic,
      nix-cachyos-kernel,
      omniflake,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        nyxstation = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/nyxstation
            home-manager.nixosModules.home-manager
            chaotic.nixosModules.default
            { nixpkgs.overlays = [ nix-cachyos-kernel.overlays.pinned ]; }
          ];
        };
      };
    };
}
