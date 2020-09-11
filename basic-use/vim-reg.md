# VIM REGISTOR


## Instruction 

  On vim, when copy or paste text, the text will save the `vim-register`. Vim support many kinds of register. For example , some identifier like `a`, `b`, ..etc `0`, `1`, `2`, `3` ..etc identification register. And there are other readonly register. such as `%`(*save the current file name*), `.`(*the text inserted recently*), `:` (*the command ran recently*) 


## How to use it 

1. Access registe        
    - use `"[reg-identifier]` *example:* `"a`

2. copy data to reg 
    - use `[reg-identifier]y[range]` *example:* `"ayy`
`
3. paste
    - use `[reg-identifier]p` *example:* `ap`
4. print the reg contents 

    - use `:reg [reg-identifier]`
    - use `:reg`


