" if has("gui_macvim")
"   macmenu File.Close key=<nop>
" endif
"
" " delete buffer without closing window
" function! Bclose()
"
"   if !exists("b:NERDTreeType") || b:NERDTreeType != "primary"
"
"     let l:currentBufNum = bufnr("%")
"     let l:alternateBufNum = bufnr("#")
"
"     if buflisted(l:alternateBufNum)
"       buffer #
"     else
"       bnext
"     endif
"
"     if bufnr("%") == l:currentBufNum
"       new
"     endif
"
"     if buflisted(l:currentBufNum)
"       execute("bdelete! ".l:currentBufNum)
"     endif
"
"   endif
"
" endfunction
"
" nmap <D-w> :call Bclose()<CR>
" nmap <C-D-w> <Esc> :tabclose<CR>
"
set transparency=5
if has("gui_macvim")
  call system("defaults write org.vim.MacVim NSUserKeyEquivalents -dict-add 'Hide MacVim' '@\$H'")
  " macm File.New\ Tab key=<nop>
  macm File.Close\ Window key=<nop>
  macm Tools.List\ Errors key=<nop>
  macm File.Save key=<nop>
endif
