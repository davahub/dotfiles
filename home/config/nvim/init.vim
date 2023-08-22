
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
    " Plug 'sainnhe/gruvbox-material',

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

" lua require('color')
lua require('treesitter')
" lua require('mykeymap')


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
" nnoremap <space> <Nop>
" let mapleader = " "
let mapleader = ","

" replay macro
nnoremap <\> @

" find
nnoremap <C-f> /

" resize vertical
nnoremap <A-b> :vertical resize +20<cr>
nnoremap <A-s> :vertical resize -20<cr>
nnoremap <C-A-s> :vertical resize -20<cr>


" indent tab
nnoremap <tab> >>w
vnoremap <tab> >

" Vista
nnoremap <A-r> :Vista finder<CR>
nnoremap <F9> :Vista!!<CR>


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
nnoremap <silent> <A-J> :call AddEmptyLineBelow()<CR>
inoremap <silent> <A-J> <esc>:call AddEmptyLineBelow()<CR>i


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



