{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # browsers
    floorp-bin

    # productivity
    obsidian
    meld

    # design
    blender
  ];
}
