{ pkgs, ... }:

{
  # steam with network features
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  # gaming overlays and tools
  environment.systemPackages = with pkgs; [
    mangohud
    vulkan-tools
    heroic
    goverlay
  ];
}
