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

