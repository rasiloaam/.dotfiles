{config, ...}: {
  # Configure Fuzzel
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "SauceCodePro Nerd Font:size=10.7:style=SemiBold";
        prompt = "\" \"";
        line-height = 20;
        placeholder = "What do you want to run?";
        icon-theme = config.gtk.iconTheme.name;
        lines = 10;
        width = 70;
        inner-pad = 10;
        horizontal-pad = 20;
        image-size-ratio = 0;
      };
      colors = {
        background = "2e3440ff";
        text = "d8dee9ff";
        prompt = "d8dee9ff";
        input = "d8dee9ff";
        placeholder = "4c566aff";
        match = "8fbcbbff";
        border = "8fbcbbff";
        selection = "8fbcbbff";
        selection-text = "2e3440ff";
        selection-match = "2e3440ff";
      };
      border = {
        width = 2;
        radius = 4;
      };
    };
  };
}
