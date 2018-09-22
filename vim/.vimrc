set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manages itself
Plugin 'VundleVim/Vundle.vim'

" plugin maintained by vundle
Plugin 'sjl/badwolf'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" highlight line and column
set cursorline
set cursorcolumn

" enable syntac processing
syntax enable

" color
colorscheme badwolf

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
noremap jk <esc>
