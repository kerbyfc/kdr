" " This remaps easymotion to show us only the left
" " hand home row keys as navigation options which
" " may mean more typing to get to a particular spot
" " but it'll all be isolated to one area of the keyboard
" call EasyMotion#InitOptions({
" \   'leader_key'      : '<Leader><Leader>'
" \ , 'keys'            : 'fjdksewoavn'
" \ , 'do_shade'        : 1
" \ , 'do_mapping'      : 1
" \ , 'grouping'        : 1
" \
" \ , 'hl_group_target' : 'Question'
" \ , 'hl_group_shade'  : 'EasyMotionShade'
" \ })
"
" " Make EasyMotion more yellow, less red
" hi clear EasyMotionTarget
" hi! EasyMotionTarget guifg=yellow
"
" nmap ,<ESC> ,,w
" nmap ,<S-ESC> ,,b
"
" " Gif config
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)


map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
