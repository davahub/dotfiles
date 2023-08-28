
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- packer manage itself
  use 'wbthomason/packer.nvim'
  use 'rstacruz/vim-closer'
  -- Lazy loading:
  -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}
  use {'liuchengxu/vista.vim', commit = 'f925e481bba7cd5451fb8bca9a6ecfc2bf1f2858'}
  use {'preservim/nerdtree', commit = 'c46e12a886b4a6618a9e834c90f6245952567115'}
  use {'luukvbaal/statuscol.nvim', commit = '9f1ff2dcf614544c5022e876d83b4894c1944e87'}
  use {'kevinhwang91/nvim-ufo', commit = '8b01594c29bd01e7b49b647a663c819ed909714f',
    requires = 'kevinhwang91/promise-async' }
  use {
    'AckslD/nvim-FeMaco.lua',
    config = 'require("femaco").setup()',
    commit = '9b1d7cc4a5e773b7fec6318d4981d63bcd5eaf56'
  }
  -- bufferline
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  -- dressing
  use {'stevearc/dressing.nvim'}
  use {'dstein64/vim-startuptime'}

  -- ---------------------------------------------
  -- -- Themes
  -- ---------------------------------------------
  use('EdenEast/nightfox.nvim')
  use('folke/tokyonight.nvim')
  use('ellisonleao/gruvbox.nvim')
  use("nvim-tree/nvim-web-devicons")
  -- use { "catppuccin/nvim", as = "catppuccin" }
  -- use("mhartington/oceanic-next")
  -- use('altercation/vim-colors-solarized')
  -- use("sonph/onehalf")
  -- use("ayu-theme/ayu-vim")
  -- use("nordtheme/vim")
  -- use("rebelot/kanagawa.nvim")
  -- use('marko-cerovac/material.nvim')
  -- use('sainnhe/gruvbox-material')


  -- ---------------------------------------------
  -- -- Init plugins
  -- --------------------------------------------- 
  use 'tpope/vim-commentary'
  -- use( {'nvim-treesitter/nvim-treesitter' , commit = "cb74c1c5aefd8b903f1b547d08d4df42be07aa2a" , run = ':TSUpdate' })
  use( {'nvim-treesitter/nvim-treesitter' , commit = "bae2c1824fb9297b044fbb58fc3b81ba79ed8b75" , run = ':TSUpdate' })
  use { 'nvim-treesitter/playground', commit = '429f3e76cbb1c59fe000b690f7a5bea617b890c0'}
  use('ThePrimeagen/harpoon')
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- spectre
  use {'nvim-pack/nvim-spectre'}


  -- ---------------------------------------------
  -- -- LSP
  -- ---------------------------------------------
  use { "williamboman/mason.nvim", commit = "34b3d0d01dfeba0b869bedf32ae846ef63ad4bd1" }
  use { "williamboman/mason-lspconfig.nvim", commit = "2997f467881ac4faa6f8c5e7065e3a672297c8ad" }
  use { "neovim/nvim-lspconfig", commit = "a27356f1ef9c11e1f459cc96a3fcac5c265e72d6" }
  use { "jose-elias-alvarez/null-ls.nvim", commit = "0010ea927ab7c09ef0ce9bf28c2b573fc302f5a7" }
  use { "hrsh7th/nvim-cmp",  commit = "5dce1b778b85c717f6614e3f4da45e9f19f54435" }
  use { "hrsh7th/cmp-nvim-lsp",  commit = "44b16d11215dce86f253ce0c30949813c0a90765" }
  use { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" }
  use { "hrsh7th/cmp-path", commit = "91ff86cd9c29299a64f968ebb45846c485725f23" }
  use { "hrsh7th/cmp-cmdline", commit = "8ee981b4a91f536f52add291594e89fb6645e451" }
  use { "L3MON4D3/LuaSnip", commit = "c4d6298347f7707e9757351b2ee03d0c00da5c20" }

end)
