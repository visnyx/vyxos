{ pkgs, ... }:

{
  # flatpak
  services.flatpak.enable = true;

  # kde partition manager
  # programs.partition-manager.enable = true;

  programs.kdeconnect = {
    enable = true;
    # package = pkgs.gnomeExtensions.gsconnect; # for gnome
    # package = pkgs.valent; # alt gtk app
  };

  # openrgb
  services.hardware.openrgb.enable = true;
}
