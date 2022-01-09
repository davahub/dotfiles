call plug#begin('~/.vim/plugged')
 " Plugin Section
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'plasticboy/vim-markdown'
 Plug 'mzlogin/vim-markdown-toc'
 Plug 'maksimr/vim-jsbeautify'
 Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
  \ }
call plug#end()

"let g:NERDTreeChDirMode=2




"-------------------------------------------------------
"-- Markdown
"-------------------------------------------------------

" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" disable default keybindings
let g:vim_markdown_no_default_key_mappings = 1


"-------------------------------------------------------
"-- Snippet
"-------------------------------------------------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-l>"

let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/.1homepc/home/config/nvim/ulti-snippets']


"-------------------------------------------------------
"-- Tabs
"-------------------------------------------------------
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2


"-------------------------------------------------------
"-- Functions
"-------------------------------------------------------
function MyToc()
  Toc
  vertical resize 30
endfunction

function AddEmptyLineBelow()
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
endfunction

function Myfunc()
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
endfunction


"-------------------------------------------------------
"-- Session
"-------------------------------------------------------

function! SaveSession()
  mksession! ~/.config/nvim/mysession.vim
endfunction

function! LoadSession()
  source ~/.config/nvim/mysession.vim
endfunction
au VimEnter * nested :call LoadSession()
"au VimLeave * :call SaveSession()


"-------------------------------------------------------
"-- Custom commands
"-------------------------------------------------------

" command Tr Toc vertical resize 40
command Tr :call MyToc()

command Src :source .config/nvim/init.vim | :noh

" command Src :source .config/nvim/init.vim | :noh

command Ssession :call SaveSession()
command Lsession :call LoadSession()


"-------------------------------------------------------
"-- Shortcuts
"-------------------------------------------------------

" nnoremap tt :Toc<CR> :vertical resize 40<CR> 

nnoremap<CR> o<Esc>

nnoremap <C-v> p
vnoremap <C-v> <Esc>p
inoremap <C-v> <Esc>p


nnoremap <A-q> :call nerdcommenter#Comment(0,"toggle")<C-m>
inoremap <A-q> <Esc>:call nerdcommenter#Comment(0,"toggle")<C-m>
vnoremap <A-q> <Esc>:call nerdcommenter#Comment(0,"toggle")<C-m>

nnoremap <C-d> dd
vnoremap <C-d> <Esc>dd i
inoremap <C-d> <Esc>dd i

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
vnoremap <C-s> <Esc>:w<CR>

nnoremap <A-2> :tabnext<CR>
nnoremap <A-1> :tabprevious<CR>

nnoremap <S-t> :tabnew<CR> 

nnoremap tr :NERDTree %<CR> 

nnoremap <C-j> 6<C-e>
nnoremap <C-k> 6<C-y>
nnoremap <A-j> 6j
nnoremap <A-k> 6k

nnoremap mm zt 6<C-y>

nnoremap <C-A-j> :call AddEmptyLineBelow()<CR>

nnoremap <C-e> A
inoremap <C-e> <Esc>A
vnoremap <C-e> <Esc>A


" move between panes to left/bottom/top/right
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-l> <C-w>l

" shift+space for esc for space
:inoremap <S-space> <Esc>
:vnoremap <S-space> <Esc>


"-------------------------------------------------------
"-- Prettier
"-------------------------------------------------------
let g:prettier#exec_cmd_path = "/home/dava/.nvm/versions/node/v17.1.0/bin/prettier"






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

filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.


" color schemes
if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable
 " colorscheme evening
colorscheme dracula
" open new split panes to right and below
set splitright
set splitbelow


" move line or visually selected block - alt+j/k
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
" nnoremap <A-h> <C-W>H
" nnoremap <A-j> <C-W>J
" nnoremap <A-k> <C-W>K
" nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
"nnoremap <C-A-h> <C-w>h
"nnoremap <C-A-j> <C-w>j
"nnoremap <C-A-k> <C-w>k
"nnoremap <C-A-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>


" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

