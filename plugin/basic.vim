syntax on


set background=dark
" my favorite themes
" colorscheme Tomorrow-Night-Bright
" colorscheme one
colorscheme gruvbox


" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

" set default encoding
set encoding=UTF-8

" show line numbers
set number
set cursorline

" set backspace key for MacOS
set backspace=2

" copy/paste for mouse selection
" set mouse=a
set mouse=

set clipboard=unnamed
" disable creating of *.swp files
set noswapfile

" tabs/spaces indent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set smarttab

" tabs opetation
nnoremap th  :tabfirst<CR>
nnoremap tn  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tj  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" switch tabs
nnoremap <C-1> 1gt
nnoremap <C-2> 2gt
nnoremap <C-3> 3gt
nnoremap <C-4> 4gt
nnoremap <C-5> 5gt
nnoremap <C-6> 6gt
nnoremap <C-7> 7gt
nnoremap <C-8> 8gt
nnoremap <C-9> 9gt

" set scape key for some keyboard without ESC key
inoremap <C-X> <Esc>

" split direction
set splitbelow
set splitright
" set termwinsize = "9x0"

" always show status bar
set laststatus=2
