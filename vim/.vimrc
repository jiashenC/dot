set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manages itself
Plugin 'VundleVim/Vundle.vim'

" theme 
Plugin 'dracula/vim', { 'name': 'dracula' }

" git
Plugin 'airblade/vim-gitgutter'

" auto complete
Plugin 'Valloric/YouCompleteMe'

" indentation
Plugin 'Yggdroot/indentLine'

" google formatter
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'

" flag controller
Plugin 'google/vim-glaive'

" status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" asynchronous syntax checking
Plugin 'dense-analysis/ale'

" commenting tool
Plugin 'tpope/vim-commentary'

call vundle#end()

" git gutter priority
let g:gitgutter_sign_priority=9

" ale syntax checking
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_save = 1
let g:ale_sign_priority=30

" identation
let g:indentLine_leadingSpaceEnabled = 1

" git-gutter
cmap gge GitGutterEnable
cmap ggd GitGutterDisable

" google code formatter
cmap fc FormatCode

" add language specific indentation rules
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
augroup cfamily
    au!
    au BufEnter,BufNewFile *.h,*.cc,*c,*cpp,*hpp setlocal ts=2 sw=2 sts=2 expandtab
augroup END
augroup texfamily
    au!
    au BufEnter,BufNewFile *.tex,*.sty setlocal ts=2 sw=2 sts=2 expandtab
augroup END
augroup verilogfamily
    au!
    au BufEnter,BufNewFile *.v setlocal ts=2 sw=2 sts=2 expandtab
augroup END

" set terminal color
syntax on
syntax enable
colorscheme dracula

" hack to use vim and vim + tmux
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" highlight line and column
set cursorline
set cursorcolumn

" enable syntax processing
filetype on

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
nmap j gj
nmap k gk

" move to beginning/end of line
nmap B ^
nmap E $

" highlight last inserted text
nmap gV `[v`]

" change leader key to space
let mapleader=" "

" jk is escape
imap jk <esc>

" enable filetype indent
filetype plugin indent on

" window movement
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" cursor at middle
set so=999

" status bar
set laststatus=2

" redraw
cmap redr redraw!

" set python interpreter
let g:ycm_server_python_interpreter = "/Users/jiashenc/Env/py3/bin/python"
nnoremap ,gtd :YcmCompleter GoToDefinition<CR>
nnoremap ,gtr :YcmCompleter GoToReferences<CR>
