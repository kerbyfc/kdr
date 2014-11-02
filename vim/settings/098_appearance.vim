" favorite themes
let t:themes = ['solarized', 'molokai', 'tomorrow-night']
let t:themefile = '/.theme'

" set theme and save it to theme file
function! Theme(...)
  let theme = a:1
  let bg = a:0 > 1 ? a:2 : 'dark'
  let themefile = a:0 > 2 ? a:3.t:themefile : expand('~/.vim'.t:themefile)
  if !(filereadable(themefile))
    sil exe '!touch' themefile
  endif
  call writefile( [theme, bg], themefile )
  sil exe 'source' '~/.vim/settings/099_colors.vim'
endfunction

" set theme for current project
function! ProjTheme(...)
  let bg = a:0 > 1 ? a:2 : 'dark'
  let dir = getcwd()
  call Theme(a:1, bg, dir)
endfunction

" fix current theme for project
function! FixTheme(...)
  let theme = sil exe 'colorscheme'
  ProjTheme(theme) " TODO pass also the background setting
endfunction

" favorite themes autocomplete
function! ThemesList(...)
  return len(a:1) > 0 ? filter(copy(t:themes), 'v:val =~ "'.a:1.'"') : t:themes
endfunction

command! -complete=customlist,ThemesList -nargs=* Theme call Theme(<f-args>)
command! -complete=customlist,ThemesList -nargs=* ProjTheme call ProjTheme(<f-args>)
command! -nargs=* FixTheme call FixTheme(<f-args>)

au VimEnter * so ~/.vim/settings/099_colors.vim
