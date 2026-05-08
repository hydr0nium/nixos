{config, pkgs, ...}:

{
	# Alacritty Config
	programs.alacritty = {
		enable = true;

		settings = {
			font.size = 12.0;
			font.normal.family = "MesloLGLDZ Nerd Font Mono";
			font.normal.style = "Regular";
			font.bold.family = "MesloLGLDZ Nerd Font Mono";
			font.bold.style = "Bold";
			font.italic.family = "MesloLGLDZ Nerd Font Mono";
			font.italic.style = "Italic";
			window.opacity = 0.9;
			window.padding.x = 10;
			window.padding.y = 10;
		};
	};

}
