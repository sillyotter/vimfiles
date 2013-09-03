set nocompatible
filetype on
filetype off

set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle 'wesgibbs/vim-irblack'
"Bundle 'kml/vim-irblack-plus'
Bundle 'kongo2002/fsharp-vim'
Bundle 'OrangeT/vim-csharp'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
"Bundle 'Shougo/vimproc.vim'
"Bundle 'Shougo/unite.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-dispatch'
Bundle 'nosami/Omnisharp'
Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet'
Bundle 'honza/vim-snippets'
"Bundle 'klen/python-mode'
"Bundle 'python.vim'
"Bundle 'pythoncomplete'
"Bundle 'Townk/vim-autoclose'
Bundle 'jnwhiteh/vim-golang'
Bundle 'Blackrush/vim-gocode'
Bundle 'bling/vim-airline'

let g:netrw_list_hide = "\\.swp$,\\~$"
let g:netrw_hide = 1

filetype plugin indent on
set mouse=a
set mousehide
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-161e,cp1252,iso-8959-15
set autowrite
set shortmess+=filmnrxoOtT
set hidden
set spell
set backup
set backupcopy=yes
set undodir=$TEMP
set undofile
set undolevels=1000
set undoreload=10000
set showmode
set cursorline
highlight clear SignColumn
"set ruler
"set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd
set laststatus=2
"set statusline=%<%f\
"set statusline+=%w%h%m%r
"set statusline+=%{fugitive#statusline()}
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline=%<%f\
"set statusline+=\ [%{&ff}/%Y]
"set statusline+=\ [%{getcwd()}]
"set statusline+=%=%-14.(%l,%c%V%)\ %p%%
set backspace=indent,eol,start
set linespace=0
set number
set showmatch
set incsearch
set nohlsearch
set ignorecase
set infercase
set magic
set smartcase
set wildmenu
set wildignore+=*~,*.o,*.exe,*.bak,*.obj,*.a
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,[,]
set scrolljump=5
set scrolloff=3
set nowrap
set autoindent
set shiftwidth=4
set shiftround
set expandtab
set tabstop=4
set softtabstop=4

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#branch#enabled=1
"let g:airline#extensions#branch#empty_message='None'

let mapleader = ','

nnoremap Y y$
command! -bang -nargs=* -complete=file E e<bang> <args>
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang -nargs=* -complete=file Wq wq<bang> <args>
command! -bang -nargs=* -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>

cmap cwd lcd %:p:h
cmap cd. lcd %:p:h
vnoremap < <gv
vnoremap > >gv

if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
  \if &omnifunc == "" |
  \setlocal omnifunc=syntaxcomplete#Complete |
  \endif
endif

au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menu,preview,longest

map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.\.$', '\.$', '\~$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

let g:ctrlp_working_path_mode = 'ra'
nnoremap <silent> <D-t> :CtrlP<CR>
nnoremap <silent> <D-r> :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\|\~$' }

"let g:ctrlp_user_command = {
"\ 'types': {
    "\ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
    "\ 2: ['.hg', 'hg --cwd %s locate -I .'],
"\ },
"\ 'fallback': 'dir %s /-n /b /s /a-d'
"\ }

let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_max_list = 15
let g:neocomplcache_force_overwrite_completefunc = 1
"let g:neocomplcache_enable_cursor_hold_i = 1
let g:neocomplecache_enable_insert_char_pre = 1

let g:neocomplcache_dictionary_filetype_lists = {
	\ 'default' : '',
	\ 'vimshell' : $HOME.'/.vimshell_hist',
	\ }

let g:neocomplcache_keyword_patterns = {}
let g:neocomplcache_keyword_patterns._ = '\h\w*'

"imap <C-k> <Plug>(neosnippet_expand_or_jump)
"smap <C-k> <Plug>(neosnippet_expand_or_jump)

inoremap <expr><Esc> pumvisible() ? "\<C-e>\<Esc>" : "\<Esc>"
"inoremap <expr><Left> pumvisible() ? neocomplcache#close_popup() : "\<Left>"
"inoremap <expr><Right> pumvisible() ? neocomplcache#close_popup() : "\<Right>"
"inoremap <expr><Up> pumvisible() ? neocomplcache#close_popup() : "\<Up>"
"inoremap <expr><Down> pumvisible() ? neocomplcache#close_popup() : "\<Down>"
inoremap <expr><Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><Up>  pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr><C-d> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<C-d>"
inoremap <expr><C-u> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<C-u>"
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
"inoremap <expr><CR> neocomplcache#complete_common_string()
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
inoremap <expr><S-CR> pumvisible() ? (neocomplcache#smart_close_popup()."\<CR>") : "\<CR>"
inoremap <expr><CR> pumvisible() ?  neocomplcache#smart_close_popup() : "\<CR>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()

imap <expr><CR> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)" : (pumvisible() ?
	\ neocomplcache#smart_close_popup() : "\<CR>")

imap <expr><TAB> neosnippet#jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: "\<TAB>"

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

let g:neocomplcache_omni_patterns = {}
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.go = '.*'
let g:neocomplcache_omni_patterns.cs = '.*'

autocmd BufWritePre *.go :silent Fmt

let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
let g:neosnippet#enable_snipmate_compatibility = 1

if has('conceal')
    set conceallevel=2 concealcursor=i
endif

set completeopt-=preview

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

"autocmd BufReadPost * call UpdateModifiable()
