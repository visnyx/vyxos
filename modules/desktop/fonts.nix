{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono # larp
    fira-sans
    googlesans-code
  ];
}
