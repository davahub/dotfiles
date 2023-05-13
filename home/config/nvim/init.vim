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
 Plug 'numToStr/Comment.nvim'
 Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
 Plug 'patstockwell/vim-monokai-tasty'
 Plug 'HerringtonDarkholme/yats.vim'
 Plug 'pangloss/vim-javascript'
 Plug 'MaxMEllon/vim-jsx-pretty'
 Plug 'styled-components/vim-styled-components'
 Plug 'elzr/vim-json'
 Plug 'jparise/vim-graphql'
 Plug 'mangeshrex/uwu.vim'
call plug#end()


"-------------------------------------------------------
"-- Shortcuts
"-------------------------------------------------------

"-- Main
nnoremap <F3> :set hlsearch!<CR> " toggle highlight search
" esc replacement 
inoremap <S-space> <Esc>
vnoremap <S-space> <Esc>
inoremap <A-j> <Esc>
vnoremap <A-j> <Esc>
nnoremap <A-j> <Esc>
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
nnoremap <C-A-j> :call AddEmptyLineBelow()<CR>

" movement ----------------------------
nnoremap <C-j> 6<C-e>
nnoremap <C-u> 6<C-y>

inoremap <C-k> 6j
nnoremap <C-k> 6j
inoremap <C-l> 6k 
nnoremap <C-l> 6k

nnoremap <C-e> A
inoremap <C-e> <Esc>A
vnoremap <C-e> <Esc>A
inoremap <A-z> <Esc>u
vnoremap <A-f> <Esc>w i
inoremap <A-f> <Esc>w i
vnoremap <A-l> <Esc>l
inoremap <A-h> <Esc>h

inoremap <A-n> <Esc>^
vnoremap <A-n> ^
nnoremap <A-n> ^

inoremap <A-l> <Esc>$
vnoremap <A-l> $
nnoremap <A-l> <Esc>$
" -------------------------------------


" parenthesis brackets completion
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
" copy paste undo
vnoremap <C-c> y
inoremap <C-c> <Esc>y
nnoremap <C-v> p
vnoremap <C-v> <Esc>p
inoremap <C-v> <Esc>p
nnoremap <C-z> u
" tab movement
nnoremap <A-2> :tabnext<CR>
nnoremap <A-1> :tabprevious<CR>
nnoremap <S-t> :tabnew<CR> 


"-- Others
" nnoremap tt :Toc<CR> :vertical resize 40<CR> 
" nnoremap <C-l> zt 8<C-y>

" move between panes to left/bottom/top/right
nnoremap <S-h> <C-w>h
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-l> <C-w>l

nnoremap tr :NERDTree %<CR> 
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
vnoremap <C-s> <Esc>:w<CR>
nnoremap <A-m> zt 8<C-y>
nnoremap mm zt 8<C-y>



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
"-- Themes
"-------------------------------------------------------
if (has("termguicolors"))
 set termguicolors
endif

"colorscheme evening
colorscheme dracula

"colorscheme vim-monokai-tasty
"colorscheme uwu
" To enable
let g:UwuNR=1 " default


" Tokyo Night
let g:lightline = {'colorscheme': 'tokyonight'}

"let g:tokyonight_style = "storm"
"let g:tokyonight_italic_functions = 1
"let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
"let g:tokyonight_colors = {
"  \ 'hint': 'orange',
"  \ 'error': '#ff0000'
"\ }

" Load the colorscheme
"colorscheme tokyonight



"-------------------------------------------------------
"-- Comments
"-------------------------------------------------------
"nnoremap <A-q> :call nerdcommenter#Comment(0,"toggle")<C-m>
"inoremap <A-q> <Esc>:call nerdcommenter#Comment(0,"toggle")<C-m>
"vnoremap <A-q> <Esc>:call nerdcommenter#Comment(0,"toggle")<C-m>
lua require('Comment').setup()

function MySingleComment()
  lua require('Comment.api').toggle_current_linewise(cfg)
endfunction

nnoremap <C-q> :call MySingleComment()<CR>
vnoremap <C-q> :call MySingleComment()<CR>
inoremap <C-q> <Esc>:call MySingleComment()<CR>
nnoremap <A-q> :call MySingleComment()<CR>
vnoremap <A-q> :call MySingleComment()<CR>
inoremap <A-q> <Esc>:call MySingleComment()<CR>
nnoremap <A-e> :call MySingleComment()<CR>
vnoremap <A-e> :call MySingleComment()<CR>
inoremap <A-e> <Esc>:call MySingleComment()<CR>



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
"au VimEnter * nested :call LoadSession()
"au VimLeave * :call SaveSession()


"-------------------------------------------------------
"-- Custom commands
"-------------------------------------------------------

" command Tr Toc vertical resize 40
command Tr :call MyToc()

command Src :source ~/.config/nvim/init.vim | :noh

command Ssession :call SaveSession()
command Lsession :call LoadSession()





"-------------------------------------------------------
"-- Prettier
"-------------------------------------------------------
let g:prettier#exec_cmd_path = "/home/dava/.nvm/versions/node/v17.1.0/bin/prettier"






"-------------------------------------------------------
"-- Main
"-------------------------------------------------------
let g:python3_host_prog = '/usr/bin/python3'
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
set nobackup


filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

syntax enable

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

