syntax on
set number
set tabstop=2
set expandtab
set mouse=a
set noswapfile
set hlsearch
set ignorecase
set wrap
set formatoptions-=cro

" Remove mouse clickable width limit if vim version 7.4+
if has('mouse_sgr')
  set ttymouse=sgr
endif

" Automatically remove all trailing whitespace before saving
autocmd BufWritePre * :%s/\s\+$//e

execute pathogen#infect()

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Highlight
hi Normal       ctermfg=White        ctermbg=Black
hi Comment      ctermfg=Grey                        " #bla bla
hi String       ctermfg=Blue                        " "text"
hi Constant     ctermfg=Blue                        " true && false
hi Number       ctermfg=Blue                        " 123
hi Type         ctermfg=DarkGreen                   " class const
hi PreProc      ctermfg=DarkRed                     " def end
hi Function     ctermfg=White                       " method
hi Statement    ctermfg=DarkYellow                  " if while return
hi Special      ctermfg=Yellow                      " {",\r
hi Identifier   ctermfg=DarkMagenta  cterm=none     " @var |line|
hi LineNr       ctermfg=Grey
hi StatusLine   ctermbg=Black        ctermfg=Gray
hi StatusLineNC ctermbg=Grey         ctermfg=Black
hi VertSplit    ctermbg=Grey         ctermfg=Black
hi Directory    ctermfg=DarkRed
hi OverLength   ctermbg=DarkBlue

match OverLength /\%81v.\+/
