
" Highlight search results
set hlsearch

" Command autocompletion
set wildmenu
set wildmode=longest:full,full

" LogiPat (plugin for boolean-logic syntax for pattern-matching) confuses :E option.
" This is going to prevent that behaviour.
let g:loaded_logipat = 1

" Show matching brackets when text indicator is over them
set showmatch

" Enable syntax highlighting
syntax enable

" Enable line numbers
set number

colorscheme desert
set background=dark

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Always wrap long lines:
set wrap

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent


" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" While in insert mode, 'ii' to go back to command mode
imap ii <C-[>

" Remap VIM 0 to first non-blank character
map 0 ^

" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
endfunction

