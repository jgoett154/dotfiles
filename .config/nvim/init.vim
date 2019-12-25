" Automatically install the latest vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Source sub-config files
source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/deoplete.vim
source $HOME/.config/nvim/lightline.vim
source $HOME/.config/nvim/editorconfig.vim
source $HOME/.config/nvim/autocmd.vim
