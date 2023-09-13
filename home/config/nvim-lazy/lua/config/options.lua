

-- ---------------------------------------------
-- GLOBAL 
-- ---------------------------------------------
-- vim.cmd [[ let NERDTreeIgnore = ['__init__.py', '__pycache__', 'node_modules'] ]]
vim.g.NERDTreeIgnore = { '__init__.py', '__pycache__', 'node_modules' }



-- ---------------------------------------------
-- SOURCE VIM
-- ---------------------------------------------
vim.cmd [[ source $HOME/.config/nvim/lua/config/vimscript.vim ]]




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
-- set spell                   " enable spell check (may need to download language package)

local options = {
  title = true,
  -- titlestring = "Neo: %<%F%=%l/%L-%P",
  -- titlestring = "Neo: %t%(%M%)%((%{expand('%:~:.:h')})%)%(%a%)",
  titlestring = "Neo: %t%(%M%)",
  titlelen = 70,
  -- titlestring = 'Neo>> %t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)',
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
  -- showmode = true,                         -- we don't need to see things like -- INSERT -- anymore
  showtabline = 1,                         -- always show tabs
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
  cursorline = false,                      -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  -- signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = true,                             -- display lines as one long line
  linebreak = true,                        -- companion to wrap, don't split words
  -- scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
  whichwrap = "bs<>[]hl",                  -- which "horizontal" keys are allowed to travel to prev/next line
  ttyfast = true,                          -- Speed up scrolling in Vim
  confirm = true,                          -- Confirm when quit
  guifont = "Hack Nerd Font Mono:h14", 
  -- colorcolumn = "100",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end



