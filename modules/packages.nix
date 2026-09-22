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

    # social
    vesktop

    # productivity???
    obsidian
    meld

    # design
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

  # stuff w options

  # obs
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      obs-wayland-hotkeys
      obs-vkcapture
      obs-pipewire-audio-capture
    ];
  };

  # scx loader w lavd
  services.scx-loader = {
    enable = true;
    config = {
      default_sched = "scx_lavd";
      # default_mode = "Auto";
    };
  };
}
