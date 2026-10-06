{
  description = "cool flake ig";
  # this is kinda readable so ima  keep it like this
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nix-cachyos-kernel.url = "github:xddxdd/nix-cachyos-kernel/release";

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
      nix-cachyos-kernel,
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
            { nixpkgs.overlays = [ nix-cachyos-kernel.overlays.pinned ]; }
          ];
        };
      };
    };
}
