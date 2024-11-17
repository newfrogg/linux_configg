set number
" Global setting
set nocompatible
set hidden
set ignorecase smartcase
""set backspace=indent,eol,start
set history=10000
"set ruler
set showcmd
set incsearch
set hlsearch
""set expandtab
set number
set showmatch
set showmode
""set linebreak
set cursorcolumn
set cursorline
set nowrap
set ft=verilog
set tabstop=4
set t_u7=
" Turn off feature auto add comment character
" https://vi.stackexchange.com/questions/1983/how-can-i-get-vim-to-stop-putting-comments-in-front-of-new-lines

set formatoptions=ql
set formatoptions-=cro

source ~/.vim/autoload/*.vim

augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 0 | Explore! | endif
augroup END

