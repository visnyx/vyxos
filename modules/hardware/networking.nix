{ config, ... }:

{
  #hostname
  networking.hostName = "nyxstation";

  # networkmanager
  networking.networkmanager = {
    enable = true;
    dns = "systemd-resolved";
    settings.connection = {
      "ipv4.ignore-auto-dns" = true;
      "ipv6.ignore-auto-dns" = true;
    };
  };

  # online skip on boot
  systemd.services.NetworkManager-wait-online.enable = false;

  # dns conf
  services.resolved = {
    enable = true;
    settings.Resolve = {
      DNSSEC = "false";
      DNSOverTLS = "opportunistic";
      FallbackDNS = "9.9.9.9#dns.quad9.net 149.112.112.112#dns.quad9.net";
    };
  };

  hardware.bluetooth.enable = true;

  # firewall
  networking.firewall = {
    enable = true;
    #tailscale passthrough
    allowedUDPPorts = [ config.services.tailscale.port ];
    trustedInterfaces = [ "tailscale0" ];
    checkReversePath = "loose";
  };

  # network thing
  services.bpftune.enable = true;
}
