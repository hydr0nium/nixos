{config, pkgs, ...}:

{
    # ZSH Config
	programs.zsh = {
		enable = true;
		history.size = 10000;
		history.path = "$HOME/.zsh_history";
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;
		history.ignorePatterns = ["rm *" "pkill *" "cp *"];
		shellAliases = {
			ll = "ls -l";
			nos-rebuild = "sudo nixos-rebuild switch";
		};
		oh-my-zsh = {
			enable = true;
			plugins = [
				"git"
				"z"
				"fzf"
				"tmux"
			];
		};
		sessionVariables = {
			ZSH_TMUX_AUTOSTART = "true";
			ZSH_TMUX_AUTOCONNECT = "true";
    			ZSH_TMUX_DEFAULT_SESSION_NAME = "main";
			EDITOR = "nvim";
			VISUAL = "nvim";
		};
		initContent = ''
			bindkey "^[[1;5C" forward-word
			bindkey "^[[1;5D" backward-word
		'';
	};

}
