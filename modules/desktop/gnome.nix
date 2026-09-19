{ pkgs, ... }:

{
  # gnome dm + de
  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;

  # stuff for gnome
  environment.systemPackages = with pkgs; [
    mission-center
    gnome-extension-manager
  ];
  # Wayland environment variables.
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    __GL_SHADER_DISK_CACHE = "1";
    __GL_SHADER_DISK_CACHE_SIZE = "10737418240";
    # gtk fix
    GSK_RENDERER = "ngl";
  };

  # Desktop services.
  programs.dconf.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;

  # Secret viewer.
  programs.seahorse.enable = true;
}
