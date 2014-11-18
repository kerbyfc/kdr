let g:vim_tags_use_language_field=1
let g:vim_tags_auto_generate=1
let g:vim_tags_main_file='tags'
let g:vim_tags_use_vim_dispatch=0

let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore', '.git', '.idea', 'tmp']
let g:vim_tags_project_tags_command = "{CTAGS} -R {OPTIONS} --exclude=\".git\" --exclude=\"node_modules\" {DIRECTORY} 2>/dev/null"

" hit ,f to find the definition of the current class
" this uses ctags. the standard way to get this is Ctrl-]
nnoremap <silent> ,f <C-]>

" use ,F to jump to tag in a vertical split
nnoremap <silent> ,F :let word=expand("<cword>")<CR>:vsp<CR>:wincmd w<cr>:exec("tag ". word)<cr>

" AutoTag
" Seems to have problems with some vim files
let g:autotagExcludeSuffixes="tml.xml.text.txt.vim"
let g:tlist_coffee_settings = 'coffee;f:function;v:variable'


au BufWritePost *.js,*.coffee,*.css,*.ejs,*.rb,*.php,*.vim sil exe 'TagsGenerate!'
