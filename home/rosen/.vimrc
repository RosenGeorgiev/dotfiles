call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'dense-analysis/ale'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'aklt/plantuml-syntax'

Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'

call plug#end()

syntax on
set encoding=utf-8
set number

set mouse=n

set ff=unix
set expandtab
set tabstop=4
set shiftwidth=4
"set spell spelllang=en_us
set hlsearch
set cursorline
set colorcolumn=100
"set background=dark"
"colorscheme solarized"
set directory=$HOME/.vim/swapfiles//
autocmd BufWritePre * %s/\s\+$//e

map <C-p> :Files<CR>

map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k

map <C-PageUp> :tabp<CR>
map <C-PageDown> :tabn<CR>

map <C-f> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") ==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline_them='molokai'

map <C-o> :Rg<CR>
command GBlame Git blame
