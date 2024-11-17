"" Autoload Header for csh file and chmod +x after saving
augroup csh_autoload
	autocmd!
	autocmd BufNewFile *.csh exec "normal! i#!/bin/csh -fx\<Esc>o\<Esc>o" | autocmd BufWritePost *csh silent !chmod +x %	

"" Autoload Header for perl file and chmod +x after saving
augroup perl_autoload
	autocmd!
	autocmd BufNewFile *.pl exec "normal! i#!/usr/bin/perl\<Esc>ouse strict;\<Esc>ouse warnings;\<Esc>o\<Esc>o " | autocmd BufWritePost *pl silent !chmod +x %	

"" Autoload nerdTree
"" augroup ProjectDrawer
""     autocmd!
""     autocmd VimEnter * if argc() == 0 | Explore! | endif
"" augroup END




