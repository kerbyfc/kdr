nnoremap <D-S-CR> :Goyo<CR>
nnoremap ,go :Goyo<CR>

let g:goyo_width = 140

function! GoyoBefore()
  return
endfunction

function! ResetAppearence()
  so ~/.vim/settings/099_colors.vim
endfunction

let g:goyo_callbacks = [function('GoyoBefore'), function('ResetAppearence')]
