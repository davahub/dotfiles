-- ---------------------------------------------
-- -- MAIN 
-- ---------------------------------------------

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

-- SWITCH RECENT BUFFERS 
vim.keymap.set("n", "<A-o>", "<C-^>")
vim.keymap.set("v", "<A-o>", "<C-^>")

-- SELECT ALL
vim.keymap.set("n", "<C-a>", "ggVG")


-- ---------------------------------------------
-- -- MOVEMENT 
-- ---------------------------------------------

-- MOVE TO END OF LINE
vim.keymap.set("i", "<C-e>", "<esc>$i")
vim.keymap.set("v", "<C-e>", "$")
vim.keymap.set("n", "<C-e>", "$a")
vim.keymap.set("v", "L", "$")
vim.keymap.set("n", "L", "$")

-- SWITCH LINES DOWN
vim.keymap.set("v", "<C-down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-down>", "v$:m '>+1<CR>gv=gv<Esc>")

-- SWITCH LINES UP
vim.keymap.set("v", "<C-up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-up>", "v$:m '>-2<CR>gv=gv<Esc>")

-- CENTER MIDDLE
vim.keymap.set("n", "mm", "zz")

-- SCROLL DOWN
vim.keymap.set("i", "<C-j>", "<Esc>6<C-e>")
vim.keymap.set("v", "<C-j>", "6<C-e>")
vim.keymap.set("n", "<C-j>", "6<C-e>")
-- HALF DOWN
vim.keymap.set("n", "<C-A-j>", "<C-d>M")

-- SCROLL UP
vim.keymap.set("i", "<C-k>", "<Esc>6<C-y>")
vim.keymap.set("v", "<C-k>", "6<C-y>")
vim.keymap.set("n", "<C-k>", "6<C-y>")
-- HALF UP
vim.keymap.set("n", "<C-A-k>", "<C-u>M")


-- ---------------------------------------------
-- -- EDIT 
-- ---------------------------------------------

-- INSERT END OF LINE
vim.keymap.set("i", "<A-i>", "A")
vim.keymap.set("v", "<A-i>", "A")
vim.keymap.set("n", "<A-i>", "A")

-- DUPLICATE LINES
vim.keymap.set("i", "<A-D>", "<Esc>:t.<CR>i")
vim.keymap.set("v", "<A-D>", ":t.<CR>")
vim.keymap.set("n", "<A-D>", ":t.<CR>")

-- DELETE LINE
vim.keymap.set("i", "<C-d>", "<Esc>dd")
vim.keymap.set("v", "<C-d>", "dd")
vim.keymap.set("n", "<C-d>", "dd")

-- vim.keymap.set("i", "<C-d>", "<Esc><C-d>zz")
-- vim.keymap.set("v", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("i", "<C-A-j>", "<Esc><C-d>zz")
vim.keymap.set("v", "<C-A-j>", "<C-d>zz")
vim.keymap.set("n", "<C-A-j>", "<C-d>zz")

vim.keymap.set("i", "<C-u>", "<Esc><C-u>zz")
vim.keymap.set("v", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("i", "<C-A-k>", "<Esc><C-u>zz")
vim.keymap.set("v", "<C-A-k>", "<C-u>zz")
vim.keymap.set("n", "<C-A-k>", "<C-u>zz")

-- ENTER INSERT
vim.keymap.set("n", "<CR>", "o<esc>")

-- SPACE INSERT
vim.keymap.set("n", "<space>", "i")

-- DELETE BACKWARD
vim.keymap.set("n", "<C-;>", "bdw")
vim.keymap.set("i", "<C-;>", "<Esc>dbxi")



