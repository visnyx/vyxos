{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # terminals
    alacritty

    # clipboard
    wl-clipboard

    # msi
    mcontrolcenter
  ];
}
