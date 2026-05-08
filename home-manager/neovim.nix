{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        extraConfig = ''
            set expandtab
            set tabstop=4
            set shiftwidth=4
            set softtabstop=4
            set autoindent
            set smartindent
            filetype on
            filetype indent on
            set clipboard=unnamedplus
            '';
    
    };
}
