" fugitive.git
" ========================================
" For fugitive.git, dp means :diffput. Define dg to mean :diffget
nnoremap <silent> ,dg :diffget<CR>
nnoremap <silent> ,dp :diffput<CR>

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
