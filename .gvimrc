version 7.3

colorscheme ir_black
syntax on

set guioptions-=m
set guioptions-=T
set guioptions-=r
set columns=132 
set lines=37
set cursorline

highlight Cursor guifg=white guibg=red
highlight Pmenu guibg=gray40
highlight PMenuSel guifg=white guibg=red

set antialias
if exists('&macatsui')
  set nomacatsui
endif

"set guifont=Monaco\ for\ Powerline:h13
set guifont=Source\ Code\ Pro\ 14

let python_highlight_all = 1

