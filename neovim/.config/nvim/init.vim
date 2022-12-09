" Jetpack
let s:jetpackfile = stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
let s:jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if !filereadable(s:jetpackfile)
  call system(printf('curl -fsSLo %s --create-dirs %s', s:jetpackfile, s:jetpackurl))
endif

packadd vim-jetpack
call jetpack#begin()
Jetpack 'junegunn/vim-plug'
Jetpack 'itchyny/lightline.vim'
Jetpack 'catppuccin/nvim', {'as': 'catppuccin'}
Jetpack 'sheerun/vim-polyglot'
Jetpack 'tpope/vim-fugitive'
Jetpack 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Jetpack 'lambdalisue/suda.vim'
Jetpack 'ryanoasis/vim-devicons'
call jetpack#end()

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
lua << EOF
  require("catppuccin").setup({
    flavour = "macchiato",
    background = {
      dark = "macchiato",
    },
  })
  vim.cmd.colorscheme "catppuccin"
EOF
syntax on
set background=dark
set cursorline

set noshowmode

" encoding/formats
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac

" lightline
let g:lightline = {
  \ 'colorscheme': 'catppuccin',
  \ 'separator': {'left': '', 'right': ''},
  \ 'subseparator': {'left': '', 'right': ''}
  \ }

" NERDTree
let g:NERDTreeShowHidden = 1
map <C-n> :NERDTreeToggle<CR>

" suda.vim
let g:suda_smart_edit = 1
