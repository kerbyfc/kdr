au BufNewFile,BufRead *.slim set filetype=slim
au BufNewFile,BufRead *.vundle set filetype=vundle

" Support for github flavored markdown
" via https://github.com/jtratner/vim-flavored-markdown
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
