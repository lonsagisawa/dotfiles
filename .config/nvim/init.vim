" dein.vim
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('tomasr/molokai')
  call dein#add('dracula/vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set wrap

set hlsearch
set ignorecase
set smartcase
set incsearch

set autoindent
set ruler
set relativenumber
set cursorline
set list
set wildmenu
set showcmd
set showmatch

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis

set clipboard=unnamedplus

let g:airline_powerline_fonts = 1
