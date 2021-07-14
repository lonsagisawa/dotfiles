" vim-plug
" https://github.com/junegunn/vim-plug 
call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/vim-plug'
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'lambdalisue/suda.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" True Color
if exists('+termguicolors')
	set termguicolors
endif

" Line number
set number relativenumber

" Better search
set incsearch
set ignorecase
set smartcase

" Logical line move
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Clipboard
set clipboard+=unnamedplus

" Mouse support
set mouse=a

" Colorscheme
syntax on
colorscheme dracula
set background=dark
set cursorline

set noshowmode

" encoding/formats
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac

" lightline
let g:lightline = {
  \ 'colorscheme': 'nord',
  \ 'separator': {'left': '', 'right': ''},
  \ 'subseparator': {'left': '', 'right': ''}
  \ }

" NERDTree
let g:NERDTreeShowHidden = 1
map <C-n> :NERDTreeToggle<CR>

" suda.vim
let g:suda_smart_edit = 1
