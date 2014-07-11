syntax on      "Включить подсветку синтаксиса
set number     "Показывать номера строк
set tabstop=2  "Длина табуляции
set expandtab  "Заменяет табуляцию пробелами
set mouse=a    "Включить мышь
set noswapfile "Не создавать файлы .swp
set hlsearch   "Подсвечивать результаты поиска
set ignorecase "Регистронезависимый поиск
set wrap       "Перенос строк

"При переходе за границу в 80 символов в Ruby/js подсвечиваем на темном фоне текст
augroup vimrc_autocmds
  autocmd!
  autocmd FileType ruby,javascript highlight Excess ctermbg=DarkGrey guibg=Black
  autocmd FileType ruby,javascript match Excess /\%80v.*/
augroup END

"Automatically remove all trailing whitespace before saving
autocmd BufWritePre * :%s/\s\+$//e

execute pathogen#infect()

"Highlight
set background=dark
set t_Co=256
highlight Normal       ctermfg=15   ctermbg=0
highlight Comment      ctermfg=8               "#bla bla
highlight String       ctermfg=33              ""text"
highlight Constant     ctermfg=33              "true && false
highlight Number       ctermfg=33              "123
highlight Type         ctermfg=10              "class const
highlight PreProc      ctermfg=1               "def end
highlight Function     ctermfg=15              "method
highlight Statement    ctermfg=202             "if while return
highlight Special      ctermfg=11              "{",\r
highlight Identifier   ctermfg=92   cterm=none "@var |line|
highlight LineNr       ctermfg=8
highlight StatusLine   ctermbg=0    ctermfg=8
highlight StatusLineNC ctermbg=8    ctermfg=0
highlight VertSplit    ctermbg=8    ctermfg=0
