" Make it beautiful - colors and fonts

" http://ethanschoonover.com/solarized/vim-colors-solarized
colorscheme solarized
set background=dark

if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=80
  set columns=200

  if has("gui_gtk2")
    set guifont=Inconsolata\ XL\ 10,Inconsolata\ 15,Monaco\ 12
  else
    set guifont=Menlo:h12
  end
else
  "dont load csapprox if we no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
endif

