{ config, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 10;
  boot.loader.timeout = 0;
  boot.loader.efi.canTouchEfiVariables = true;

  # msi embedded controller modules
  boot.extraModulePackages = [ config.boot.kernelPackages.msi-ec ];
  boot.kernelModules = [
    "kvm-intel"
    "msi-ec"
    "ec_sys"
  ];

  boot.extraModprobeConfig = ''
    options ec_sys write_support=1
  '';

  # kernel parameters (silent boot + spd5118 blacklist for wake errors)
  boot.kernelParams = [
    "module_blacklist=spd5118"
    "rcutree.enable_rcu_lazy=1"
    "quiet"
    "splash"
    "boot.shell_on_fail"
    "loglevel=3"
    "rd.systemd.show_status=false"
    "rd.udev.log_level=3"
    "udev.log_priority=3"
  ];

  # silent boot with plymouth
  boot.consoleLogLevel = 0;
  boot.initrd.verbose = false;
  boot.plymouth.enable = true;
}
