set laststatus=2
set noshowmode
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wal',
	  \ 'active': {
	  \		'left': [ [ 'mode' ] ],
	  \		'right': [ [ 'gitbranch' ] ]
	  \ },
	  \ 'inactive': {
	  \		'left': [ [ 'mode' ] ],
	  \		'right': [ [ 'gitbranch' ] ]
	  \ },
	  \ 'component_function': {
	  \		'gitbranch': 'fugitive#head',
	  \		'mode': 'LightlineMode',
	  \ },
      \ }

function! LightlineMode()
  return &filetype ==# 'tagbar' ? 'Tagbar' :
		\ &filetype ==# 'nerdtree' ? 'NERDTree' :
        \ lightline#mode()
endfunction
