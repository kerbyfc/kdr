let g:UltiSnipsSnippetDirectories=["usnippets"]

function! MySpace()
  if pumvisible()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
      return " "
    else
      return ""
    endif
  else
    return " "
  endif
endfunction

:inoremap <silent> <Space> <C-R>=MySpace()<CR>
map ,us :vsp \| UltiSnipsEdit<CR>

