{ pkgs, ... }:

{

  services.flatpak.enable = true;

  # kde partition manager
  # programs.partition-manager.enable = true;

  programs.kdeconnect = {
    enable = true;
    package = pkgs.valent; # comment ts in kde
  };

  services.hardware.openrgb.enable = true;

}
