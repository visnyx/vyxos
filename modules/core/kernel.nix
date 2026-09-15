{ pkgs, ... }:

{
  # cachyos kernel (x86_64-v3 optimized)
  boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest-x86_64-v3;

  # alternative: zen kernel
  # boot.kernelPackages = pkgs.linuxPackages_zen;
}
