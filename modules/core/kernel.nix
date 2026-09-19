{ pkgs, ... }:

{
  # cachyos kernel
  boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest-x86_64-v3;

  # zen kernel
  # boot.kernelPackages = pkgs.linuxPackages_zen;

  # vanilla upstream kernel
  # boot.kernelPackages = pkgs.linux_latest;
}
