syntax on
set number
set tabstop=2
set expandtab
set mouse=a
set noswapfile
set hlsearch
set ignorecase
set wrap

" Automatically remove all trailing whitespace before saving
autocmd BufWritePre * :%s/\s\+$//e

execute pathogen#infect()

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Highlight
set background=dark
set t_Co=256
hi Normal       ctermfg=15   ctermbg=0
hi Comment      ctermfg=8               " #bla bla
hi String       ctermfg=33              " "text"
hi Constant     ctermfg=33              " true && false
hi Number       ctermfg=33              " 123
hi Type         ctermfg=10              " class const
hi PreProc      ctermfg=1               " def end
hi Function     ctermfg=15              " method
hi Statement    ctermfg=202             " if while return
hi Special      ctermfg=11              " {",\r
hi Identifier   ctermfg=92   cterm=none " @var |line|
hi LineNr       ctermfg=8
hi StatusLine   ctermbg=0    ctermfg=8
hi StatusLineNC ctermbg=8    ctermfg=0
hi VertSplit    ctermbg=8    ctermfg=0
