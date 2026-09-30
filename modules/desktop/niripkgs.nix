{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # niri tools
    nirimod
    mission-center

    # file explorers
    nautilus
    kdePackages.dolphin

    # thumbnail previews
    ffmpegthumbnailer
    kdePackages.ffmpegthumbs
    kdePackages.kdegraphics-thumbnailers

    # theming & misc
    xwayland-satellite
    hicolor-icon-theme
    papirus-icon-theme
    shared-mime-info
    adw-gtk3
    gsettings-desktop-schemas
    kdePackages.qt6ct
    bibata-cursors
    kdePackages.gwenview

    # noctalia plugins deps
    kdePackages.kdialog
  ];

  environment.pathsToLink = [ "/share/thumbnailers" ];
}
