{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
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
    antigravity-cli

    # networking tools
    inetutils
    iproute2
    dnsutils
  ];
}
