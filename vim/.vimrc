call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'ycm-core/YouCompleteMe'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-latex/vim-latex'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'nvie/vim-flake8'
Plug 'Raimondi/delimitMate'
Plug 'dense-analysis/ale'
call plug#end()



nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
map <BS> <plug>NERDCommenterToggle
nnoremap <C-j> <C-w><C-j>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nmap s :w<CR>
nmap q :q<CR>
nmap f :Autoformat<CR>

colorscheme onedark
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

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf= 'zathura'
"
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let b:ale_linters = ['clangcheck','flake8']

