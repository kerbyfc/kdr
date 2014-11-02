autocmd FileType slim set commentstring=/\ %s
autocmd FileType vundle set commentstring=\"\ %s

" Command-/ to toggle comments
map <silent> <D-/> gcc <Esc>
vmap <D-/> gc
