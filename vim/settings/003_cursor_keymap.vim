" ========================================
" KDR CURSOR NAVIGATION KEYMAP
" ========================================
"
set cursorline

" deny standart navigation
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" navigation in insert mode
inoremap <C-l> <C-o>a
inoremap <C-h> <C-o>h

" navigation
nnoremap <D-h> ^
nnoremap <D-l> $
inoremap <D-h> <C-O>I
inoremap <D-l> <C-O>A

" move up/down quickly by using Cmd-j, Cmd-k
" which will move us around by functions
nnoremap <silent> <D-j> }
nnoremap <silent> <D-k> {
vmap <D-j> }
vmap <D-k> {

" navigation beetween marks
nnoremap ' `
nnoremap ` '

" Move between split windows by using the four directions H, L, I, N
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

nnoremap <D-Up> <C-w>+
nnoremap <D-Down> <C-w>-
nnoremap <D-Left> <C-w><
nnoremap <D-Right>  <C-w>>
