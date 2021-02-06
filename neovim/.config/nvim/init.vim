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

" lightline
Plugin 'itchyny/lightline.vim'

" Colorscheme
Plugin 'arcticicestudio/nord-vim'

" vim-polyglot
Plugin 'sheerun/vim-polyglot'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" NERDTree
Plugin 'preservim/nerdtree'

" suda.vim
Plugin 'lambdalisue/suda.vim'

" devicons
Plugin 'ryanoasis/vim-devicons'

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
colorscheme nord
set background=dark

" lightline
let g:lightline = {
  \ 'colorscheme': 'nord',
  \ }

" NERDTree
let g:NERDTreeShowHidden = 1
map <C-n> :NERDTreeToggle<CR>

" suda.vim
let g:suda_smart_edit = 1
