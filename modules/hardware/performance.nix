{ pkgs, ... }:

{
  # kernel tunables
  boot.kernel.sysctl = {
    "vm.max_map_count" = 1048576;

    # zram-optimized swappiness
    "vm.swappiness" = 180;
    "vm.watermark_boost_factor" = 0;
    "vm.watermark_scale_factor" = 125;
    "vm.page-cluster" = 0;

    # disk write thresholds
    "vm.dirty_ratio" = 10;
    "vm.dirty_background_ratio" = 5;

    # bufferbloat mitigation
    "net.core.default_qdisc" = "cake";

    # tcp congestion control
    "net.ipv4.tcp_congestion_control" = "bbr";

    # syn flood protection
    "net.ipv4.tcp_syncookies" = 1;
  };

  # compressed ram swap (no disk swap partition needed)
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 100;
  };

  # periodic ssd trim
  services.fstrim.enable = true;

  # btrfs scrub for data integrity
  services.btrfs.autoScrub.enable = true;
  services.btrfs.autoScrub.interval = "monthly";

  # power management
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;
  services.thermald.enable = true;

  # disable hibernation (zram only, no disk swap)
  systemd.sleep.settings.Sleep = {
    AllowHibernation = "no";
    AllowHybridSleep = "no";
    AllowSuspendThenHibernate = "no";
  };

  # process priority daemon (cachyos rules)
  services.ananicy = {
    enable = true;
    package = pkgs.ananicy-cpp;
    rulesProvider = pkgs.ananicy-rules-cachyos_git;
  };
}
