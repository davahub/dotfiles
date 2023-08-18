-- vim.keymap.set("n", "K", "6k")
-- vim.keymap.set("n", "<C-down>", "v$:m '>+1<CR>gv=gv<Esc>", {  noremap = true })


-- SOURCE
vim.keymap.set("n", "<C-0>", ":w<CR>:so<CR>:echom 'source success!'<cr>")
vim.keymap.set("n", "<A-0>", ":w<CR>:so<CR>:echom 'source success!'<cr>")

-- SAVE
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("v", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- TOGGLE HIGHLIGHT
vim.keymap.set("n", "<F3>", ":set hlsearch!<cr>", { silent = true })

--  ESC  
vim.keymap.set("n", "<A-j>", "<Esc>")
vim.keymap.set("v", "<A-j>", "<Esc>")
vim.keymap.set("i", "<A-j>", "<Esc>")

-- DUPLICATE LINES
vim.keymap.set("i", "<A-D>", "<Esc>:t.<CR>i")
vim.keymap.set("v", "<A-D>", ":t.<CR>")
vim.keymap.set("n", "<A-D>", ":t.<CR>")

-- DELETE LINE
vim.keymap.set("i", "<C-d>", "<Esc>dd")
vim.keymap.set("v", "<C-d>", "dd")
vim.keymap.set("n", "<C-d>", "dd")






