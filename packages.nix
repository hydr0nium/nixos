
{config, pkgs, ...}:
# Direct Programs
{
    programs.firefox.enable = true;
    programs.direnv.enable = true;
    programs.direnv.nix-direnv.enable = true;


    programs.zsh.enable = true;

# System Packages

    environment.systemPackages = with pkgs; [
        # General
        vim
        wget
        neovim
        tldr

        # Desktop Environment
        polybar
        picom
        polybar
        sxhkd
        dunst
        xautolock
        feh
        i3lock-color
        stow
        git
        flameshot
        xorg.xwininfo
        wmname
        rofi
        xdotool
        pavucontrol
        btop
        kdePackages.dolphin

        # Terminal
        alacritty
        tmux
        starship
        fzf

        # Pentesting

    ];
}
