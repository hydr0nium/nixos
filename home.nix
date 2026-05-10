{ config, pkgs, ... }:


{

	home.username = "sol";
	home.homeDirectory = "/home/sol";

	home.stateVersion = "25.11"; # Please read the comment before changing.

	
	home.packages = with pkgs; [
		zsh-completions
        dconf
	];

	imports = [
        # Dot file configurations
		./home-manager/tmux.nix
		./home-manager/bspwm.nix
		./home-manager/neovim.nix
        ./home-manager/starship.nix
        ./home-manager/zsh.nix
        ./home-manager/alacritty.nix
        ./home-manager/rofi.nix
        ./home-manager/git.nix

        # Darkmode for all apps
        ./home-manager/darkmode.nix
	];








}
