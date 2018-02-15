set nocompatible
set ruler                       " show the cursor position all the time

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

set backspace=indent,eol,start
set nobackup
set mouse=a
set number

filetype plugin indent on
set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces
set autoindent
match ErrorMsg '\%81v.\+' " highlight lines with more than 80 characters

syntax on
colorscheme elflord

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif


set ttimeoutlen=0
noremap! [5^ <Esc>:tabprevious<CR>i
noremap [5^ <Esc>:tabprevious<CR>
noremap! [6^ <Esc>:tabnext<CR>i
noremap [6^ <Esc>:tabnext<CR>

noremap <Leader>y "*y
noremap <Leader>p "*p

map <f9> :make
