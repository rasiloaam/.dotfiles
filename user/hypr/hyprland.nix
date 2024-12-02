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
        force_split = 2;
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
        "$mod, T, exec, telegram-desktop"
        "$mod, F, exec, nemo"
        "$mod, Return, exec, foot"
        "$modShift, Return, exec, fuzzel"

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

        # Move focus with $mod + H / J / K / L
        "$mod, H, movefocus, l"
        "$mod, J, movefocus, d"
        "$mod, K, movefocus, u"
        "$mod, L, movefocus, r"

        # Move active window with $modShift + H / J / K / L
        "$modShift, H, movewindow, l"
        "$modShift, J, movewindow, d"
        "$modShift, K, movewindow, u"
        "$modShift, L, movewindow, r"

        # Resize active window with $mod + arrow keys
        "$mod, left, resizeactive, -30 0"
        "$mod, right, resizeactive, 30 0"
        "$mod, up, resizeactive, 0 -30"
        "$mod, down, resizeactive, 0 30"

        # Scroll through workspacese with $mod + , / .
        "$mod, Comma, workspace, e-1"
        "$mod, Period, workspace, e+1"

        # Control volume with $mod + N / M
        "$mod, N, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        "$mod, M, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
      ];

      # Mouse bindings
      bindm = [
        # Move / Resize active window with LMB / RMB
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      # Animations
      animations = {
        enabled = true;
        animation = [
          "global, 1, 3, default"
          "workspaces, 0, 3, default"
          "windowsIn, 1, 3, default, popin 70%"
          "windowsOut, 1, 3, default, popin 70%"
        ];
      };
    };
  };
}
