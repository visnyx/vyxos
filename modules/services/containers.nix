{ ... }:

{
  # podman with docker compatibility
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

  # gpu "passthrough" for ^
  hardware.nvidia-container-toolkit.enable = true;
}
