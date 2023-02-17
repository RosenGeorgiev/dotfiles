" Install plugins
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
Plug 'chrisbra/unicode.vim'

Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/local_vimrc'

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()

" Configure ALE
" let g:ale_deoplete_integration = 1
" set omnifunc=ale#completion#OmniFunc

" Configure Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1
inoremap <expr> <C-n>  deoplete#manual_complete()

" Configure NERDTree
autocmd bufenter * if (winnr("$") ==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Configure local_vimrc
call lh#local_vimrc#munge('whitelist', $HOME.'/devel/')

" Remove trailing lines on save
autocmd BufWritePre * %s/\s\+$//e

" Command aliases
command GBlame Git blame

" Shortcuts
map <C-o> :Rg<CR>
map <C-p> :Files<CR>
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-PageUp> :tabp<CR>
map <C-PageDown> :tabn<CR>
map <C-f> :NERDTreeToggle<CR>
map <C-F9> :ALEGoToDefinition<CR>
map <C-F10> :ALEFindReferences<CR>
map <C-F11> :ALEHover<CR>
map <C-F12> :ALESymbolSearch

" Configure general behaviour
syntax on

set encoding=utf-8
set number

set mouse=n

set ff=unix
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set cursorline
set colorcolumn=100

set directory=$HOME/.vim/swapfiles//

"set background=dark"
"colorscheme solarized"
let g:airline_them='molokai'

" Enable spell checking
"set spell spelllang=en_us
