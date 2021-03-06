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
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'

" Git Plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Language Plugins
Plug 'mattn/emmet-vim'
Plug 'jdonaldson/vaxe', { 'for': 'haxe' }
"Plug 'sheerun/vim-polyglot'
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
Plug 'cespare/vim-toml', { 'for': 'toml' }

call plug#end()
