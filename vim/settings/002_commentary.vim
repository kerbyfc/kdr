au BufNewFile,BufRead *.slim set filetype=slim
autocmd FileType slim set commentstring=/ %s

au BufNewFile,BufRead *.vundle set filetype=vundle
autocmd FileType vundle set commentstring=\"\ %s
