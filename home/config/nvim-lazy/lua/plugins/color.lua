
return {
  {
    "EdenEast/nightfox.nvim",
    config = function()
      -- load the colorscheme here
      -- colorscheme nightfox
      -- colorscheme nordfox
      -- colorscheme carbonfox
      -- colorscheme terafox
      -- colorscheme duskfox
      -- vim.cmd([[colorscheme nightfox]]) -- dark
      -- vim.cmd([[colorscheme carbonfox]]) -- green
      -- vim.cmd([[colorscheme duskfox]]) -- dark
      -- vim.cmd([[colorscheme terafox]]) -- dark
      -- vim.cmd([[colorscheme nordfox]]) -- dark fav
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      vim.o.background = "dark" 
      -- vim.o.background = "light" 
      vim.cmd([[colorscheme gruvbox]])
    end
  },
  {"nvim-tree/nvim-web-devicons"}
}

-- use('folke/tokyonight.nvim')
-- use('ellisonleao/gruvbox.nvim')

