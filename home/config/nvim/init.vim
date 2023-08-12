call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-commentary'
call plug#end()



"-------------------------------------------------------
"-- Main
"-------------------------------------------------------
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=100                  " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set noswapfile              " disable creating swap file
set backupdir=~/.cache/vim  " Directory to store backup files.
filetype plugin indent on   "allow auto-indenting depending on file type
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
syntax enable


"-------------------------------------------------------
"-- Shortcuts
"-------------------------------------------------------

" toggle highlight search
nnoremap <F3> :set hlsearch!<CR> 

" ESC  
inoremap <A-j> <Esc>
vnoremap <A-j> <Esc>
nnoremap <A-j> <Esc>

" C-j scroll up
inoremap <C-j> 6<C-e>
vnoremap <C-j> 6<C-e>
nnoremap <C-j> 6<C-e>

" C-k scroll down
inoremap <C-k> 6<C-y>
vnoremap <C-k> 6<C-y>
nnoremap <C-k> 6<C-y>

" Jump up 6 line
vnoremap K 6k
nnoremap K 6k

" Jump down 6 line
vnoremap J 6j
nnoremap J 6j

" Beggining of line
vnoremap H 0
nnoremap H 0

" End of line
vnoremap L $
nnoremap L $

" Insert end of line
vnoremap <A-i> A
nnoremap <A-i> A

" Comment line
inoremap <A-e> :Commentary<CR>
vnoremap <A-e> :Commentary<CR>
nnoremap <A-e> :Commentary<CR>





nnoremap <space> i
nnoremap<C-;> bdw
inoremap <C-;> <Esc>bdw
nnoremap<CR> o<Esc>
nnoremap <C-d> dd
vnoremap <C-d> <Esc>dd i
inoremap <C-d> <Esc>dd i
nnoremap <A-d> dd
vnoremap <A-d> <Esc>dd i
inoremap <A-d> <Esc>dd i
" nnoremap <C-A-j> :call AddEmptyLineBelow()<CR>

