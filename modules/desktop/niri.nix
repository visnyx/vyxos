{ ... }:

{
  # niri
  programs.niri.enable = true;

  # noctalia shell
  programs.noctalia = {
    enable = true;
    recommendedServices.enable = true;
  };

  # display manager
  services.displayManager.noctalia-greeter.enable = true;

  # touchpad
  services.libinput.enable = true;

  # xwayland
  programs.xwayland.enable = true;

  # seahorse
  programs.seahorse.enable = true;

  # ignore hardware buttons
  services.logind.settings.Login = {
    HandlePowerKey = "ignore";
    HandleSuspendKey = "ignore";
    HandleLidSwitch = "ignore";
    HandleLidSwitchExternalPower = "ignore";
  };
}
