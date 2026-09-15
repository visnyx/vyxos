{ ... }:

{
  imports = [
    ./shell.nix
    ./editors.nix
    ./cli.nix
    ./git.nix
  ];

  home.username = "nyxee";
  home.homeDirectory = "/home/nyxee";
  home.stateVersion = "26.05";
  programs.home-manager.enable = true;
}
