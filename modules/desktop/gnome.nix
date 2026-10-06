{ pkgs, ... }:

{
  # gnome dm + de
  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;

  environment.systemPackages = with pkgs; [
    gnomeExtensions.blur-my-shell
    gnomeExtensions.sanad
  ];

  # secret viewver
  programs.seahorse.enable = true;
}
