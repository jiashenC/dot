set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manages itself
Plugin 'VundleVim/Vundle.vim'

" plugin maintained by vundle
Plugin 'sjl/badwolf'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'itchyny/lightline.vim'
Plugin 'Valloric/YouCompleteMe'

" highlight line and column
set cursorline
set cursorcolumn

" enable syntac processing
syntax enable

" color
colorscheme badwolf

" set tab to be space
set expandtab

" number of space count for tab
set tabstop=4

" number of space count for tab during editing
set softtabstop=4

" show line number
set number

" show command in button bar
set showcmd

" let backspace work as normal
set backspace=indent,eol,start

" set specifc indent for different file types
filetype indent on

" autocomplete for command 
set wildmenu

" highlight matching for [{()}]
set showmatch

" redraw the screen only if we need to
set lazyredraw

" search as characters are entered and highlight matches
set incsearch
set hlsearch

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

" change leader key to space
let mapleader=" "

" jk is escape
inoremap jk <esc>
