let g:snipMate = { 'snippet_version' : 1 }

" return to last edit postion when opening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

color torte
syntax enable

filetype plugin on
filetype indent on

" show line numbers
set number
set relativenumber

" blink cursor instead of dinging
set visualbell

set smarttab
set ai "Auto indent
set si "Smart indent
set wrap " word wrap

set tabstop=4
set shiftwidth=4

" Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" allow hiden buffers
" set hidden

" Status Bar
set laststatus=2

" Command bar height
set cmdheight=1

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" last line
set showmode
set showcmd

" Color Scheme
set t_Co=256
set background=dark

" Wild Menu Config
set wildmenu
set wildmode=list:longest,full

set mouse=a "allow mouse usage
set ruler "show cursor position
set magic "regular expressions

" highlight search results
set hlsearch

" Visual Mode Config
"  ---------------
"
"  pressing * searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


