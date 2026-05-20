{ config, pkgs, ... }:

{
    programs.tmux = {
        enable = true;
        shell = "${pkgs.zsh}/bin/zsh";
        terminal = "tmux-256color";
        historyLimit = 100000;
        shortcut = "s";
        mouse = true;
        keyMode = "vi";

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
            
            set -g set-clipboard on
            bind-key -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-selection
        '';
	plugins = with pkgs.tmuxPlugins;
	[
		sensible
		{
			plugin = catppuccin;
			extraConfig = ''
				set -g @catppuccin_flavor 'mocha'
				set -g @catppuccin_window_status_style 'rounded'
				set -g status-left ""
				set -g status-right "#{E:@catppuccin_status_application}"
				set -agF status-right "#{E:@catppuccin_status_cpu}"
				set -ag status-right "#{E:@catppuccin_status_session}"

			'';
		}
	];
    };
}
