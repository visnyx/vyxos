{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    easyeffects
    lorien
    mpv
    ffmpeg
    losslesscut
  ];

  # obs
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      obs-wayland-hotkeys
      obs-vkcapture
      obs-pipewire-audio-capture
    ];
  };
}
