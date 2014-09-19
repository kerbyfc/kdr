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

let g:UltiSnipsListSnippets = "<C-s>"
:inoremap <silent> <Space> <C-R>=MySpace()<CR>
map ,us :vsp \| UltiSnipsEdit<CR>

let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-h>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
