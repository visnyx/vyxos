{ ... }:

{
  # pkgs imports
  imports = [
    ./gaming.nix
    ./cli.nix
    ./desktop.nix
    ./dev.nix
    ./media.nix
    ./productivity.nix
    ./social.nix
  ];
}
