{
  pkgs,
  user,
  ...
}: {
  imports = [
    # Include submodules
    ./firefox
    ./hypr
    ./neovim
    ./terminal
    ./eza.nix
    ./gammastep.nix
    ./git.nix
    ./gtk.nix
    ./mako.nix
    ./ssh.nix
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage
  home = {
    username = user;
    homeDirectory = "/home/${user}";
  };

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;

  # User packages
  home.packages = with pkgs; [
    gcc # Compiling
    nemo # File manager
    wl-clipboard # Clipboard
    ripgrep # Fast recursive pattern matching
    telegram-desktop # Telegram
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";
}
