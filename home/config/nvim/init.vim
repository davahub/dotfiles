
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-commentary'
    Plug 'folke/tokyonight.nvim'
    Plug 'altercation/vim-colors-solarized'
call plug#end()


"-------------------------------------------------------
"-- Theme
"-------------------------------------------------------
colorscheme tokyonight
" let g:tokyonight_style = 'storm'
let g:tokyonight_style = 'night'
" let g:tokyonight_style = 'day'
" let g:tokyonight_style = 'moon'
let g:tokyonight_sidebars = [ 'quickfix', '__vista__', 'terminal' ]


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
" turn off auto comment after o
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal formatoptions-=ro
augroup END


"-------------------------------------------------------
"-- Neovide
"-------------------------------------------------------
let g:neovide_refresh_rate = 60



"-------------------------------------------------------
"-- Shortcuts
"-------------------------------------------------------

" -- ACTION --

" ctrl+s to save
inoremap <C-s> <Esc>:w<CR>i
vnoremap <C-s> :w<CR>
nnoremap <C-s> :w<CR>



" toggle highlight search
nnoremap <F3> :set hlsearch!<CR>

" ESC  
inoremap <A-j> <Esc>
vnoremap <A-j> <Esc>
nnoremap <A-j> <Esc>

" Comment line
inoremap <A-e> <Esc>:Commentary<CR>i
vnoremap <A-e> :Commentary<CR>
nnoremap <A-e> :Commentary<CR>
 
" duplicate lines
inoremap <C-A-d> <Esc>:t.<CR>i
vnoremap <C-A-d> :t.<CR>
nnoremap <C-A-d> :t.<CR>

inoremap <A-d> <Esc>:t.<CR>i
vnoremap <A-d> :t.<CR>
nnoremap <A-d> :t.<CR>

" add 6 empty lines below
function AddEmptyLineBelow()
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
endfunction
" nnoremap <C-A-j> :call AddEmptyLineBelow()<CR>

" copy and paste from system clipboard
vnoremap <C-c> "*y
vnoremap <C-x> "*c
vnoremap <C-v> c<ESC>"*p
inoremap <C-v> <ESC>"*p
nnoremap <C-v> "*p

" visual block
vnoremap <C-A-v> <C-v>
nnoremap <C-A-v> <C-v>



" -- MOTION --
" C-j scroll up
inoremap <C-j> 6<C-e>
vnoremap <C-j> 6<C-e>
nnoremap <C-j> 6<C-e>
" 24 up
nnoremap <C-A-j> 24<C-e>

" C-k scroll down
inoremap <C-k> 6<C-y>
vnoremap <C-k> 6<C-y>
nnoremap <C-k> 6<C-y>
" 24 down
nnoremap <C-A-k> 24<C-y>

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


" -- EDIT --
" delete line
inoremap <C-d> <Esc>dd
vnoremap <C-d> dd
nnoremap <C-d> dd

" enter insert
nnoremap<CR> o<Esc> 

" space insert
nnoremap <space> i

" delete backwards
nnoremap<C-;> bdw
inoremap <C-;> <Esc>bdw





"-------------------------------------------------------
"-- Functions
"-------------------------------------------------------

command Src :w | :source ~/.config/nvim/init.vim | :noh
command Srcg :w | :source ~/.config/nvim/ginit.vim | :noh












