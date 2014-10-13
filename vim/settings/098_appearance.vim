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

au VimEnter * so ~/.vim/settings/099_colors.vim

call Theme("monokai")

function! GitBranchesContains()
  let cwd = getcwd()
  lcd %:p:h
  let blame = substitute(system("export TERM=cygwin && git blame " . expand('%:p')), '\n$', '', '')
  let commit = split( split(blame, "\n")[line('.')-1] , " ")[0]
  let commit = substitute(commit, '\W', '', '')
  if commit == "00000000"
    let result = "not commited"
  else
    let result = substitute(system("git branch -a --contains " . commit), '\n$', '', '')
  end
  execute 'lcd' fnameescape(cwd)
  return result
endfunction

command! -nargs=* GitBranchesContains echo GitBranchesContains()
nnoremap ,gb :echo GitBranchesContains()<CR>

set ruler
set statusline=%F\ %l\:%c
