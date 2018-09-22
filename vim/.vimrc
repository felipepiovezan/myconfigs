" ---------------------
"  LLVM SETTINGS

" It's VIM, not VI
set nocompatible

" A tab produces a 2-space indentation
set softtabstop=2
set shiftwidth=2
set expandtab

" Enable filetype detection
filetype on

" Optional
" C/C++ programming helpers
augroup csrc
  au!
  autocmd FileType *      set nocindent smartindent
  autocmd FileType c,cpp  set cindent
augroup END

" Set a few indentation parameters. See the VIM help for cinoptions-values for
" details.  These aren't absolute rules; they're just an approximation of
" common style in LLVM source.
set cinoptions=:0,g0,(0,Ws,l1
" Add and delete spaces in increments of `shiftwidth' for tabs
set smarttab

" Highlight syntax in programming languages
syntax on

" LLVM Makefiles can have names such as Makefile.rules or TEST.nightly.Makefile,
" so it's important to categorize them as such.
augroup filetype
  au! BufRead,BufNewFile *Makefile* set filetype=make
augroup END

" In Makefiles, don't expand tabs to spaces, since we need the actual tabs
autocmd FileType make set noexpandtab

" Enable syntax highlighting for LLVM files. To use, copy
" utils/vim/syntax/llvm.vim to ~/.vim/syntax .
augroup filetype
  au! BufRead,BufNewFile *.ll     set filetype=llvm
augroup END

" Enable syntax highlighting for tablegen files. To use, copy
" utils/vim/syntax/tablegen.vim to ~/.vim/syntax .
augroup filetype
  au! BufRead,BufNewFile *.td     set filetype=tablegen
augroup END

" Enable syntax highlighting for reStructuredText files. To use, copy
" rest.vim (http://www.vim.org/scripts/script.php?script_id=973)
" to ~/.vim/syntax .
augroup filetype
 au! BufRead,BufNewFile *.rst     set filetype=rest
augroup END

" ----------------------------------------------
"  My settings:
" show the cursor position all the time
set ruler

" Seems to work best with transparent terminals
colorscheme desert

" Make shift-insert work like in Xterm
if has('gui_running')
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>
endif

" Shortcuts for changing tabs
set ttimeoutlen=0
noremap! <C-h> <Esc>:tabprevious<CR>i
noremap  <C-h> <Esc>:tabprevious<CR>
noremap! <C-l> <Esc>:tabnext<CR>i
noremap  <C-l> <Esc>:tabnext<CR>

noremap <Leader>y "*y
noremap <Leader>p "*p

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

set backspace=indent,eol,start
set nobackup
set mouse=a
set number

" filetype plugin indent on
" set autoindent

if &diff
  " diff mode
  set diffopt+=iwhite
endif

" Correct python indentation.
function! SetupPython()
  " Here, you can have the final say on what is set.  So
  " fixup any settings you don't like.
  setlocal softtabstop=2
  setlocal tabstop=2
  setlocal shiftwidth=2
endfunction
command! -bar SetupPython call SetupPython()
