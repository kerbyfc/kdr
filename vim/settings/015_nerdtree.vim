" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 34
let NERDTreeShowLineNumbers = 1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_focus_on_files = 1

let NERDTreeIgnore=['\.o$', '\~$', '\.DS_Store']

" Cmd-Shift-N for nerd tree
nmap <D-N> :NERDTreeToggle<CR>
