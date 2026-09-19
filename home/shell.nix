{ ... }:

{
  # fish
  programs.fish = {
    enable = true;
    interactiveShellInit = "set -g fish_greeting"; # annoying greeting

    shellAliases = {
      # files thing
      ls = "eza --icons --group-directories-first";
      ll = "eza -l --icons --group-directories-first --git";
      la = "eza -la --icons --group-directories-first --git";
      lt = "eza --tree --icons --level=2";

      # replacements
      cat = "bat --style=auto";
      grep = "rg";
      find = "fd";

      # nav
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../../";

      # shortcuts
      rebuild = "nh os switch";
      update = "nh os switch --update";
      garbage = "nh clean all";
      flakeup = "nix flake update --flake /home/nyxee/vyxos";

      # git
      g = "git";
      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";
      gl = "git log --oneline -20";
      gd = "git diff";

      # misc
      cls = "clear";
      ports = "ss -tulnp";
      myip = "curl -s ifconfig.me";
      df = "df -h";
      mkdir = "mkdir -pv";
    };
  };

  # shell prompt
  programs.oh-my-posh = {
    enable = true;
    enableFishIntegration = true;
    useTheme = "1_shell";
  };

  # bat
  programs.bat = {
    enable = true;
    config = {
      theme = "base16";
      style = "numbers,changes,header";
    };
  };
}
