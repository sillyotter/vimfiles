version 7.3
runtime bundle/vim-pathogen/autoload/pathogen.vim

let g:netrw_list_hide = "\\.swp$,\\~$"
let g:netrw_hide = 1
syntax on

set undodir=~/.vim/.undo/
set nocompatible
set encoding=utf-8
set foldlevelstart=99
set background=dark
set number
set hidden
set autoread
set backup
set backspace=indent,eol,start
set incsearch
set ignorecase
set infercase
set laststatus=2
set magic
set mouse=a
set mousehide
set mousemodel=popup_setpos
set ruler
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set smartindent
set smarttab
set tabstop=4
set nowrap
set wildignore=*.o,*.obj,*.bak,*.exe,*~
set backupcopy=yes
set completeopt=longest,menuone,menu

map <leader>n :NERDTreeToggle<CR>

let g:neocomplcache_enable_smart_case = 1 
let g:neocomplcache_enable_auto_select = 0 
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*' 

nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

inoremap <expr><C-g> neocomplcache#undo_completion() 
inoremap <expr><C-l> neocomplcache#complete_common_string() 

imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>" 
inoremap <expr><C-h> neocomplcache#smart_close_popup() . "\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup() . "\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

nnoremap <C-Tab> <ESC>:bn<CR>
inoremap <C-Tab> <ESC>:bn<CR>

nmap <leader>a <Esc>:Ack!

let g:Powerline_symbols='compatible'

let g:ctrlp_working_path_mode=0
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_cursor_hold_i_time=1
let g:neocomplcache_auto_completion_start_length=3

call pathogen#infect()
call pathogen#helptags()

filetype on
filetype plugin indent on

au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType xml setlocal omnifunc=xmlcomplete#Complete
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType php setlocal omnifunc=phpcomplete#CompletePHP
au FileType ruby setlocal omnifunc=rubycomplete#Complete 
au FileType c setlocal omnifunc=ccomplete#Complete

au FileType cs compiler msbuild
au FileType cs let g:ctags_command = "ctags -R --exclude=\"bin\" --exclude=\"obj\" --extra=+fq --fields=+ianmzS --c\\#-kinds=cimnp ."
au FileType snippet iunmap <expr><TAB>

au BufNewFile,BufRead *.xaml set filetype=xml
au BufNewFile,BufRead *.proj set filetype=xml 
au BufNewFile,BufRead *.proj compiler msbuild

au WinLeave * setlocal nocursorline
au WinEnter * setlocal cursorline

fun! OpenQFWindowIfErrorsPresent()
	let qflist = getqflist()
	if (len(qflist) > 0)
		copen
	else
		cclose
	endif
endfunction

au QuickFixCmdPost make call OpenQFWindowIfErrorsPresent()
au QuickFixCmdPost vimgrep call OpenQFWindowIfErrorsPresent()

function! UpdateModifiable()
  if !exists("b:setmodifiable")
    let b:setmodifiable = 0
  endif
  if &readonly
    if &modifiable
      setlocal nomodifiable
      let b:setmodifiable = 1
    endif
  else
    if b:setmodifiable
      setlocal modifiable
    endif
  endif
endfunction

autocmd BufReadPost * call UpdateModifiable()

