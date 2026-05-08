{ config, pkgs, ... }:
let
tmux-powerkit = pkgs.callPackage (pkgs.fetchFromGitHub {
        owner = "fabioluciano";
        repo = "tmux-powerkit";
        rev = "main";  # or pin to a specific commit
        sha256 = "sha256-0CYu8bQPHfEdOzdNxeHKX1FZ7uU+/RVQ7qZZ7WSODT4=";   # nix will provide correct hash on first build
        } + "/default.nix") {};
in
{
    programs.tmux = {
        enable = true;
        shell = "${pkgs.zsh}/bin/zsh";
        terminal = "tmux-256color";
        historyLimit = 100000;
        shortcut = "s";
        mouse = true;
        keyMode = "vi";
        plugins = with pkgs;
        [
            tmux-powerkit

        ];
        extraConfig = ''
            set -g base-index 1
            setw -g pane-base-index 1
            set-option -g renumber-windows on
            set-option -g status-position top

            bind v split-window -h -c "#{pane_current_path}"
            bind h split-window -v -c "#{pane_current_path}"
            bind q kill-pane
            bind m resize-pane -Z
            bind c new-window -c "#{pane_current_path}"

            set -g status-style "bg=default"
            set -g window-status-style "bg=default"
            set -g status-left-style bg=default
            set -g status-right-style bg=default
            set -g window-status-current-style "bg=default"

            set -Fg "status-format[1]" "#{status-format[0]}"
            set -g "status-format[1]" ""
            set -g status 2
            set -g @powerkit_plugins "datetime"
            set -g @powerkit_theme "tokyo-night"
            set -g @powerkit_theme_variant "night"
            set -g @powerkit_transparent "true"
            set -g @powerkit_edge_separator_style "normal"

            set -g set-clipboard on
            bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-selection
            '';

    };
}
