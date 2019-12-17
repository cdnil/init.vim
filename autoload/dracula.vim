let g:dracula#palette           = {}
let g:dracula#palette.fg        = ['#B9B9B9', 253]

let g:dracula#palette.bglighter = ['#333333', 238]
let g:dracula#palette.bglight   = ['#262626', 237]
let g:dracula#palette.bg        = ['#1A1A1A',   0]
let g:dracula#palette.bgdark    = ['#0C111C', 235]
let g:dracula#palette.bgdarker  = ['#000000', 234]

let g:dracula#palette.comment   = ['#6272A4',  61]
let g:dracula#palette.selection = ['#44475A', 239]
let g:dracula#palette.subtle    = ['#424450', 238]

let g:dracula#palette.blue      = ['#00AAFF', 228]
let g:dracula#palette.cyan      = ['#88DDFF', 117]
let g:dracula#palette.green     = ['#98EC65',  84]
let g:dracula#palette.orange    = ['#FFCC33', 215]
let g:dracula#palette.yellow    = ['#FFCC33', 228]
let g:dracula#palette.pink      = ['#FF66BB', 212]
let g:dracula#palette.purple    = ['#FF66BB', 141]
let g:dracula#palette.red       = ['#FF5555', 203]

"
" ANSI
"
let g:dracula#palette.color_0  = '#21222C'
let g:dracula#palette.color_1  = '#FF5555'
let g:dracula#palette.color_2  = '#50FA7B'
let g:dracula#palette.color_3  = '#F1FA8C'
let g:dracula#palette.color_4  = '#BD93F9'
let g:dracula#palette.color_5  = '#FF79C6'
let g:dracula#palette.color_6  = '#8BE9FD'
let g:dracula#palette.color_7  = '#F8F8F2'
let g:dracula#palette.color_8  = '#6272A4'
let g:dracula#palette.color_9  = '#FF6E6E'
let g:dracula#palette.color_10 = '#69FF94'
let g:dracula#palette.color_11 = '#FFFFA5'
let g:dracula#palette.color_12 = '#D6ACFF'
let g:dracula#palette.color_13 = '#FF92DF'
let g:dracula#palette.color_14 = '#A4FFFF'
let g:dracula#palette.color_15 = '#FFFFFF'

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! dracula#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'dracula'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
