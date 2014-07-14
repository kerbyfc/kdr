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
else
  let g:CSApprox_loaded = 1
endif

" set theme
function! Theme(name)
  exe 'colorscheme' a:name
  exe 'source' '~/.vim/settings/099_colors.vim'
endfunction
command! -nargs=* Theme call Theme( '<args>' )

" set background
function! SetBg(type)
  exe 'set background=' . a:type
  exe 'source' '~/.vim/settings/099_colors.vim'
endfunction
command! -nargs=* SetBg call SetBg( '<args>' )
nnoremap <Leader>bg :SetBg

au VimEnter * so ~/.vim/settings/099_colors.vim
