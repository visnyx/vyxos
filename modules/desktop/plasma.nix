{ ... }:

{
  # kde plasma
  services.desktopManager.plasma6.enable = true;
  services.displayManager.plasma-login-manager.enable = true;

  # wayland stuff
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    __GL_SHADER_DISK_CACHE = "1";
    __GL_SHADER_DISK_CACHE_SIZE = "10737418240";
  };

  # desktop services
  programs.dconf.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;
}
