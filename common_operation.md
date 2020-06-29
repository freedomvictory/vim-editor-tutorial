## common mode 

### basic move 

| key           | move direction
| ------------- |:-------------:|
| h             | left          |
| j             | down          |
| k             | up            |
| l             | right         |

you can type `5j`, it would move your cursor down 5 units,   it is equivalent to type `j` 5 times.

| key           | move result
| ------------- |:------------------------------------:|
| w             | next word(narrow sense) head         | 
| e             | current(narrow sense) word end       |
| W             | next word(generalized sense) head    |
| E             | recent word(generalized sense) end   |
| b             | previous word(narrow sense) head     |
| B             | previous word(generalized sense) head|

you also can try to type `5w`, `5e` ...etc, observed the positon of cursor moving 

| key           | behavior     
| ------------- |:----------------------:|
| {             | backward a paragraphy  |
| }             | forward a paragraphy   |

### basic edit  

- `dw` : delete the charactors from current cursor to a word(narrow sense) end 
- `d3e`: ~~~~~~~~~~~                               to three words end 
- `db` : ~~~~~~~~~~~                               to a word begin 
- `d4l`: delete 4 character from current cursor  
- `dW` : delete the charactors from current cursor to a word(generalized sense) end
- `dd` : delete one line 

### edit and covert common mode to insert mode `c*`

| key           | behavior     
| ------------- |:--------------------------------------:|
| cw            | like `dw`, and convert to insert mode  |
| c3e           | like `d3e`,  ~~~~~~~~~~~~~~~~          | 
| cb            | like `db`,   ~~~~~~~~~~~~~~~~          | 
| c4l           | like `d4l`,  ~~~~~~~~~~~~~~~~          | 
| cc            | like `dd`,   ~~~~~~~~~~~~~~~~          |

### undo and repeat 

- `u`        :   undo
- `ctrl + r` :   repeat

## view help documents 
- `:help cc `
- `:help dd `
- `:help search`

