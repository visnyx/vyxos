{ ... }:

{
  #git
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "nyxee";
        email = "visiblename@proton.me";
      };
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
      core.autocrlf = "input";
      diff.colorMoved = "default";
      merge.conflictstyle = "diff3";
    };
  };

  # git delta for diffs??
  programs.delta = {
    enable = true;
    enableGitIntegration = true;
    options = {
      navigate = true;
      side-by-side = true;
      line-numbers = true;
    };
  };
}
