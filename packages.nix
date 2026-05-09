
{config, pkgs, ...}:
# Direct Programs
{
	programs.firefox.enable = true;
	programs.direnv.enable = true;
	programs.direnv.nix-direnv.enable = true;


	programs.zsh.enable = true;

	# System Packages

	environment.systemPackages = with pkgs; [
	   vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
	   wget
	   neovim
	   alacritty
	   polybar
	   picom
	   betterlockscreen
	   polybar
	   sxhkd
	   xautolock
	   feh
	   i3lock-color
	   stow
	   git
	   tldr
	   flameshot
	   wmname
	   xorg.xwininfo
	   rofi
	   tmux
	   starship
	   fzf
       xdotool
	];
}
