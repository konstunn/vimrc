
set tabstop=4
set shiftwidth=4
set nowrap
set autoindent

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

set foldmethod=indent

set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set showmatch		" Show matching brackets.

