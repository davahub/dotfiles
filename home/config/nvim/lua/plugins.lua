
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'
  -- Lazy loading:
  -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}
  use {'liuchengxu/vista.vim'}
  use {'preservim/nerdtree'}


  -- ---------------------------------------------
  -- -- Themes
  -- ---------------------------------------------
  use('EdenEast/nightfox.nvim')
  use('folke/tokyonight.nvim')
  use('ellisonleao/gruvbox.nvim')
  use("nvim-tree/nvim-web-devicons")
  use { "catppuccin/nvim", as = "catppuccin" }
  use("mhartington/oceanic-next")
  use('altercation/vim-colors-solarized')
  -- use("sonph/onehalf")
  -- use("ayu-theme/ayu-vim")
  -- use("nordtheme/vim")
  use("rebelot/kanagawa.nvim")
  -- use('marko-cerovac/material.nvim')
  -- use('sainnhe/gruvbox-material')



  -- ---------------------------------------------
  -- -- Init plugins
  -- --------------------------------------------- 
  use 'tpope/vim-commentary'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


  -- ---------------------------------------------
  -- -- LSP
  -- ---------------------------------------------
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
    "hrsh7th/nvim-cmp",      
    "hrsh7th/cmp-nvim-lsp",      
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    -- "mfussenegger/nvim-lint"
  }
  use("L3MON4D3/LuaSnip")
  -- enable cmp luasnip
  -- use("saadparwaiz1/cmp_luasnip")


  -- use {
    -- 'VonHeikemen/lsp-zero.nvim',
    -- branch = 'v2.x',
    -- requires = {
      -- LSP Support
      -- {'neovim/nvim-lspconfig'},             -- Required
      -- {'williamboman/mason.nvim'},           -- Optional
      -- {'williamboman/mason-lspconfig.nvim'}, -- Optional
-- 
      -- Autocompletion
      -- {'hrsh7th/nvim-cmp'},     -- Required
      -- {'hrsh7th/cmp-nvim-lsp'}, -- Required
      -- {'L3MON4D3/LuaSnip'},     -- Required
    -- }
  -- } 


  
end)
