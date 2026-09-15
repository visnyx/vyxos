{ ... }:

{
  # rtkit for realtime audio scheduling
  security.rtkit.enable = true;

  # pipewire audio stack
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
