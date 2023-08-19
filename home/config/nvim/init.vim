
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-commentary'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'

    " Themes
    " Plug 'folke/tokyonight.nvim'
    " Plug 'altercation/vim-colors-solarized'
    Plug 'EdenEast/nightfox.nvim'
    " Plug 'ellisonleao/gruvbox.nvim'
    " Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    " Plug 'marko-cerovac/material.nvim', 
    " Plug 'sainnhe/gruvbox-material'
    Plug 'sainnhe/gruvbox-material',

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
    Plug 'liuchengxu/vista.vim',
    Plug 'nvim-tree/nvim-web-devicons', " optional
    " Plug 'nvim-tree/nvim-tree.lua'

    " Snippets
    " Plug 'SirVer/ultisnips',
    " Plug 'honza/vim-snippets',

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

" gruvbox material
" colorscheme gruvbox-material



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
" foldmethod default manual, syntax, indent, manual
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
" insert comment on empty lines
" let g:vim_commentary_add_space = 1



" --------------------------------------------------------
" -- NETRW Explorer
" -------------------------------------------------------

" set window size
let g:netrw_winsize=15

" kill netrw buffer for toggle
augroup AutoDeleteNetrwHiddenBuffers
  au!
  au FileType netrw setlocal bufhidden=wipe
augroup end

nnoremap <F8> :Lexplore %:p:h<cr>


"-------------------------------------------------------
"-- Snippet
"-------------------------------------------------------
" let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
" let g:UltiSnipsExpandTrigger="<A-n>"  " use <Tab> to trigger autocompletion
" let g:UltiSnipsJumpForwardTrigger="<C-N>"
" let g:UltiSnipsJumpBackwardTrigger="<C-P>"

" let g:UltiSnipsListSnippets="<leader>lsn"

" Do not look for SnipMate snippets
" let g:UltiSnipsEnableSnipMate = 0

" let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/.config/nvim/my_snippets']


" --------------------------------------------------------
" -- Syntax
" -------------------------------------------------------

" see file types :setfiletype <space> <c-d>
autocmd BufNewFile,BufRead *.aliases set filetype=bash
autocmd BufNewFile,BufRead *. set filetype=bash
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc


let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'lua', 'vim', 'typescript', 'javascript' ]

" --------------------------------------------------------
" -- Neovide
" -------------------------------------------------------
let g:neovide_refresh_rate = 60
 
 
" -------------------------------------------------------
" -- Commands
" -------------------------------------------------------
" use call to call a function 
" function! Myformat()command So :w | :source ~/.config/nvim/init.vim | :noh
    " :! prettier %:p --write 
    " call append(line("."), "")
" endfunction

command! Format :w | :! prettier %:p --write

" source
command! Sr :w | :source ~/.config/nvim/init.vim | :noh

" reload snippets
command! ReloadSnip :call UltiSnips#RefreshSnippets()



" com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
" nnoremap <F5> :FormatXML<Cr>

vnoremap <F5> :! xmllint --format -
nnoremap <F5> ggVG:!xmllint --format -<CR>


"-------------------------------------------------------
"-- MAIN SHORTCUTS
"-------------------------------------------------------
let mapleader = ","

" find
nnoremap <C-f> /

" resize vertical
nnoremap <A-b> :vertical resize +20<cr>
nnoremap <A-s> :vertical resize -20<cr>
nnoremap <C-A-s> :vertical resize -20<cr>

" split windows
nnoremap <A-"> <C-w>v
nnoremap <A-!> <C-w>s


" indent tab
" nnoremap <tab> >>w
" vnoremap <tab> >

" Vista
nnoremap <A-r> :Vista finder<CR>
nnoremap <F9> :Vista!!<CR>

" move to right llft window
nnoremap <A-h> <C-w>h
nnoremap <A-l> <C-w>l

" Fold code
nnoremap <A-f> zc
inoremap <A-f> <Esc>zc

" Format code
nnoremap <leader>t :Format<CR>

" Telescope
" file_files hidden=true layout_config={"prompt_position": "top"}
nnoremap <leader>lf <cmd>Telescope find_files search_dirs={"~/workspace/dans"}<cr>
nnoremap <leader>c <cmd>Telescope find_files search_dirs={"~/.config/nvim"}<cr>
nnoremap <leader>lg <cmd>Telescope git_files<cr>
" nnoremap <leader>fi <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>lh <cmd>Telescope help_tags<cr>

" explorer
nnoremap <leader>ee :Ex<CR>
inoremap <leader>ee <Esc>:Ex<CR>
vnoremap <leader>ee :Ex<CR>

" Comment toggle
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
nnoremap <A-e> :call MyCommentToggle()<CR>
vnoremap <A-e> :call MyCommentToggle()<CR>

" Join lines
nnoremap <leader>j J


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
nnoremap <C-A-i> :call AddEmptyLineBelow()<CR>

" copy and paste from system clipboard
vnoremap <C-c> "*ygv"+y
vnoremap <C-x> "*d

" paste 
nnoremap <C-v> i<Esc>"*p
vnoremap <c-v> c<ESC>"*p
inoremap <C-v> <ESC>"*p


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
nnoremap mm zz

" C-j scroll down
inoremap <C-j> <Esc>6<C-e>
vnoremap <C-j> 6<C-e>
nnoremap <C-j> 6<C-e>
" 24 down
" nnoremap <C-A-j> 24<C-e>M
nnoremap <A-J> <C-d>M

" C-k scroll up
inoremap <C-k> <Esc>6<C-y>
vnoremap <C-k> 6<C-y>
nnoremap <C-k> 6<C-y>
" 24 up
" nnoremap <C-A-k> 24<C-y>M
nnoremap <A-K> <C-u>M

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

" top and bottom
nnoremap T H
" nnoremap B L


" -- EDIT --

" enter insert
nnoremap<CR> o<Esc> 

" space insert
nnoremap <space> i

" delete backwards
nnoremap<C-;> bdw
inoremap <C-;> <Esc>bdwa



"-------------------------------------------------------
"-- Markdown
"-------------------------------------------------------
" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

let g:markdown_minlines = 100

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
"-- NVIM Tree
"-------------------------------------------------------

" nnoremap <F8> :NvimTreeToggle<CR> 
" nnoremap <F6> :NvimTreeRefresh<CR>  
" nnoremap <F5> :NvimTreeFindFile<CR> 




