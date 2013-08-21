version 7.4

if has("win32") || has("win64")
    set guifont=Source_Code_Pro:h11:cANSI
elseif has("mac")
    if  exists('&macatsui')
        set nomacatsui
    endif
    set guifont=Source\ Code\ Pro:h11
endif

set antialias

let g:solarized_termcolors = 256
let g:solarized_contrast="normal"    "default value is normal
let g:solarized_bold=0    "default value is 1
let g:solarized_underline=0    "default value is 1
let g:solarized_italic=0    "default value is 1

syntax enable
set background=dark
colorscheme solarized
set guioptions-=T
set guioptions-=m
set guioptions-=r
set lines=40
set columns=120

hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE


