{ config, pkgs, ... }:

{
  # gpu driver
  services.xserver.videoDrivers = [ "nvidia" ];

  # graphics api support
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      intel-media-driver
      nvidia-vaapi-driver
    ];
  };

  # gpu switching
  services.switcherooControl.enable = true;

  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.latest;
    modesetting.enable = true;
    open = true;
    nvidiaSettings = true;

    # suspend/resume support
    powerManagement.enable = true;
    powerManagement.finegrained = true;

    # dynamic boost
    dynamicBoost.enable = true;

    # optimus offload
    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };
}
