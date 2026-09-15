{ ... }:

{
  # podman with docker compatibility
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

  # nvidia gpu passthrough for containers
  hardware.nvidia-container-toolkit.enable = true;
}
