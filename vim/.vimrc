set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manages itself
Plugin 'VundleVim/Vundle.vim'

" plugin maintained by vundle
Plugin 'sjl/badwolf'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()

" add language specific indentation rules
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
augroup cfamily
    au!
    au BufEnter,BufNewFile *.h,*.cc,*c setlocal ts=2 sw=2 sts=2 expandtab
augroup END

" highlight line and column
set cursorline
set cursorcolumn

" enable syntax processing
syntax enable
filetype on

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
inoremap jk <esc>

" enable filetype indent
filetype plugin indent on

" window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" enable syntac check
let g:syntastic_c_checkers=['gcc', 'make']
let g:syntastic_enable_c_checker=1
let g:syntastic_python_checkers=['python']
let g:syntastic_enable_python_checker=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
