" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vim +PluginInstall +qall
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'slim-template/vim-slim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vimwiki/vimwiki'

call vundle#end()

set nocompatible       " use Vim settings, rather then Vi
set number             " show lines numbers
set tabstop=2          " set indent to 2 spaces
set expandtab          " use spaces, not tab characters
set mouse=a
set noswapfile
set hlsearch           " highlight all search matches
set ignorecase         " ignore case in search
set wrap
set laststatus=2       " always show status bar

filetype off
filetype plugin on

" Color
syntax on
set background=dark
colorscheme solarized

" Ctags
set tags=.tags
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Remove mouse clickable width limit if vim version 7.4+
if has('mouse_sgr')
  set ttymouse=sgr
endif

" Remove highlights with leader + enter
nmap <Leader><CR> :nohlsearch<cr>

" Automatically remove all trailing whitespace before saving
autocmd BufWritePre * :%s/\s\+$//e

" Easymotion
let g:EasyMotion_smartcase = 1
map <Leader> <Plug>(easymotion-prefix)

" Vimwiki
nmap <Leader>wq <Plug>VimwikiVSplitLink

" Turning off auto indent when pasting text
set pastetoggle=<F3>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
