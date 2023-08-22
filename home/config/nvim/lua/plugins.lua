
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
  -- use('altercation/vim-colors-solarized')
  use('ellisonleao/gruvbox.nvim')
  use("rebelot/kanagawa.nvim")
  use { "catppuccin/nvim", as = "catppuccin" }
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
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  } 


  
end)
