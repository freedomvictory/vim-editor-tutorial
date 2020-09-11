# POWERLINE


## Instrction 

Poweline is a status Bar using for vim 

## Install and configure it 

1. run the flowing command install poweline

```
python3 -m pip install powerline-status 
```


2. configure vimrc 
```
"show status bar
set laststatus=2

"load powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
```