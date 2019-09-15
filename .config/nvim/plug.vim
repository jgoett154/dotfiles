call plug#begin('~/.local/share/nvim/plugged')

Plug 'dylanaraps/wal.vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'

" Git Plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Language Plugins
Plug 'artur-shaik/vim-javacomplete2'

call plug#end()
