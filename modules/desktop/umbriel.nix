{ pkgs, ... }:

{
  # umbriel
  programs.umbriel.enable = true;

  # Noctalia shell
  programs.noctalia = {
    enable = true;
    recommendedServices.enable = true;
  };

  # keyring
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.greetd.enableGnomeKeyring = true;

  # Display manager
  services.displayManager.noctalia-greeter.enable = true;

  # touchpad
  services.libinput.enable = true;

  # XWayland support
  programs.xwayland.enable = true;

  # stuff
  environment.systemPackages = with pkgs; [
    # idk
    mission-center

    # explorers
    nautilus
    kdePackages.dolphin
    kdePackages.gwenview

    # previews
    ffmpegthumbnailer
    kdePackages.ffmpegthumbs
    kdePackages.kdegraphics-thumbnailers

    #misc
    xwayland-satellite
    shared-mime-info
    gsettings-desktop-schemas

    # things for noctalia plugins
    kdePackages.kdialog
    bazaar

    darkly
    kdePackages.qt6ct

    hicolor-icon-theme
    papirus-icon-theme
    nwg-look
    bibata-cursors
    adw-gtk3

  ];

  environment.pathsToLink = [ "/share/thumbnailers" ];

  fonts.fontconfig.defaultFonts = {
    sansSerif = [
      "Noto Sans"
      "Fira Sans"
    ];
    monospace = [ "JetBrainsMono Nerd Font" ];
    emoji = [ "Noto Color Emoji" ];
  };

  # Secret viewer.
  programs.seahorse.enable = true;

  # Ignore buttons
  services.logind.settings.Login = {
    HandlePowerKey = "ignore";
    HandleSuspendKey = "ignore";
    HandleLidSwitch = "ignore";
    HandleLidSwitchExternalPower = "ignore";
  };
}
