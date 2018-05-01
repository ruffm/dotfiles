set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'flazz/vim-colorschemes'

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable       " enable syntax highlight
colorscheme peaksea         " set colorscheme
set background=dark
set encoding=utf-8  " turn on encoding
set tabstop=8       " tabs = 4 chars
set softtabstop=4
set expandtab       " spaces not tabs
set shiftwidth=4    " indent = a tab
set number          " show line numbers
set showcmd         " show the command
set showmatch       " show matches
set incsearch       " incremental search
set hlsearch        " highlight searches
set ignorecase      " ignore case when searching
" set ruler           " turn ruler on
set backspace=indent,eol,start " delete to beginning of line
set ffs=unix,mac,dos " set default file type
cmap w!! w !sudo tee > /dev/null % " for sudo only files

set laststatus=2 	" for lightline
set noshowmode 		" lightline
if !has('gui_running') " lightline
  set t_Co=256
endif
