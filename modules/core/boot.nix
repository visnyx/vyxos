{ config, ... }:

{
  # bootloader config
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 10;
  boot.loader.timeout = 0;
  boot.loader.efi.canTouchEfiVariables = true;

  # msi ec modules
  boot.extraModulePackages = [ config.boot.kernelPackages.msi-ec ];
  boot.kernelModules = [
    "kvm-intel"
    "msi-ec"
    "ec_sys"
  ];
  # ec fix
  boot.extraModprobeConfig = ''
    options ec_sys write_support=1
  '';

  # kernel params
  # silent boot and blacklisted the ram cuz shows some errors (spd5118)
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
