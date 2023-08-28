

-- ---------------------------------------------
-- GLOBAL 
-- ---------------------------------------------



-- ---------------------------------------------
-- MARKDOWN 
-- ---------------------------------------------
vim.g.markdown_fenced_languages = {'html', 'python', 'bash=sh', 'lua', 'vim', 'typescript', 'javascript' }

-- disable header folding
vim.g.vim_markdown_folding_disabled = 1

-- do not use conceal feature, the implementation is not so good
vim.g.vim_markdown_conceal = 0

vim.g.markdown_minlines = 100

-- disable math tex conceal feature
vim.g.tex_conceal = ""
vim.g.vim_markdown_math = 1

-- support front matter of various format
vim.g.vim_markdown_frontmatter = 1
-- vim.g.vim_markdown_toml_frontmatter = 1  
-- vim.g.vim_markdown_json_frontmatter = 1  

-- disable default keybindings
vim.g.vim_markdown_no_default_key_mappings = 1


-- ---------------------------------------------
-- COMMENT
-- ---------------------------------------------
vim.cmd [[
func! MyCommentToggle()
  if getline('.') =~ '^\s*$'
    :normal i tt
    :normal 0x
    Commentary
    :normal wdw==
    :startinsert!
    echo 'commenting empty line!'
  else
    Commentary
    endif
endfunc

nnoremap <silent> <A-e> :call MyCommentToggle()<CR>
inoremap <silent> <A-e> <Esc>:call MyCommentToggle()<CR>
vnoremap <silent> <A-e> :Commentary<CR>

]]

vim.cmd [[
func! MyF(comment)
  let str_comment = a:comment
  if str_comment == '"'
    exe ':set commentstring=\' . a:comment . '%s'
    return
  endif
  exe ':set commentstring=' . a:comment . '%s'
endfunc

command! -nargs=1 Com :call MyF(<f-args>)
command! Comsh :call MyF("#")
command! Comjs :call MyF("//")
]]


-- ---------------------------------------------
-- EMPTY LINES 
-- ---------------------------------------------

vim.cmd [[
" empty lines below
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
]]


-- ---------------------------------------------
-- SET OPTIONS 
-- ---------------------------------------------

-- set nocompatible            " disable compatibility to old-time vi
-- set showmatch               " show matching
-- set incsearch               " incremental search
-- set tabstop=4               " number of columns occupied by a tab
-- set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
-- set shiftwidth=4            " width for autoindents
-- set autoindent              " indent a new line the same amount as the line just typed
-- set wildmode=longest,list   " get bash-like tab completions
-- set cc=100                  " set an 80 column border for good coding style
-- set spell                 " enable spell check (may need to download language package)

local options = {
  compatible = false,
  backup = false,                          -- creates a backup file
  backupdir="~/.cache/vim",
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = true,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = false,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = true,                             -- display lines as one long line
  linebreak = true,                        -- companion to wrap, don't split words
  -- scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
  whichwrap = "bs<>[]hl",                  -- which "horizontal" keys are allowed to travel to prev/next line
  ttyfast = true,                           -- Speed up scrolling in Vim
}

for k, v in pairs(options) do
  vim.opt[k] = v
end



