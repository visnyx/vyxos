{ inputs, ... }:

{
  imports = [
    # host hardware
    ./hardware-configuration.nix
    ./nvidia.nix
    ./filesystem.nix

    # system modules
    ../../modules/core
    ../../modules/desktop
    ../../modules/hardware
    ../../modules/services
    ../../modules/gaming.nix
    ../../modules/packages.nix
  ];

  # pin nixpkgs for imperative commands
  nix.registry.nixpkgs.flake = inputs.nixpkgs;
  nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];

  # unfree w cuda
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.cudaSupport = true;

  # homemanager
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
    extraSpecialArgs = { inherit inputs; };
    users."nyxee" = import ../../home;
  };

  # dont touch ts (read docs)
  system.stateVersion = "26.05";
}
