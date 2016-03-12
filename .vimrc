
"indents, tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set smartindent
set cindent
set foldmethod=indent
set autowrite		" Automatically save before commands like :next and :make

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

"
"set exrc

"
set nocompatible

"
"set secure

"search
set hlsearch
set incsearch

"line numbers
set number

"
set laststatus=2

"show matching paretheses
set showmatch
set matchtime=3

"
colorscheme evening

"highlight
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE 
highlight Comment ctermfg=DarkCyan
highlight Folded cterm=italic ctermfg=DarkGrey ctermbg=Blue

"autocmd (what for?)
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"disable arrow keys
map <up>	<NOP>
map <down>	<NOP>
map <left>	<NOP>
map <right> <NOP>

imap <up>	 <NOP>
imap <down>	 <NOP>
imap <left>	 <NOP>
imap <right> <NOP>

"
map <C-c>	:noh<CR>

"inoremap {<CR> {<CR>}<Esc><S-o>
"inoremap ( ()<Esc>i
