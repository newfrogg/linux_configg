set number
" Global setting
set nocompatible
set hidden
set ignorecase smartcase
""set backspace=indent,eol,start
set history=10000
"set ruler
syntax on
set showcmd
set incsearch
set hlsearch
""set expandtab
set number
set showmatch
set showmode
""set linebreak
"set cursorcolumn
"set cursorline
set nowrap
set ft=verilog
set tabstop=4
set t_u7=
" -------------------------------------------------------
" Clever Tab 
" -------------------------------------------------------
function! CleverTab() 
 if strpart( getline('.'), col('.')-2, 2) =~ '[a-zA-Z0-9_]'
   return "\<C-N>"
 else 
   return "\<Tab>"
 endif
endfunction

" Turn off feature auto add comment character
" https://vi.stackexchange.com/questions/1983/how-can-i-get-vim-to-stop-putting-comments-in-front-of-new-lines
" -------------------------------------------------------
" Hotkey
" -------------------------------------------------------
inoremap <Tab> <C-R>=CleverTab() <CR>
inoremap <S-Tab> <C-P>
nnoremap <TAB> :noh <CR><ESC>
inoremap <Tab> <C-R>=CleverTab()<CR>
:map <F1> :set paste! <cr>
:map <F2> :<ESC>0i#<ESC>j
:map <F3> :set wrap! <CR>
:map <F4> :set mouse= <CR>
:map <F5> :set wrap!<bar>set wrap?<CR>
:map <F6> :set nu! <CR>
:map <F7> :<ESC>0x<ESC>j
:map <C-W><Space> :v//d<CR>
:map <C-W><BackSpace> :g//d<CR>
:map q :q <CR>
:map t :diffput <CR>
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-j> :m .-2<CR>==
"" Easy Align hotkey
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


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

source ~/.vim/autoload/autoload.vim
"" Status line
set laststatus=2
set statusline=
set statusline+=%2*
set statusline+=%{StatuslineMode()}
set statusline+=%1*
set statusline+=\ 
set statusline+=\ 
set statusline+=%f
set statusline+=\ 
set statusline+=%=
set statusline+=%m
set statusline+=%h
set statusline+=%r
set statusline+=\ 
set statusline+=%3*
set statusline+=%1*
set statusline+=\ 
set statusline+=%4*
set statusline+=%F
set statusline+=:
set statusline+=:
set statusline+=%5*
set statusline+=%l
set statusline+=\ 
set statusline+=%6*
set statusline+=%P
set statusline+=: 
set statusline+=: 
set statusline+=%1*
set statusline+=|
set statusline+=%y
hi User2 ctermbg=lightgreen ctermfg=black guibg=lightgreen guifg=black
hi User1 ctermbg=black ctermfg=white guibg=black guifg=white
hi User3 ctermbg=black ctermfg=lightblue guibg=black guifg=lightblue
hi User4 ctermbg=black ctermfg=lightgreen guibg=black guifg=lightgreen
hi User5 ctermbg=black ctermfg=magenta guibg=black guifg=magenta
hi User6 ctermbg=black ctermfg=lightyellow guibg=black guifg=lightyellow
function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction

