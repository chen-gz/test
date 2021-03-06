" plugin {{{
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'ycm-core/YouCompleteMe'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
"Plug 'Raimondi/delimitMate'
Plug 'dense-analysis/ale'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'Yggdroot/indentLine'
"Plug 'SirVer/ultisnips'
Plug 'sheerun/vim-polyglot'
" color scheme
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'tomasr/molokai'
"Plug 'chriskempson/base16-vim'
"Plug 'gryf/wombat256grf'
call plug#end()
" }}}

" plugins configuration{{{
" ycm
  let g:ycm_auto_trigger = 0
  set splitbelow
" nerdcommenter
  let g:NERDAltDelims_c = 1
" nerdtree
  autocmd vimenter * NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"}}}

" basic setting{{{

syntax on
autocmd FileType vim setlocal foldmethod=marker " folder for vimrc
set nocompatible
set wildmenu
set wildmode=longest:full,full
set mouse=a
set expandtab "convert tabs to spaces
set shiftwidth=2
set softtabstop=2
set ignorecase

" view 
set wrap
set linebreak
set display+=lastline

set hlsearch
set number
set cursorline
hi CursorLine cterm=NONE ctermbg=NONE  ctermfg=NONE guibg=NONE guifg=NONE

colorscheme molokai
"colorscheme wombat256grf
"colorscheme medic_chalk
"set background=dark

set list

set listchars=tab:>-
"set listchars=tab:>-,space:·
"set syntax=whitespace

" vim recover settings
set nobackup
set noswapfile
set history=1024
"}}}

" editor {{{
set autochdir
set backspace=indent,eol,start
set clipboard=unnamedplus
" }}}

" keymap {{{
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
map <BS> <plug>NERDCommenterToggle
nnoremap f :Autoformat<CR>
set winaltkeys=no
"}}}

" Lang & Encoding {{{
set nobomb
"set encoding=cp437
set encoding=utf-8
"set fileencoding=latin1
set fileformat=unix
let $LANG = 'en_US.UTF-8'
" }}}

" gvim {{{

set guioptions-=e
" set nolist

"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"set cursorline
"set hlsearch
"set number
"set lines=35 columns=140
"set splitbelow
"set splitright
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" set guifont=Inconsolata:h12:cANSI
set guifont=Source\ Code\ Pro\ 15
"set guifont=Courier\ New:h12:cANSI
"set guifont=Courier\ New:h12:cANSI
" }}}

" ale {{{
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let b:ale_linters = ['clangtidy','flake8']
"}}}

