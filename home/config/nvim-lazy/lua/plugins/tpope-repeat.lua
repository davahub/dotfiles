
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

return {
  "tpope/vim-repeat",
  config = function()
    -- nnoremap <silent> .     :<C-U>call repeat#run(v:count)<CR>
    keymap("n", ".", ":<C-U>call repeat#run(v:count)<CR>", opts)
  end
}
