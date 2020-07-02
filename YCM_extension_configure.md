# YouCompleteMe Extension 


## Instruction 
`YouCompleteMe` is an extension using complete code  



## How to install it and configure it 

For linux user 

1. Install `cmake` and `llvm` 

    - `sudo pacman -S cmake llvm` *(arch)*
    - `sudo apt-get install cmake llvm` *(debian)*

2. Add your `vimrc` the following lines 

    ```vim
    let g:plug_timeout = 300
    Plug 'Valloric/YouCompleteMe', {'do':'./install.py --all' }
    ```
    If you have not install `vim-plug`, please refer to [`vim-plug`](./install_vim_extension.md)

    The above command support all programming language auto complete, if you want to just support one programming language. You can type the floowing words replase `./install.py`

    - go : `./install.py --go-completer`
        
    - c/c++ : `./install.py --clangd-completer`
    - java : `./install.py --java-completer`
    - js : `./install.py --ts-completer`

3. Save `vimrc` and load it 

    `:w`

    `:source $MYVIMRC | PlugInstall`  

## More 

**Refer to** [*github.ycm*](https://github.com/ycm-core/YouCompleteMe)