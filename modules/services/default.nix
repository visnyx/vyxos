{ ... }:

{
  # services imports
  imports = [
    ./containers.nix
    ./tailscale.nix
    ./misc.nix
  ];
}
