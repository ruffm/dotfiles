""" VUNDLE STUFF """

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
call vundle#end()            " required
filetype plugin indent on    " required

""" END VUNDLE STUFF """

""" SYNTASTIC STUFF """
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""" END SYNTASTIC STUFF """

""" AIRLINE THEME STUFF """
let g:airline_theme='violet'
""" END AIRLINE THEME STUFF """

set number
set backspace=indent,eol,start
set incsearch
