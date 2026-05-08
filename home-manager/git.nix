{config, pkgs, ...}:

{
    programs.git = {
        enable = true;
        settings = {
            user.email = "37932436+hydr0nium@users.noreply.github.com";
            user.name = "hydr0nium";
            init.defaultBranch = "main";
            merge.tool = "nvimdiff2";
            push.autoSetupRemote = true;
            gpg.mode = "ssh";
            gpg.format = "ssh";

        };
    };

}
