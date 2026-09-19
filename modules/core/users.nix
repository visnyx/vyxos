{ pkgs, ... }:

{
  # fish
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
