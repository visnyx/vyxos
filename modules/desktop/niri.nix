{ pkgs, ... }:

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

  # niri stuff
  environment.systemPackages = with pkgs; [
    # idk
    nirimod
    mission-center

    # explorers
    nautilus
    kdePackages.dolphin

    # previews
    ffmpegthumbnailer
    kdePackages.ffmpegthumbs
    kdePackages.kdegraphics-thumbnailers

    #misc
    xwayland-satellite
    hicolor-icon-theme
    papirus-icon-theme
    shared-mime-info
    adw-gtk3
    gsettings-desktop-schemas
    kdePackages.qt6ct
    bibata-cursors
    kdePackages.gwenview

    # things for noctalia plugins
    kdePackages.kdialog
  ];

  environment.pathsToLink = [ "/share/thumbnailers" ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-color-emoji
  ];

  fonts.fontconfig.defaultFonts = {
    sansSerif = [
      "Noto Sans"
      "Fira Sans"
    ];
    monospace = [ "JetBrainsMono Nerd Font" ];
    emoji = [ "Noto Color Emoji" ];
  };

  # seahorse
  programs.seahorse.enable = true;

  # Ignore buttons
  services.logind.settings.Login = {
    HandlePowerKey = "ignore";
    HandleSuspendKey = "ignore";
    HandleLidSwitch = "ignore";
    HandleLidSwitchExternalPower = "ignore";
  };
}
