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

syntax enable
set guioptions-=T
set guioptions-=m
set guioptions-=r
set lines=40
set columns=120



