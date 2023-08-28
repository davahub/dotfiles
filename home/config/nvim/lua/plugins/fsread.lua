
return {
  {
    "nullchilly/fsread.nvim",
    config = function()
      vim.g.flow_strength = 0.7 -- low: 0.3, middle: 0.5, high: 0.7 (default)
      -- vim.api.nvim_set_hl(0, "FSPrefix", { fg = "#cdd6f4" })
      -- vim.api.nvim_set_hl(0, "FSPrefix", { fg = "#cdd6f4" })
      vim.api.nvim_set_hl(0, "FSPrefix", { fg = "#60CB61" })
      -- vim.api.nvim_set_hl(0, "FSSuffix", { fg = "#6C7086" })
      vim.api.nvim_set_hl(0, "FSSuffix", { fg = "#7F7F7F" })
    end
  },
  -- {
    --   "JellyApple102/easyread.nvim",
    --   config = function()
    --     require('easyread').setup{
    --       hlValues = {
    --         ['1'] = 1,
    --         ['2'] = 1,
    --         ['3'] = 2,
    --         ['4'] = 2,
    --         ['fallback'] = 0.4
    --       },
    --       hlgroupOptions = { link = 'Bold' },
    --       fileTypes = { 'text' },
    --       saccadeInterval = 0,
    --       saccadeReset = false,
    --       updateWhileInsert = true
    --     }
    --   end
    -- }
  -- }
}

