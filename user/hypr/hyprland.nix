{
  # Configure Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$modShift" = "$mod SHIFT";

      # Monitors
      monitor = [
        "eDP-1,disable"
        "HDMI-A-1,1920x1080@75,0x0,1"
      ];

      # General
      general = {
        gaps_in = 3;
        gaps_out = 5;

        border_size = 2;
        "col.active_border" = "rgb(8fbcbb)";
        "col.inactive_border" = "rgb(3b4252)";

        layout = "dwindle";
      };

      # Decoration
      decoration = {
        rounding = 4;
        shadow = {
          enabled = false;
        };
        blur = {
          enabled = false;
        };
      };

      # Dwindle
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      # Misc
      misc = {
        disable_hyprland_logo = true;
        force_default_wallpaper = 0;
        disable_splash_rendering = true;
      };

      # Keybindings
      bind = [
        # Launch apps
        "$mod, B, exec, firefox"
        "$mod, Return, exec, foot"

        # Manage active window
        "$mod, Q, killactive,"

        # Switch to a workspace with $mod + num key
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"

        # Move active window to a workspace with $modShift + numkey
        "$modShift, 1, movetoworkspacesilent, 1"
        "$modShift, 2, movetoworkspacesilent, 2"
        "$modShift, 3, movetoworkspacesilent, 3"
        "$modShift, 4, movetoworkspacesilent, 4"
        "$modShift, 5, movetoworkspacesilent, 5"
      ];
    };
  };
}
