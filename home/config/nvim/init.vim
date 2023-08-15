
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-commentary'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Themes
    " Plug 'folke/tokyonight.nvim'
    " Plug 'altercation/vim-colors-solarized'
    Plug 'EdenEast/nightfox.nvim'
    " Plug 'ellisonleao/gruvbox.nvim'
    " Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    " Plug 'marko-cerovac/material.nvim', 
    " File management
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
    Plug 'ThePrimeagen/harpoon'

    " lsp zero
    Plug 'neovim/nvim-lspconfig'             " Required
    Plug 'williamboman/mason.nvim',          " Optional
    Plug 'williamboman/mason-lspconfig.nvim' " Optional
    " Autocompletion required by lsp zero
    Plug 'hrsh7th/nvim-cmp'     " Required
    Plug 'hrsh7th/cmp-nvim-lsp' " Required
    Plug 'L3MON4D3/LuaSnip'     " Required
    Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}

    " Prettier

call plug#end()

lua require('config')
lua require('treesitter')
lua require('mykeymap')


"-------------------------------------------------------
"-- Theme
"-------------------------------------------------------

"-- Tokyo night --
" let g:tokyonight_style = 'storm'
" let g:tokyonight_style = 'day'
" let g:tokyonight_style = 'moon'
" let g:tokyonight_sidebars = [ 'quickfix', '__vista__', 'terminal' ]
" let g:tokyonight_style = 'night'

" colorscheme tokyonight

"-- Solarized --
" set background=dark
" colorscheme solarized

"-- Nightfox --
colorscheme nightfox
" colorscheme nordfox
" colorscheme carbonfox
" colorscheme terafox
" colorscheme duskfox

"-- Gruvbox --
" set background=dark " or light if you want light mode
" colorscheme gruvbox

"-- Catppuccin --
" colorscheme catppuccin

"-- Material --
" colorscheme material


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
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
syntax enable
" turn off auto commevident after o
set formatoptions-=ro
" foldmethod default manual, syntax, indent, manual
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
" insert comment on empty lines
" let g:vim_commentary_add_space = 1


"--------------------------------------------------------
"-- Syntax
"-------------------------------------------------------
" see file types :setfiletype <space> <c-d>
autocmd BufNewFile,BufRead *.aliases set filetype=bash
autocmd BufNewFile,BufRead *. set filetype=bash




"--------------------------------------------------------
"-- Neovide
" -------------------------------------------------------
let g:neovide_refresh_rate = 60
 
 
"-------------------------------------------------------
"-- Commands
"-------------------------------------------------------
" use call to call a function 
" function! Myformat()command So :w | :source ~/.config/nvim/init.vim | :noh
    " :! prettier %:p --write 
    " call append(line("."), "")
" endfunction

command! Format :w | :! prettier %:p --write

" source
command! Sr :w | :source ~/.config/nvim/init.vim | :noh


" com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
" nnoremap <F5> :FormatXML<Cr>

vnoremap <F5> :! xmllint --format -
nnoremap <F5> ggVG:!xmllint --format -<CR>


"-------------------------------------------------------
"-- Shortcuts
"-------------------------------------------------------
let mapleader = ","

" example lua config key map
" vim.keymap.set("n", "K", "6k")

" -- ACTION --

" move to right left window
nnoremap <A-h> <C-w>h
nnoremap <A-l> <C-w>l

" Source
nnoremap <C-0> :w<CR>:so<CR>

" Fold code
nnoremap <C-f> zc
" nnoremap <leader>uf zo
inoremap <C-f> <Esc>zc
" nnoremap <F12> :set foldmethod=indent<CR>
" nnoremap <F9> :set foldmethod=manual<CR>vatzfzz

" Format code
nnoremap <leader>t :Format<CR>

" Telescope
" file_files hidden=true layout_config={"prompt_position": "top"}
nnoremap <leader>ff <cmd>Telescope find_files search_dirs={"~/workspace/dans"}<cr>
nnoremap <leader>fc <cmd>Telescope find_files search_dirs={"~/.config/nvim"}<cr>
nnoremap <leader>fg <cmd>Telescope git_files<cr>
nnoremap <leader>fi <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" explorer
nnoremap <leader>ee :Ex<CR>
inoremap <leader>ee <Esc>:Ex<CR>
vnoremap <leader>ee :Ex<CR>

" ctrl+s to save
inoremap <C-s> <Esc>:w<CR>
vnoremap <C-s> :w<CR>
nnoremap <C-s> :w<CR>

" toggle highlight search
nnoremap <silent><F3> :set hlsearch!<CR>

" ESC  
inoremap <A-j> <Esc>
vnoremap <A-j> <Esc>
nnoremap <A-j> <Esc>

" Comment line
func! MyCommentToggle()
    if getline('.') =~ '^\s*$'
        :normal i text
        :normal 0x
        Commentary
        :normal wdw
        :startinsert!
        echo 'commenting empty line!'
    else
        Commentary
    endif
endfunc
inoremap <A-e> <Esc>:call MyCommentToggle()<CR>
vnoremap <A-e> :call MyCommentToggle()<CR>
nnoremap <A-e> :call MyCommentToggle()<CR>
 
" duplicate lines
inoremap <C-A-d> <Esc>:t.<CR>i
vnoremap <C-A-d> :t.<CR>
nnoremap <C-A-d> :t.<CR>

" deleting lines
inoremap <C-d> <Esc>:t.<CR>i
vnoremap <C-d> :t.<CR>
nnoremap <C-d> :t.<CR>

" add 6 empty lines below
function! AddEmptyLineBelow()
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
endfunction
" nnoremap <C-A-j> :call AddEmptyLineBelow()<CR>
nnoremap <leader>ie :call AddEmptyLineBelow()<CR>

" copy and paste from system clipboard
vnoremap <C-c> "*ygv"+y
vnoremap <C-x> "*d

" paste 
vnoremap <c-v> c<ESC>"*p
inoremap <C-v> <ESC>"*p
nnoremap <C-v> "*p

" block visual
vnoremap <C-A-v> <C-v>
nnoremap <C-A-v> <C-v>
vnoremap <leader>v <C-v>
nnoremap <leader>v <C-v>

" toggle recent buffers
vnoremap <A-o> <C-^>
nnoremap <A-o> <C-^>

" select all
nnoremap <C-a> ggVG


" -- MOTION --

" switch lines
" down
vnoremap <C-down> :m '>+1<CR>gv=gv
vnoremap <C-up> :m '<-2<CR>gv=gv

" up
nnoremap <C-down> v$:m '>+1<CR>gv=gv<Esc>
nnoremap <C-up> v$:m '>-2<CR>gv=gv<Esc>

" center middle
nnoremap <leader>c zz
nnoremap mm zz

" C-j scroll down
inoremap <C-j> <Esc>6<C-e>
vnoremap <C-j> 6<C-e>
nnoremap <C-j> 6<C-e>
" 24 down
" nnoremap <C-A-j> 24<C-e>M
nnoremap <C-A-j> <C-d>M

" C-k scroll up
inoremap <C-k> <Esc>6<C-y>
vnoremap <C-k> 6<C-y>
nnoremap <C-k> 6<C-y>
" 24 up
" nnoremap <C-A-k> 24<C-y>M
nnoremap <C-A-k> <C-u>M

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
inoremap <C-;> <Esc>bdwa





"-------------------------------------------------------
"-- Functions
"-------------------------------------------------------

" command So :w | :source ~/.config/nvim/init.vim | :noh
" command Sog :w | :source ~/.config/nvim/ginit.vim | :noh











