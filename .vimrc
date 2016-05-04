execute pathogen#infect()

syntax on               " show syntax highlighting
set number              " show lines numbers
set tabstop=2           " set indent to 2 spaces
set expandtab           " use spaces, not tab characters
set mouse=a
set noswapfile
set hlsearch            " highlight all search matches
set ignorecase          " ignore case in search
set wrap
set cursorline          " highlight current line
set laststatus=2        " always show status bar
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
