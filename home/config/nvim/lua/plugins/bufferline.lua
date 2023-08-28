
return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function()
      vim.opt.termguicolors = true

      require("bufferline").setup {
        options = {
          -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): 
          numbers = "ordinal",
        }
      }
    end
  }
}

