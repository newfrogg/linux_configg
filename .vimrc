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


 :au BufNewFile,BufRead   *.sh        set filetype=csh
" :au BufNewFile,BufRead   *.perl      set filetype=csh
 :au BufNewFile,BufRead   *.src       set filetype=asm
 :au BufNewFile,BufRead   *.sv        set filetype=verilog
 :au BufNewFile,BufRead   *.v.*       set filetype=verilog
 :au BufNewFile,BufRead   *.V         set filetype=verilog
 :au BufNewFile,BufRead   *.psl       set filetype=verilog
 :au BufNewFile,BufRead   *.log       set filetype=help
 :au BufNewFile,BufRead   *.exrc      set filetype=vim
 :au BufNewFile,BufRead   *.vimrc     set filetype=vim
 :au BufNewFile,BufRead   *.vifile    set filetype=vim
 :au BufNewFile,BufRead   *.in        set filetype=cpp
 :au BufNewFile,BufRead   *.lib       set filetype=csh
 :au BufNewFile,BufRead   *.list      set filetype=csh
 :au BufNewFile,BufRead   *.cmd       set filetype=csh
 :au BufNewFile,BufRead   *.dof       set filetype=vhdl
 :au BufNewFile,BufRead   *.icl       set filetype=verilog
 :au BufNewFile,BufRead   *.tcl       set filetype=tcl
 :au BufNewFile,BufRead   *.pt        set filetype=tcl

set formatoptions=ql
set formatoptions-=cro

source ~/.vim/autoload/*.vim

augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 0 | Explore! | endif
augroup END

