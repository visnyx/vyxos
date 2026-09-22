{ pkgs, ... }:

{
  # steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  # gamemode
  # programs.gamemode.enable = true;

  # gamescope
  programs.gamescope.enable = true;

  # gaming overlays and tools
  environment.systemPackages = with pkgs; [
    mangohud
    vulkan-tools
    heroic
    goverlay
  ];
}
