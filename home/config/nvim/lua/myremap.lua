
-- vim.keymap.set("n", "K", "6k")





-- switch lines
vim.keymap.set("n", "<C-Up>", "v$:m '>-2<CR>gv=gv<Esc>")
vim.keymap.set("v", "<C-up>", "v$:m '>-2<CR>gv=gv")

vim.keymap.set("n", "<C-down>", "v$:m '>+1<CR>gv=gv<Esc>", {  noremap = true })
vim.keymap.set("v", "<C-down>", "v$:m '>+1<CR>gv=gv<Esc>")



