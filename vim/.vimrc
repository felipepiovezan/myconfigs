set nocompatible
set ruler                       " show the cursor position all the time

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

set backspace=indent,eol,start
set nobackup
set mouse=a
set number

filetype plugin indent on
set tabstop=2 " show existing tab with 2 spaces width
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set expandtab " On pressing tab, insert 2 spaces
set softtabstop=2
set autoindent

syntax on
colorscheme desert

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

if &diff
  " diff mode
  set diffopt+=iwhite
endif

set colorcolumn=81

function! SetupPython()
  " Here, you can have the final say on what is set.  So
  " fixup any settings you don't like.
  setlocal softtabstop=2
  setlocal tabstop=2
  setlocal shiftwidth=2
endfunction
command! -bar SetupPython call SetupPython()
