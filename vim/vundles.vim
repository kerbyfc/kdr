" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vundles/ "Submodules
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

for fpath in split(globpath('~/.vim/vundles', '*.vundle'), '\n')
  exe 'runtime' split(fpath, '/')[-1]
endfor

"Filetype plugin indent on is required by vundle
filetype plugin indent on
