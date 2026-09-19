{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # terminal
    alacritty

    # cli utilities
    fastfetch
    btop
    killall
    nvtopPackages.nvidia
    systemctl-tui
    unzip
    zip
    tree
    wget
    curl
    speedtest-cli
    micro
    lazygit

    # networking tools
    inetutils
    iproute2
    dnsutils

    # browsers
    mullvad-browser
    brave-origin

    # media
    easyeffects
    lorien
    mpv
    ffmpeg
    losslesscut
    obs-studio

    # social
    vesktop

    # productivity
    obsidian
    meld

    # design
    upscayl
    blender

    # development
    jq
    python3
    gcc
    glib
    distrobox
    distroshelf
    cudatoolkit

    # wayland clipboard
    wl-clipboard

    # system hardware control
    mcontrolcenter

    # agy cli
    antigravity-cli
  ];
}
