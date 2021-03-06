let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open=1 

syntax on

"colorscheme PaperColor

set ruler
set showcmd
set showmode
set autoindent

" Show the match ( { [
set showmatch

" Highlight the searching pattern.
set hlsearch

" Always use tabstop 8 please.
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set nu
"
" Allow mouse in all modes
" So when use vi inside tmux, mouse scrolling will work.
" set mouse=a

" No wrap search, stop seaching at the end of file.
" set nowrapscan

" Remember the last position in a new open
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

map \p i(<Esc>Ea)<Esc>
map \c i{<Esc>ea}<Esc>
map \[ i[<Esc>ea]<Esc>
map \t :Tlist<Enter>
map \v :vnew 
map \n :set nu<Enter>
map \m :set nonu<Enter>
map \/ i/**/<Esc>
map \q :q<Enter>
map qq :q<Enter>
