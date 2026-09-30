{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # terminals
    alacritty
    ghostty

    # clipboard
    wl-clipboard

    # msi
    mcontrolcenter

    # agy cli
    antigravity-cli
  ];
}
