execute pathogen#infect()

syntax enable
set number
set tabstop=2
set expandtab
set mouse=a
set noswapfile
set hlsearch
set ignorecase
set wrap
set formatoptions-=cro
set background=dark
colorscheme solarized

" Remove mouse clickable width limit if vim version 7.4+
if has('mouse_sgr')
  set ttymouse=sgr
endif

" Automatically remove all trailing whitespace before saving
autocmd BufWritePre * :%s/\s\+$//e

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
