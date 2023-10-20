
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set


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
keymap("n", "<leader>h", ":set hlsearch!<cr>", opts)
-- keymap("n", "<cr>", ":set hlsearch!<cr>", opts)

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
keymap("n", "<A-j>", "<Esc>:set nohlsearch<cr>", opts)
keymap("v", "<A-j>", "<Esc>:set nohlsearch<cr>", opts)
keymap("i", "<A-j>", "<Esc>:set nohlsearch<cr>", opts)

-- SWITCH RECENT BUFFERS
keymap("n", "<A-o>", "<C-^>", opts)
keymap("v", "<A-o>", "<C-^>", opts)
keymap("i", "<A-o>", "<esc><C-^>a", opts)

-- SELECT ALL
keymap("n", "<C-a>", "ggVG", opts)
keymap("i", "<C-a>", "<esc>ggVG", opts)
-- select all, deselect and return
keymap("n", "<A-a>", 'ggVG"*ygv"+y<c-o>zz', opts)

-- NAV BACK FORTH
keymap("n", "<A-left>", "<C-o>", opts)
keymap("n", "<A-right>", "<C-i>", opts)

-- TAB
-- keymap("i", "<tab>", "<esc><tab>", opts)

-- SEARCH
keymap("v", "//", 'y/<C-R>=escape(@",\'/\\\')<CR><CR>:set hlsearch<cr>', opts)
keymap("n", "/", ':set hlsearch<cr>/', opts)


-- ---------------------------------------------
-- -- WINDOW
-- ---------------------------------------------

-- GOTO OTHER window 
keymap("n", "<C-A-o>", "<C-w>w", opts)


-- SPLIT WINDOWS
keymap("n", '<A-">', "<C-w>v", opts)
keymap("n", "<A-!>", "<C-w>s", opts)

-- MOVE SPLIT WINDOWS
-- left
keymap("n", "<A-h>", "<C-w>h", opts)
-- keymap("n", "<A-left>", "<C-w>h", opts)
keymap("n", "<A-H>", "<C-w>h", opts)
-- right
keymap("n", "<A-l>", "<C-w>l", opts)
-- keymap("i", "<A-l>", "<esc><C-w>l", opts)
-- keymap("n", "<A-right>", "<C-w>l", opts)
-- keymap("i", "<A-h>", "<esc><C-w>h", opts)
keymap("n", "<A-L>", "<C-w>l", opts)
keymap("i", "<A-L>", "<esc><C-w>l", opts)
-- down
-- keymap("n", "<A-down>", "<C-w>k", opts)
keymap("n", "<A-K>", "<C-w>k", opts)
-- up
-- keymap("n", "<A-up>", "<C-w>j", opts)
keymap("n", "<A-J>", "<C-w>j", opts)

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

-- BUFFER SWITCH
keymap("n", '<A-1>', ":bprevious<CR>", opts)
keymap("i", '<A-1>', "<esc>:bprevious<CR>", opts)
keymap("v", '<A-1>', ":bprevious<CR>", opts)

keymap("n", '<A-2>', ":bnext<cr>", opts)
keymap("i", '<A-2>', "<esc>:bnext<CR>", opts)
keymap("v", '<A-2>', ":bnext<CR>", opts)

-- TAB SWITCH
-- keymap("n", '<A-1>', ":tabprevious<CR>", opts)
-- keymap("v", "<A-1>", ":tabprevious<CR>", opts)
-- keymap("i", "<A-1>", "<esc>:tabprevious<CR>", opts)

-- keymap("n", '<A-2>', ":tabnext<CR>", opts)
-- keymap("v", "<A-2>", ":tabnext<CR>", opts)
-- keymap("i", "<A-2>", "<esc>:tabnext<CR>", opts)

-- JUMP UP 6
keymap("n", 'K', "6k", opts)
keymap("v", "K", "6k", opts)

-- JUMP DOWN 6
keymap("n", 'J', "6j", opts)
keymap("v", "J", "6j", opts)

-- BEGGINING OF LINE
keymap("n", 'H', "0", opts)
keymap("v", 'H', "0", opts)

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
-- vimwiki
keymap("n", "<C-A-up", "<Plug>VimwikiDiaryPrevDay", opts)
keymap("n", "<C-A-down", "<Plug>VimwikiDiaryNextDay", opts)

-- CENTER MIDDLE
keymap("n", "mm", "zz", opts)

-- SCROLL DOWN
keymap("i", "<C-j>", "<Esc>6<C-e>i", opts)
keymap("v", "<C-j>", "6<C-e>", opts)
keymap("n", "<C-j>", "6<C-e>", opts)

-- HALF DOWN
keymap("n", "<C-A-j>", "<C-d>M", opts)
keymap("i", "<C-A-j>", "<Esc><C-d>M", opts)
keymap("v", "<C-A-j>", "<C-d>M", opts)

-- SCROLL UP
keymap("i", "<C-k>", "<Esc>6<C-y>i", opts)
keymap("v", "<C-k>", "6<C-y>", opts)
keymap("n", "<C-k>", "6<C-y>", opts)

-- HALF UP
keymap("n", "<C-A-k>", "<C-u>M", opts)
keymap("i", "<C-A-k>", "<Esc><C-u>M", opts)
keymap("v", "<C-A-k>", "<C-u>M", opts)


-- ---------------------------------------------
-- -- EDIT
-- ---------------------------------------------

-- new file in tab
keymap("n", "<C-t>", ":enew<cr>", opts)
keymap("i", "<C-t>", "<esc>:enew<cr>", opts)

-- 4X 
keymap("n", "<A-d>", "4x")
keymap("n", "<leader>d", "4x")
keymap("n", "<leader>x", "4x")
keymap("n", "<space>d", "4x")

-- JOIN LINES
keymap("n", "<leader>j", "J", opts)

-- COPY SYSTEM CLIPBOARD
keymap("v", "<C-c>", '"*ygv"+y', opts)
keymap("v", "<C-x>", '"+ygv"*d', opts)

-- PASTE
-- keymap("n", "<C-v>", ':set paste<cr>i<c-r>+<esc>:set nopaste<cr>`[v`]=', opts)
keymap("n", "<C-v>", 'i<esc>"*p`[v`]', opts)
keymap("v", "<C-v>", 'c<ESC>"*p`[v`]=', opts)
keymap("i", "<C-v>", '<esc>"*p`[v`]', opts)
-- paste without format
-- keymap("n", "<A-v>", 'i<esc>"*p`[v`]<esc>', opts)
-- to buffers, other windows
keymap("n", "<A-v>", "<C-r>+", opts)

-- INSERT END OF LINE
keymap("i", "<A-i>", "<esc>A", opts)
keymap("v", "<A-i>", "A", opts)
keymap("n", "<A-i>", "A", opts)

-- DUPLICATE LINES
-- keymap("i", "<A-D>", "<Esc>:t.<CR>i", opts)
-- keymap("v", "<A-D>", ":t.<CR>", opts)
keymap("n", "<A-D>", ":t.<CR>", opts)
keymap("i", "<A-D>", "<esc>:t.<CR>a", opts)
keymap("v", "<A-D>", "ygvvo<esc>p`[v`]=", opts)


-- DELETE LINE
keymap("i", "<C-d>", "<Esc>dd", opts)
keymap("v", "<C-d>", "dd", opts)
keymap("n", "<C-d>", "dd", opts)
-- keymap("n", "<A-d>", "dd", opts)

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
keymap("n", "<C-;>", "ciw", opts)
keymap("i", "<C-;>", "<Esc>ciw", opts)

-- BLOCK VISUAL
keymap("n", "<C-A-v>", "<C-v>", opts)
keymap("i", "<C-A-v>", "<C-v>", opts)
keymap("n", "<leader>v", "<C-v>", opts)
keymap("i", "<leader>v", "<C-v>", opts)


-- ---------------------------------------------
-- EMPTY LINES 
-- ---------------------------------------------

vim.cmd [[
" empty lines below
function! AddEmptyLineBelow()
call append(line("."), "")
call append(line("."), "")
call append(line("."), "")
call append(line("."), "")
call append(line("."), "")
call append(line("."), "")
endfunction
nnoremap <A-J> :call AddEmptyLineBelow()<CR>
inoremap <A-J> <esc>:call AddEmptyLineBelow()<CR>i
" nnoremap <leader>ie :call AddEmptyLineBelow()<CR>
nnoremap <silent> <leader>E :call AddEmptyLineBelow()<CR>
inoremap <silent> <leader>E <esc>:call AddEmptyLineBelow()<CR>i
]]

