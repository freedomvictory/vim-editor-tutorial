syntax on

filetype plugin indent on

set nocompatible
set encoding=utf-8

set autoindent 
set expandtab 
set tabstop=4
set shiftwidth=4
set backspace=2

set termguicolors

set number




set directory=%USERDATA%\.vim\swap//



silent! helptags ALL "load help document for loading plugins 

call plug#begin() 

Plug 'scrooloose/nerdtree',{ 'on': 'NERDTreeToggle'}
Plug 'toppe/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'sjl/gundo.vim'
Plug 'vim-scripts/ScrollColors'
"Plug 'flazz/vim-colorschems'
Plug 'tpope/vim-unimpaired'
Plug 'ryanoasis/vim-devicons'
Plug 'fatih/vim-go',{'do': ':GoUpdateBinaries'}
"Plug 'yegappan/taglist'
Plug 'tmsvg/pear-tree'
Plug 'eshion/vim-sync'
Plug 'skywind3000/asyncrun.vim'
Plug 'Valloric/YouCompleteMe', {'do' : './install.py --clangg-completer --go-completer '}




call plug#end() 

set wildmenu 
set wildmode=list:longest,full 

"set nerdtree 

let NERDTreeShowBookmarks = 1
autocmd VimEnter * NERDTree "open NERDTree when open vim 
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") &&
  \b:NERDTree.isTabTree()) | q | endif 


"set NERDTree not replace Netrw 
let NERDTreeHijackNetrw = 0

"set relative number 
set relativenumber 

"set <Up,down,left,right> nomap 
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"set mapleader 
let mapleader = "\<space>"

"save file 
noremap <leader>w :w<cr> 


colorscheme solarized8_light 

"show status bar 
set laststatus=2

"load powerline 

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup 


