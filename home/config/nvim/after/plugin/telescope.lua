local builtin = require('telescope.builtin')
local utils = require("telescope.utils")
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set


-- ---------------------------------------------
-- -- KEYMAP 
-- ---------------------------------------------

-- open proj dir
keymap('n', '<leader>w', function()
    builtin.find_files({ cwd = "~/workspace/dans" });
end)

-- open config
keymap('n', '<leader>c', function()
    builtin.find_files({ cwd = "~/.config/nvim" });
end)

-- git files
keymap('n', '<leader>lg', builtin.git_files, opts)

-- buffer
keymap('n', '<leader>b', builtin.buffers, opts)

-- search
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > "), cwd = utils.buffer_dir() });
end)

-- vim.keymap.set('n', '<leader>ff', function()
--     builtin.find_files({ cwd = utils.buffer_dir() });
-- end)

-- ["<leader>ff"] = { function() builtin.find_files({ cwd = utils.buffer_dir() }) end,
      -- desc = "Find files in cwd" }

-- " file_files hidden=true layout_config={"prompt_position": "top"}
-- nnoremap <leader>lf <cmd>Telescope find_files search_dirs={"~/workspace/dans"}<cr>
-- nnoremap <leader>c <cmd>Telescope find_files search_dirs={"~/.config/nvim"}<cr>
-- nnoremap <leader>lg <cmd>Telescope git_files<cr>
-- " nnoremap <leader>fi <cmd>Telescope live_grep<cr>
-- nnoremap <leader>b <cmd>Telescope buffers<cr>
-- nnoremap <leader>lh <cmd>Telescope help_tags<cr>


