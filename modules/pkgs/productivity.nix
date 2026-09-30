{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # browsers
    firefox

    # productivity
    obsidian
    meld

    # design
    blender
  ];
}
