

return {
  {
    "Xuyuanp/scrollbar.nvim",
    enabled = false
  }
}

-- return {
--   {
--     "dstein64/nvim-scrollview",
--     config = function()
--       require('scrollview').setup({
--         excluded_filetypes = {'nerdtree'},
--         current_only = true,
--         base = 'buffer',
--         -- column = 80,
--         signs_on_startup = {'all'},
--         diagnostics_severities = {vim.diagnostic.severity.ERROR}
--       })
--     end
--   }
-- }


-- return {
--   {
--     'petertriho/nvim-scrollbar',
--     config = function()
--       require("scrollbar").setup({
--         handle = {
--           text = " ",
--           blend = 5, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
--           -- color = nil,
--           -- color = "#FB2E02",
--           color = "#FA7E31",
--           color_nr = "white", -- cterm
--           highlight = "CursorColumn",
--           hide_if_all_visible = true, -- Hides handle if all lines are visible
--         },
--         marks = {
--           Cursor = {
--             text = "",
--             priority = 0,
--             gui = nil,
--             color = nil,
--             cterm = nil,
--             color_nr = nil, -- cterm
--             highlight = "Normal",
--           }
--         },
--         handlers = {
--           cursor = false,
--           diagnostic = true,
--           handle = true,
--           gitsigns = false, -- Requires gitsigns
--           search = false, -- Requires hlslens
--           ale = false, -- Requires ALE
--         },
--       })
--     end
--   }
-- }

