" javascript
fun! SetAbbrsForJavascript()
  abbr log console.log( )<left><left>
endfun
autocmd FileType javascript call SetAbbrsForJavascript()

" haml
fun! SetAbbrsForHaml()
  abbr log %pre= .inspect <left><left><left><left><left><left><left><left>
endfun
autocmd FileType haml call SetAbbrsForHaml()
