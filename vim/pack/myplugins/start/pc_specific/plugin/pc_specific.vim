" Command to compile our code:
command Ninja term arc shell gcc/7.2.0 -- ninja -j 12 -k 4  -C $ACDS_WORK_ROOT/acl/llvm-make install

" Vim8.1 is putting terminal in bracketed mode for some reason, this will
" remove terminal out of bracketed paste mode on exit.
set t_BE=

" Let ctrlp look for p4ignore
let g:ctrlp_root_markers = ['.p4ignore']
let g:ctrlp_cache_dir = $DATA.'/.cache/ctrlp'

map <C-K> :pyf /p/psg/swip/w/fdeazeve/myconfigs_remote/vim/clang-format.py<cr>
imap <C-K> <c-o> :pyf /p/psg/swip/w/fdeazeve/myconfigs_remote/vim/clang-format.py<cr>

" Highlight current tab
hi TabLineSel ctermfg=Red ctermbg=Yellow
