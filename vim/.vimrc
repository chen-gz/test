call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'ycm-core/YouCompleteMe'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'SirVer/ultisnips'
call plug#end()


set wildmenu
set wildmode=longest:full,full
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
map <BS> <plug>NERDCommenterToggle
map <C-Tab> :tabnext<CR>
" map <C-s> :w<CR>

nmap q :q<CR>
nmap f :Autoformat<CR>
nmap a A

colorscheme gruvbox
set background=dark
" let g:gruvbox_contrast_dark = 'soft'
set number
set spelllang=en_us
set clipboard=unnamedplus
syntax on
set columns=80
set hlsearch

set wrap
set mouse=a

let g:NERDSpaceDelims=1
let g:NERDDefaultAlign = 'left'

set completeopt-=preview
set display+=lastline
set linebreak
" let g:indentLine_conceallevel = 2
" set conceallevel=1
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set shiftwidth=4
set tabstop=4
set foldmethod=indent
" map <space> za
set nofoldenable


let delimitMate_expand_cr = 1
set list
set listchars=tab:>-,space:·
set t_RV=
let skip_defaults_vim=1
set viminfo=""

let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let b:ale_linters = ['clangcheck','flake8','clangtidy']

