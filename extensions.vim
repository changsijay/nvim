" https://github.com/flazz/vim-colorschemes
" one colorscheme pack to rule them all!
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'

" " https://github.com/itchyny/lightline.vim
" " A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" https://github.com/sheerun/vim-polyglot
" A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'

" " https://github.com/scrooloose/nerdtree
" " A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree'
  let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
  map <silent> <C-b> :NERDTreeToggle<CR>
  let NERDTreeQuitOnOpen = 1
  let NERDTreeShowBookmarks = 0
  " https://stackoverflow.com/questions/2066590/automatically-quit-vim-if-nerdtree-is-last-and-only-buffer<Paste>
  " Automatically quit vim if NERDTree is last and only buffer
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" https://github.com/ryanoasis/vim-devicons
" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more
Plug 'ryanoasis/vim-devicons'

" https://github.com/lilydjwg/colorizer
" A Vim plugin to colorize all text in the form #rrggbb or #rgb.
Plug 'lilydjwg/colorizer'

" https://github.com/tpope/vim-surround
" provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'

" https://github.com/kien/rainbow_parentheses.vim
" Better Rainbow Parentheses
Plug 'kien/rainbow_parentheses.vim'
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces

" https://github.com/editorconfig/editorconfig-vim
" EditorConfig plugin
Plug 'editorconfig/editorconfig-vim'

" https://github.com/neoclide/coc.nvim
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code
" Install yarn from https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
set updatetime=300
  " set signcolumn=yes
  " plugins:
  " :CocInstall coc-python  # pip install pynvim
  " :CocInstall coc-emmet
  " :CocInstall coc-prettier
  " :CocInstall coc-eslint
  " :CocInstall coc-css
  " :CocInstall coc-snippets
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" https://github.com/mhinz/vim-startify
" The fancy start screen for Vim.
Plug 'mhinz/vim-startify'
  if has('nvim')
    autocmd TabNewEntered * Startify
  else
    autocmd VimEnter * let t:startify_new_tab = 1
    autocmd BufEnter *
          \ if !exists('t:startify_new_tab') && empty(expand('%')) |
          \   let t:startify_new_tab = 1 |
          \   Startify |
          \ endif
  endif

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ======================== Auto Format ========================
" Prettier
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']}
"   let g:prettier#autoformat = 0
"   let g:prettier#config#print_width = 120
"   let g:prettier#config#single_quote = 'true'

" Plug 'Chiel92/vim-autoformat'

" https://github.com/townk/vim-autoclose
" enable an auto-close chars feature for you. For instance if you type an '(', ``autoclose`` will automatically insert a ')'
" Plug 'Townk/vim-autoclose'

" https://github.com/mattn/emmet-vim
" expanding abbreviations similar to emmet
" Plug 'mattn/emmet-vim'

" https://github.com/mileszs/ack.vim
" need to install `ack` or `ag`:
" apt install ack/brew install ack
" scoop install ag
" Plug 'mileszs/ack.vim'
" if executable('ag')
" "  let g:ackprg = 'ag --vimgrep'
" endif

" markdown
Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'

