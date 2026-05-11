{config, pkgs, ...}:

{
    xsession.windowManager.bspwm = {
        enable = true;
        startupPrograms = [
            "polybar example"
            "dunst"
            "picom"
            "sxhkd"
            "keepassxc"
            "discord"
            "nextcloud"
            "rustdesk"
            "flameshot"
            "wmname LG3D"
        ];
        settings = {
            border_width = 1;
            window_gap = 5;
            split_ratio = 0.50;
            pointer_modifier = "mod4";
            pointer_action1 = "resize_side";
            pointer_action3 = "move";
            automatic_scheme = "alternate";
        };  
        rules = {
            "alacritty_taskmanager" = {
                state = "floating";   
            };
        };
        monitors = {
            primary = [
                "I"
                "II"
                "III"
                "IV"
                "V"
                "VI"
                "VII"
                "VIII"
                "IX"
                "X"
            ];
        };
        extraConfig = ''
            WALLPAPER=$(shuf -n 1 -e /etc/nixos/assets/wallpapers/*)
            LOCKSCREEN=$WALLPAPER
            feh --bg-scale $WALLPAPER
            xautolock -time 5 -nowlocker "i3lock-color --nofork --inside-color=ffffffff -e -L -f -k --indicator -i $LOCKSCREEN" -locker "/etc/nixos/scripts/lock.sh" -detectsleep -killtime 10 -killer "systemctl hibernate" & 
            xsetroot -cursor_name left_ptr &
        '';
    };


}
