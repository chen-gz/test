call plug#begin('~/.config/nvim/plugged')
  Plug 'ycm-core/YouCompleteMe'
  Plug 'vim-airline/vim-airline'
  

  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'Yggdroot/indentLine'
  Plug 'sheerun/vim-polyglot'
  Plug 'puremourning/vimspector'
  Plug 'airblade/vim-gitgutter'
  " Plug 'Chiel92/vim-autoformat'
  Plug 'sbdchd/neoformat'
  " Plug 'dense-analysis/ale'

  Plug 'tomasr/molokai'             "colorscheme
  Plug 'morhetz/gruvbox'            "colorscheme
  " Plug 'sickill/vim-monokai'      "colorscheme
  " Plug 'chriskempson/base16-vim'  "colorscheme
  " Plug 'gryf/wombat256grf'        "colorscheme
  Plug 'NLKNguyen/papercolor-theme' "colorscheme

  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Plug 'Shougo/deoplete-clangx'
call plug#end()
let g:deoplete#enable_at_startup = 1
let g:NERDAltDelims_c = 1
let g:NERDSpaceDelims = 1
" map gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let b:ale_linters = ['clangcheck', 'pylint']
let g:ycm_clangd_binary_path = '/bin/clangd'
set splitbelow
set splitright
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

syntax on
" set autochdir
set clipboard=unnamedplus
set number
set cursorline
set ignorecase
set nowrap
set list
set listchars=tab:>-
set mouse=a
set expandtab
set shiftwidth=4
set tabstop=4
set foldmethod=indent
set scroll


" colorscheme molokai
" colorscheme wombat256grf
" colorscheme medic_chalk
colorscheme gruvbox
set background=dark
" colorscheme PaperColor
set guifont=Source\ Code\ Pro:h12
" let g:Guifont="DejaVu Sans Mono for Powerline:h20"

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
map <C-s> :w<CR>
map q :q<CR>
map <BS> <plug>NERDCommenterToggle
" nnoremap f :Autoformat<CR>


