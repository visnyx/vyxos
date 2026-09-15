{ pkgs, ... }:

{
  # fuzzy finder
  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
    defaultOptions = [
      "--height=40%"
      "--layout=reverse"
      "--border=rounded"
    ];
  };

  # smart directory navigation
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  # modern ls replacement
  programs.eza = {
    enable = true;
    icons = "auto";
    git = true;
  };

  # per-directory environment variables
  programs.direnv = {
    enable = true;
    enableFishIntegration = true;
    nix-direnv.enable = true;
  };

  # fast grep
  programs.ripgrep = {
    enable = true;
    arguments = [
      "--smart-case"
      "--hidden"
      "--glob=!.git"
    ];
  };

  # additional cli tools
  home.packages = with pkgs; [
    nixd
    nixfmt
    fd
    tldr
    procs
    dust
    bat
  ];
}
