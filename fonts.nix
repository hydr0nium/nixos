{config, lib, pkgs, ...}:

{

fonts.packages = with pkgs; [
	nerd-fonts.meslo-lg

];

fonts.fontDir.enable = true;

fonts.fontconfig = {
  enable = true;

  defaultFonts = {
    monospace = [ "MesloLGS Nerd Font Mono" ];
    sansSerif = [ "MesloLGS Nerd Font Mono" ];
    serif = [ "MesloLGS Nerd Font Mono" ];
  };
};


}
