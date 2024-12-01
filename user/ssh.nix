{config, ...}: {
  # Configure SSH
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "github.com" = {
        identityFile = "${config.home.homeDirectory}/.ssh/rasiloaam";
        identitiesOnly = true;
      };
    };
  };
}
