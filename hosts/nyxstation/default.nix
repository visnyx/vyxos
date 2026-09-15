{ inputs, ... }:

{
  imports = [
    # host hardware
    ./hardware.nix
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

  # allow unfree and cuda globally
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.cudaSupport = true;

  # home-manager
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
    extraSpecialArgs = { inherit inputs; };
    users."nyxee" = import ../../home;
  };

  system.stateVersion = "26.05";
}
