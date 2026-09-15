{ pkgs, ... }:

{
  # enable fish system-wide (needed for login shell)
  programs.fish.enable = true;

  users.users."nyxee" = {
    isNormalUser = true;
    description = "nyx";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
  };
}
