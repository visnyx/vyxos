{ ... }:
{
  # desktop services
  programs.dconf.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;

  # wayland stuff
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    __GL_SHADER_DISK_CACHE = "1";
    __GL_SHADER_DISK_CACHE_SIZE = "10737418240";
    # gtk fix
    GSK_RENDERER = "ngl";
  };
}
