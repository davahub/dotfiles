
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      local builtin = require('telescope.builtin')
      -- local utils = require("telescope.utils")
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

      keymap('n', '<A-R>', function()
        builtin.live_grep({ cwd = "~/workspace/dans"});
      end)


      vim.api.nvim_create_user_command('Wrip',
        function()
          builtin.live_grep({ cwd = "~/workspace/dans"});
        end,
        { nargs = 0 })

    end,
  }
}

