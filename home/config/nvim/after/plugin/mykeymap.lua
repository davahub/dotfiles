local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

vim.g.mapleader = ","

-- ---------------------------------------------
-- -- MAIN
-- ---------------------------------------------

-- RELAY MACRO
keymap("n", "\\", "@", opts)
-- nnoremap <\> @

-- FIND
keymap("n", "<C-f>", "/", opts)
-- nnoremap <C-f> /

keymap("n", "<F3>", ":set hlsearch!<cr>", opts)

-- VISTA
keymap("n", "<A-r>", ":Vista finder<CR>", opts)
keymap("n", "<F9>", ":Vista!!<CR>", opts)

-- FOLD CODE
keymap("n", "<A-f>", "za", opts)
-- keymap("n", "<leader>f", "zc", opts)
keymap("i", "<A-f>", "<Esc>za", opts)

-- FORMAT CODE
keymap("n", "<leader>t", ":Format<CR>", opts)

-- EXPLORER
keymap("n", "<leader>ee", ":Ex<CR>", opts)
keymap("i", "<leader>ee", "<Esc>:Ex<CR>", opts)
keymap("v", "<leader>ee", ":Ex<CR>", opts)

-- SOURCE
keymap("n", "<C-0>", ":w<CR>:so<CR>:echom 'source success!'<cr>", opts)
keymap("n", "<A-0>", ":w<CR>:so<CR>:echom 'source success!'<cr>", opts)

-- SAVE
keymap("i", "<C-s>", "<Esc>:w<CR>", opts)
keymap("v", "<C-s>", ":w<CR>", opts)
keymap("n", "<C-s>", ":w<CR>", opts)

--  ESC
keymap("n", "<A-j>", "<Esc>", opts)
keymap("v", "<A-j>", "<Esc>", opts)
keymap("i", "<A-j>", "<Esc>", opts)

-- SWITCH RECENT BUFFERS
keymap("n", "<A-o>", "<C-^>", opts)
keymap("v", "<A-o>", "<C-^>", opts)
keymap("i", "<A-o>", "<esc><C-^>a", opts)

-- SELECT ALL
keymap("n", "<C-a>", "ggVG", opts)


-- ---------------------------------------------
-- -- WINDOW
-- ---------------------------------------------

-- SPLIT WINDOWS
keymap("n", '<A-">', "<C-w>v", opts)
keymap("n", "<A-!>", "<C-w>s", opts)

-- MOVE SPLIT WINDOWS
-- left
keymap("n", "<A-h>", "<C-w>h", opts)
keymap("n", "<A-left>", "<C-w>h", opts)
-- right
keymap("n", "<A-l>", "<C-w>l", opts)
keymap("n", "<A-right>", "<C-w>l", opts)
keymap("i", "<A-h>", "<esc><C-w>h", opts)
keymap("i", "<A-l>", "<esc><C-w>l", opts)
-- down
keymap("n", "<A-down>", "<C-w>k", opts)
-- up
keymap("n", "<A-up>", "<C-w>j", opts)

keymap("n", "<A-b>", ":vertical resize +20<cr>", opts)
keymap("n", "<A-s>", ":vertical resize -20<cr>", opts)
keymap("n", "<C-A-s>", ":vertical resize -20<cr>", opts)
-- " resize vertical
-- nnoremap <A-b> :vertical resize +20<cr>
-- nnoremap <A-s> :vertical resize -20<cr>
-- nnoremap <C-A-s> :vertical resize -20<cr>


-- ---------------------------------------------
-- -- MOVEMENT
-- ---------------------------------------------

-- TAB SWITCH
keymap("n", '<A-1>', ":tabprevious<CR>", opts)
keymap("v", "<A-1>", ":tabprevious<CR>", opts)
keymap("i", "<A-1>", "<esc>:tabprevious<CR>", opts)

keymap("n", '<A-2>', ":tabnext<CR>", opts)
keymap("v", "<A-2>", ":tabnext<CR>", opts)
keymap("i", "<A-2>", "<esc>:tabnext<CR>", opts)


-- JUMP UP 6
keymap("n", 'K', "6k", opts)
keymap("v", "K", "6k", opts)

-- JUMP DOWN 6
keymap("n", 'J', "6j", opts)
keymap("v", "J", "6j", opts)

-- BEGGINING OF LINE
keymap("n", 'H', "0", opts)

-- TOP AND BOTTOM
keymap("n", 'T', "H", opts)
keymap("n", "B", "L", opts)

-- MOVE TO END OF LINE
keymap("i", "<C-e>", "<esc>$a", opts)
keymap("v", "<C-e>", "$", opts)
keymap("n", "<C-e>", "$a", opts)
keymap("v", "L", "$", opts)
keymap("n", "L", "$", opts)

-- SWITCH LINES DOWN
keymap("v", "<C-down>", ":m '>+1<CR>gv=gv", opts)
keymap("n", "<C-down>", "v$:m '>+1<CR>gv=gv<Esc>", opts)

-- SWITCH LINES UP
keymap("v", "<C-up>", ":m '<-2<CR>gv=gv", opts)
keymap("n", "<C-up>", "v$:m '>-2<CR>gv=gv<Esc>", opts)

-- CENTER MIDDLE
keymap("n", "mm", "zz", opts)

-- SCROLL DOWN
keymap("i", "<C-j>", "<Esc>6<C-e>", opts)
keymap("v", "<C-j>", "6<C-e>", opts)
keymap("n", "<C-j>", "6<C-e>", opts)

-- HALF DOWN
keymap("n", "<C-A-j>", "<C-d>M", opts)
keymap("i", "<C-A-j>", "<Esc><C-d>M", opts)
keymap("v", "<C-A-j>", "<C-d>M", opts)

-- SCROLL UP
keymap("i", "<C-k>", "<Esc>6<C-y>", opts)
keymap("v", "<C-k>", "6<C-y>", opts)
keymap("n", "<C-k>", "6<C-y>", opts)

-- HALF UP
keymap("n", "<C-A-k>", "<C-u>M", opts)
keymap("i", "<C-A-k>", "<Esc><C-u>M", opts)
keymap("v", "<C-A-k>", "<C-u>M", opts)


-- ---------------------------------------------
-- -- EDIT
-- ---------------------------------------------

-- JOIN LINES
keymap("n", "<leader>j", "J", opts)

-- COPY SYSTEM CLIPBOARD
keymap("v", "<C-c>", '"*ygv"+y', opts)
keymap("v", "<C-x>", '"+ygv"*d', opts)

-- PASTE
-- keymap("n", "<C-v>", ':set paste<cr>i<c-r>+<esc>:set nopaste<cr>`[v`]=', opts)
keymap("n", "<C-v>", 'i<esc>"*p`[v`]=', opts)
keymap("v", "<C-v>", 'c<ESC>"*p`[v`]=', opts)
keymap("i", "<C-v>", '<esc>"*p`[v`]=', opts)
-- to buffers, other windows
keymap("n", "<A-V>", "<C-r>+", opts)
keymap("i", "<A-V>", "<C-r>+", opts)


-- INSERT END OF LINE
keymap("i", "<A-i>", "A", opts)
keymap("v", "<A-i>", "A", opts)
keymap("n", "<A-i>", "A", opts)

-- DUPLICATE LINES
-- keymap("i", "<A-D>", "<Esc>:t.<CR>i", opts)
-- keymap("v", "<A-D>", ":t.<CR>", opts)
keymap("n", "<A-D>", ":t.<CR>", opts)

-- DELETE LINE
keymap("i", "<C-d>", "<Esc>dd", opts)
keymap("v", "<C-d>", "dd", opts)
keymap("n", "<C-d>", "dd", opts)
keymap("n", "<A-d>", "dd", opts)

-- vim.keymap.set("i", "<C-d>", "<Esc><C-d>zz")
-- vim.keymap.set("v", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")

keymap("i", "<C-u>", "<Esc><C-u>zz", opts)
keymap("v", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- ENTER INSERT
-- keymap("n", "<CR>", "o<esc>", opts)

-- SPACE INSERT
-- keymap("n", "<space>", "i", opts)

-- DELETE BACKWARD
keymap("n", "<C-;>", "bdw", opts)
keymap("i", "<C-;>", "<Esc>dbxi", opts)

-- BLOCK VISUAL
keymap("n", "<C-A-v>", "<C-v>", opts)
keymap("i", "<C-A-v>", "<C-v>", opts)
keymap("n", "<leader>v", "<C-v>", opts)
keymap("i", "<leader>v", "<C-v>", opts)
