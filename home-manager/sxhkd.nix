{ config, pkgs, ...}:

{
    services.sxhkd = {
        enable = true;
        keybindings = {
            "super + q" = "bspc node -c";
            "alt + Tab" = "rofi -kb-element-next 'Tab' -modi 'window' -show window";
            "super + m" = "bspc node -t '~fullscreen'";
            "super + {Left,Right}" = "bspc desktop -f {prev,next}.local";
            "ctrl + alt + t" = "alacritty &";
            "super + b" = "vivaldi &";
            "super + shift + {Left,Right}" = "bspc node -d {prev,next}.local --follow";
            "ctrl + Return" = "rofi -kb-element-next '' -kb-mode-next 'Tab' -modi 'run,window,ssh,keys' -show run";
            "super + l" = "xautolock -locknow";
            "{XF86AudioLowerVolume, XF86AudioRaiseVolume}" = "pactl set-sink-volume @DEFAULT_SINK@ {-,+}1%";
            "XF86AudioMute" = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
            "{XF86MonBrightnessUp, XF86MonBrightnessDown}" = "brightnessctl --quiet set 3%{+,-}";
            "ctrl + Escape" = "alacritty -o window.dimensions.columns=80 -o window.dimensions.lines=24 -o window.opacity=1.0 --class alacritty_taskmanager -e btop";
            "super + space" = "/etc/nixos/scripts/change_layout.sh";
            "print" = "flameshot gui";
        };
    };

}
