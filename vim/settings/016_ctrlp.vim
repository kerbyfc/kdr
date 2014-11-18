if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'
  " let g:ctrlp_user_command = 'find %s -type f'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn|\.idea|\.node_modules|\.bower_components'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

let g:ctrlp_by_filename = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_open_multiple_files = 'v'

nnoremap <silent> <C-b> :CtrlPBuffer<CR>
nnoremap <silent> <C-f> :CtrlP<CR>
nnoremap <silent> <C-e> :CtrlPFunky<Cr>
nnoremap <silent> <C-t> :CtrlPTag<Cr>


" Cmd-Shift-P to clear the cache
nnoremap <D-P> :ClearCtrlPCache<CR>
