{ pkgs, ... }:

{

  services.flatpak.enable = true;

  # gui disk management
  # programs.partition-manager.enable = true;
  programs.gnome-disks.enable = true;

  programs.kdeconnect = {
    enable = true;
    package = pkgs.valent; # comment ts in kde
  };

  services.hardware.openrgb.enable = true;

}
