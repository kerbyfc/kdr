let g:undotree_DiffpanelHeight = 15
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_TreeNodeShape = "¬"

nmap ,u :UndotreeToggle<CR>

if has("persistent_undo")
    set undodir = "~/.undodir/"
    set undofile
endif
