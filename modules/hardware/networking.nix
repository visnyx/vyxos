{ config, ... }:

{
  networking.hostName = "nyxstation";

  # networkmanager with systemd-resolved dns
  networking.networkmanager = {
    enable = true;
    dns = "systemd-resolved";
    settings.connection = {
      "ipv4.ignore-auto-dns" = true;
      "ipv6.ignore-auto-dns" = true;
    };
  };

  # don't block boot waiting for network
  systemd.services.NetworkManager-wait-online.enable = false;

  # dns resolver with dns-over-tls via quad9
  services.resolved = {
    enable = true;
    settings.Resolve = {
      DNSSEC = "false";
      DNSOverTLS = "opportunistic";
      FallbackDNS = "9.9.9.9#dns.quad9.net 149.112.112.112#dns.quad9.net";
    };
  };

  hardware.bluetooth.enable = true;

  # firewall with tailscale passthrough
  networking.firewall = {
    enable = true;
    allowedUDPPorts = [ config.services.tailscale.port ];
    trustedInterfaces = [ "tailscale0" ];
    checkReversePath = "loose";
  };

  # automatic network tuning
  services.bpftune.enable = true;
}
