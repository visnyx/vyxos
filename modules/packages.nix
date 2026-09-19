{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # terminal
    alacritty
    ghostty

    # cli utils
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

    # productivity???
    obsidian
    meld

    # design
    upscayl
    blender

    # dev
    jq
    python3
    gcc
    glib
    distrobox
    distroshelf
    pods
    cudatoolkit

    # clipboard
    wl-clipboard

    # msi
    mcontrolcenter

    # agy cli
    antigravity-cli
  ];
}
