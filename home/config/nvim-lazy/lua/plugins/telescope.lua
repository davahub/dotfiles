
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
      -- Setup 
      -- ---------------------------------------------
      local actions = require("telescope.actions")
      -- https://github.com/nvim-telescope/telescope.nvim/blob/1dfa66b845673effc8771f9ebe511bb36a09f560/lua/telescope/mappings.lua#L240
      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              -- ["<A-j>"] = actions.close,
              ["J"] = actions.move_selection_next,
              ["K"] = actions.move_selection_previous,
              ["<A-d>"] = actions.delete_buffer,
            },
            n = {
              ["<A-j>"] = actions.close,
              ["d"] = actions.delete_buffer,
              ["x"] = actions.delete_buffer,
            }
          },
        },
      })

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

      keymap('n', '<leader>pc', function()
        builtin.grep_string({ search = vim.fn.input("pind > "), cwd = "~/.config/nvim"})
      end)

      -- git files
      keymap('n', '<leader>lg', builtin.git_files, opts)

      -- buffer
      -- keymap('n', '<leader>b', builtin.buffers, opts)
      keymap('n', '<leader>.', builtin.buffers, opts)

      -- marks
      keymap('n', '<leader>m', builtin.marks, opts)

      keymap('n', '<A-R>', function()
        builtin.live_grep({ cwd = "~/workspace/dans"});
      end)

      vim.api.nvim_create_user_command('Wrip',
        function()
          builtin.live_grep({ cwd = "~/workspace/dans"});
        end, { nargs = 0 })

    end,
  }
}

