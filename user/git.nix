{config, ...}: {
  # Configure Git
  programs.git = {
    enable = true;
    userName = "rasiloaam";
    userEmail = "rasiloaam@gmail.com";
    extraConfig = {
      gpg.format = "ssh";
      commit.gpgsign = true;
      user.signingkey = "${config.home.homeDirectory}/.ssh/rasiloaam.pub";
      init.defaultBranch = "master";
      push.autoSetupRemote = true;
    };
  };
}
