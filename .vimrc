
" FIXME smartindent does not work
" for K&R style indented shell scripts

" FIXME Prevent escape from moving the cursor
" one character to the left

"
set nocompatible

" Indents, tabs
set tabstop=4
set shiftwidth=4
"set softtabstop=4
set smarttab
set autoindent
set smartindent
set cindent
set foldmethod=indent
set autowrite		" Automatically save before commands like :next and :make

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

"
"set exrc

"
"set secure

" Search
set hlsearch
set incsearch

" Line numbers
set number

"
set laststatus=2

" Show matching paretheses
set showmatch
set matchtime=3

"
"colorscheme evening

" Highlight
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE 
highlight Comment ctermfg=LightBlue
highlight Folded cterm=italic ctermfg=DarkGrey ctermbg=DarkBlue
highlight Visual ctermbg=DarkBlue

" Save folds views
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Disable arrow keys
map <up>	<NOP>
map <down>	<NOP>
map <left>	<NOP>
map <right> <NOP>

" Reset search highlight on Ctrl+C
map <C-c>	<Esc>:noh<CR>

" Autocomplete matching curly brace 
inoremap {<CR> {<CR>}<Esc>ko

"inoremap ( ()<Esc>i

" q: sucks
nmap q: :q

" Force usual backspace behaviour
set backspace=indent,eol,start

" Show line and column number of the cursor position 
set ruler

" pathogen
execute pathogen#infect()

" Enable syntax highlight
syntax enable

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

