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

" KDR's vundles are split up by category into smaller files
" This reduces churn and makes it easier to fork. See
" ~/.vim/vundles/ to edit them:
runtime appearance.vundle
runtime misc.vundle
runtime completion.vundle
runtime navigation.vundle
runtime refactoring.vundle
runtime syntax.vundle
runtime versioning.vundle

" The plugins listed in ~/.vim/.vundles.local will be added here to
" allow the user to add vim plugins to kdr without the need for a fork.
if filereadable(expand("~/.kdr/vim/.vundles.local"))
  source ~/.kdr/vim/.vundles.local
endif

"Filetype plugin indent on is required by vundle
filetype plugin indent on
