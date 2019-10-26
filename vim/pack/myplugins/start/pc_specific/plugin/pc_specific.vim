" Command to compile our code:
command Ninja term arc shell gcc/6.3.0 -- ninja -j 12 -k 4  -C $ACDS_WORK_ROOT/acl/llvm-make install-LLVM

" Vim8.1 is putting terminal in bracketed mode for some reason, this will
" remove terminal out of bracketed paste mode on exit.
set t_BE=

" Let ctrlp look for p4ignore
let g:ctrlp_root_markers = ['.p4ignore']
let g:ctrlp_cache_dir = $DATA.'/.cache/ctrlp'

map <C-K> :! clang-format<cr>
imap <C-K> <c-o>:! clang-format<cr>
