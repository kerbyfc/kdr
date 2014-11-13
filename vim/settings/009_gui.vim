if has("gui_running")
  set guifont=Menlo:h12
  set transparency=3
  set fuopt+=maxhorz
  set fu
endif

if has("gui_running")
  set t_Co=256
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M
  set lines=80
  set columns=200
  if has("gui_gtk2")
    set guifont=Inconsolata\ XL\ 10,Inconsolata\ 15,Monaco\ 12
  else
    set guifont=Menlo:h12
  end

  if has("gui_macvim")
    " deny hide on cmd-h
    call system("defaults write org.vim.MacVim NSUserKeyEquivalents -dict-add 'Hide MacVim' '@\$H'")

    macm File.New\ Tab key=<nop>
    macm File.Close\ Window key=<nop>
    macm Tools.List\ Errors key=<nop>
    macm File.Save key=<nop>

    " persistent undos - undo after you re-open the file
    " but this gives warnings under command line vim
    " use only in macvim
    if v:version > '702'
      set undodir=~/.vim/backups
      set undofile
    endif

  endif

else
  let g:CSApprox_loaded = 1
endif


" Disable the scrollbars (NERDTree)
set guioptions-=r
set guioptions-=L

" Disable the macvim toolbar
set guioptions-=T

