" Be Improved
set nocompatible
" Required for Vundle
filetype off

" 
" Vundle
"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Colorscheme
Plugin 'joshdick/onedark.vim'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" NERDTree
Plugin 'preservim/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"
" Vundle Section End
"

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

" Colorscheme
syntax on
colorscheme onedark
set background=dark

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

" NERDTree
let g:NERDTreeShowHidden = 1
