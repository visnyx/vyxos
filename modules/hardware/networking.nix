{ ... }:

{
  # Hostname
  networking.hostName = "nyxstation";

  # networkmanager
  networking.networkmanager = {
    enable = true;
    dns = "systemd-resolved";
  };
  services.resolved.enable = true;

  # skip boot time
  systemd.services.NetworkManager-wait-online.enable = false;

  # firewall
  networking.firewall.enable = true;

  # bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  # bpftune
  services.bpftune.enable = true;
}
