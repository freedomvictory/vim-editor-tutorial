" => Chapter 1: Getting Started --------------------------------------- {{{

" Basic Python-friendly Vim configuration. Colorscheme is changed from
" 'default' to make screenshots look better in print.
" used on linux platform 

syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.

set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.

set backspace=2            " Fix backspace behavior on most terminals.

colorscheme delek         " Change a colorscheme.

set number 				  " show line number
set directory=$HOME/.vim/swap// 	"set not show swap file (if windows:  set directory = "%USERDATA%\.vim\swap//"     ) 

set undofile
if !isdirectory("$HOME/.vim/undodir")               "set enable undo Persistent revocation
    call mkdir("$HOME/.vim/undodir", "p")           "set undo file save directory
endif
set undodir="$HOME/.vim/undodir"

"if windows 
"set undofile                                                                                        "if !isdirectory("%USERPROFILE%_vim\\undodir")               "set enable undo Persistent revocation 
" 	call mkdir("$USERPROFILE$_vim\\undodir", "p")           	 "set undo file save directory                                                                  
"endif                                                                                               "set undodir="$USERPROFILE$_vim\\undodir"  

