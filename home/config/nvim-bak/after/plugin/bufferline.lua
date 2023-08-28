
vim.opt.termguicolors = true

-- local status_ok, bufferline = pcall(require, "bufferline")
-- if not status_ok then
  -- return
-- end

require("bufferline").setup {
  options = {
    -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): 
    numbers = "ordinal",

  }
}



