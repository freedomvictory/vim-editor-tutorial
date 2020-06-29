### Install vim extension by *VIM-PLUG*

### Instruction: What is vim-plug 

It's a plug mannager.Its github repo is [vim-plug](https://github.com/junegumm/vim-plug)

### Intall vim-plug

Type the flowing command on your shell
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim`

If you can't handle the this command. You can just download this repo, and find the `plug.vim` file, copy it to directory `~/.vim/autoload/`



### Using vim-plug install vim extension 

Change `.vimrc` file, and add The flowing lines.
You can add `Plug '****/***/'` between the `call plug#begin()` and `call plug#end()`, the `****/***/` is the link of the vim extension.

``` vim
call plug#begin()
"The plug that you want to installed and used , the flowing is an example 
"Plug 'scrooloose/nerdtree'
call plug#end()
```

Type the command `:PlugInstall` install the vim extension 
Type the command `:PlugUpdate` update the vim extension 

### more 
Type the command `:help vim-plug` to read ***help document***.
