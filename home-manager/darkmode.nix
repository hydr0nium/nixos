{config, pkgs, ...}:

{
    dconf.enable = true;
    dconf.settings = {
        "org/gnome/desktop/interface" = {
          color-scheme = "prefer-dark";
        };
    };
    gtk = {
        enable = true;
        theme = {
          name = "Orchis-Dark"; # Oder Adwaita-dark
          package = pkgs.orchis-theme;
        };
        gtk3.extraConfig = {
          gtk-application-prefer-dark-theme = 1;
        };
        gtk4.extraConfig = {
          gtk-application-prefer-dark-theme = 1;
        };
    }; 
    qt = {
        enable = true;
        platformTheme.name = "adwaita"; # Oder "gtk"
        style = {
          name = "adwaita-dark";
          package = pkgs.adwaita-qt;
        };
    };

}
