" enter the current millenium
set nocompatible


" provide tab-completion
set path+=**


" colors are important
syntax enable


" indentation
filetype plugin indent on
set smartindent
set shiftwidth=4


" highlight the current line
set cursorline


" mini status bar to start with
set ruler


" explore fuzzy find
set wildmenu


" handle tabs
set softtabstop=4
set expandtab
	

" for now linenumbers are cool
set relativenumber


" promote good habbits
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>


" some fancy movements
nnoremap _ :m -2<cr>
nnoremap - :m +1<cr>
