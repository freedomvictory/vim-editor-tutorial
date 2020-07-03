


" this is a minimal vimrc file 


syntax on
filetype plugin indent on

set nocompatible
set encoding=utf-8

set autoindent 
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=2

colorscheme delek

set number "show line number

set directory=$HOME/.vim/swap//     "set not show swap file

set undofile
if !isdirectory("$HOME/.vim/undodir")
    call mkdir ("$HOME/.vim/undodir","p")
endif
set undodir=$HOME/.vim/undodir



"close buffer and don't close window

command! Bd :bp | :sp | :bn | :bd

"packloadall "load all pulugins
silent! helptags ALL "load help doucument for loading plugins

let g:plug_timeout = 300 " add timeout for YCM

call plug#begin()

Plug 'scrooloose/nerdtree',{ 'on': 'NERDTreeToggle' } "when handle command :NERDTreeToggle, load NERDTree
Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'Valloric/YouCompleteMe', { 'do' : './install.py --clangg-completer --go-completer '}
Plug 'sjl/gundo.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'flazz/vim-colorschemes'

call plug#end()

"set wildmenu
set wildmenu                "tab auto complete
set wildmode=list:longest,full "complete longest string, then open wildmenu

"set nerdtree
let NERDTreeShowBookmarks = 1 "show book mark when open NERDTree
autocmd VimEnter * NERDTree "open NERDTree when open vim
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") &&
    \ b:NERDTree.isTabTree()) | q | endif

"set NERDTree not replace Netrw
let NERDTreeHijackNetrw = 0

"set relative line number 
set relativenumber

"set <up> <down> <left> <right> nomap
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"set mapleader
let mapleader = "\<space>"
 
"save file
noremap <leader>w :w<cr>                         
"start NERDTree
noremap <leader>n :NERDTreeToggle<cr>


"jump to other window
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

"YCM SET

noremap <leader>] :YcmCompleter GoTo<cr>

"Ctags 

set tags=tags; "find tags on root directory and sub directory 

"auto handle      ctags -R command
autocmd BufWritePost *.c *.cpp *.h *.py *.go silent! !ctags -R &



"show status bar
set laststatus=2

"load powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup 


"colorschemes
colorscheme disciple
