" ========================================
" KDR WORKSPACE KEYMAP
" ========================================
" close buffer
nnoremap <C-q> :q<CR>

" ,q to toggle quickfix window (where you have stuff like Ag)
" ,oq to open it back up (rare)
nmap <silent> ,qc :cclose<CR>
nmap <silent> ,qo :copen<CR>

" Create window splits easier
nnoremap <C-_> <c-w>s
nnoremap <C-\> <c-w>v

" Resize windows with arrow keys
nnoremap <D-Up> <C-w>+
nnoremap <D-Down> <C-w>-
nnoremap <D-Left> <C-w><
nnoremap <D-Right>  <C-w>>
