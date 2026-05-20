{config, pkgs, ...}:

{
	# Alacritty Config
	programs.alacritty = {
		enable = true;

		settings = {
			font.size = 12.0;
			font.normal.family = "JetBrainsMono Nerd Font";
			font.normal.style = "Regular";
			font.bold.family = "JetBrainsMono Nerd Font";
			font.bold.style = "Bold";
			font.italic.family = "JetBrainsMono Nerd Font";
			font.italic.style = "Italic";
			window.opacity = 0.9;
			window.padding.x = 10;
			window.padding.y = 10;
		};
	};

}
