
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
      vim.cmd([[colorscheme nordfox]]) -- dark fav
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      -- vim.o.background = "dark" 
      -- vim.o.background = "light" 
      -- vim.cmd([[colorscheme gruvbox]])
    end
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require('kanagawa').setup({
        colors = {
          palette = {
            -- change all usages of these colors
            sumiInk0 = "#000000",
            fujiWhite = "#FFFFFF",
          },
          theme = {
            -- change specific usages for a certain theme, or for all of them
            wave = {
              ui = {
                float = {
                  bg = "none",
                },
              },
            },
            dragon = {
              syn = {
                parameter = "yellow",
              },
            },
            all = {
              ui = {
                bg_gutter = "none"
              }
            }
          }
        },
      })
      -- vim.cmd([[colorscheme kanagawa-wave]])
      -- vim.cmd([[colorscheme kanagawa-dragon]])
      -- vim.cmd([[colorscheme kanagawa-lotus]]) -- fav
    end
  },
  {"nvim-tree/nvim-web-devicons"}
}

-- use('folke/tokyonight.nvim')
-- use('ellisonleao/gruvbox.nvim')

