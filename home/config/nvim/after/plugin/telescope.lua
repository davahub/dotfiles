local builtin = require('telescope.builtin')
local utils = require("telescope.utils")

vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- vim.keymap.set('n', '<leader>ff', function()
--     builtin.find_files({ cwd = utils.buffer_dir() });
-- end)

-- ["<leader>ff"] = { function() builtin.find_files({ cwd = utils.buffer_dir() }) end,
      -- desc = "Find files in cwd" }

