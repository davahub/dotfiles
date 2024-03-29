
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set


-- ---------------------------------------------
-- -- MAIN
-- ---------------------------------------------

-- RUN
keymap("n", "<F5>", ':w | :! python "%"<cr>', opts)
keymap("i", "<F5>", '<esc>:w | :! python "%"<cr>', opts)
-- keymap("n", "<F5>", ":! deploy<cr><esc>", opts)

-- RELAY MACRO
keymap("n", "\\", "@", opts)
-- nnoremap <\> @

-- FIND
-- keymap("n", "<C-f>", "/", opts)
-- nnoremap <C-f> /

keymap("n", "<F3>", ":set hlsearch!<cr>", opts)
keymap("n", "<leader>h", ":set hlsearch!<cr>", opts)
-- keymap("n", "<cr>", ":set hlsearch!<cr>", opts)


-- FOLD CODE
keymap("n", "<A-f>", "za", opts)
-- keymap("n", "<leader>f", "zc", opts)
keymap("i", "<A-f>", "<Esc>za", opts)

-- FORMAT CODE
keymap("n", "<leader>t", ":Format<CR>", opts)

-- EXPLORER
keymap("n", "<leader>ee", ":Ex<CR>", opts)
keymap("v", "<leader>ee", ":Ex<CR>", opts)

-- SOURCE
keymap("n", "<C-0>", ":w<CR>:so<CR>:echom 'source success!'<cr>", opts)
keymap("n", "<A-0>", ":w<CR>:so<CR>:echom 'source success!'<cr>", opts)

-- SAVE
keymap("i", "<C-s>", "<Esc>:w<CR>", opts)
keymap("v", "<C-s>", ":w<CR>", opts)
keymap("n", "<C-s>", ":w<CR>", opts)

-- ESC
keymap('n', "<A-j>", "<Esc>:set nohlsearch<cr>", opts)
-- down
-- keymap("n", "<A-j>", "<C-d>M", opts)
-- up
-- keymap("n", "<A-k>", "<C-u>M", opts)

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
keymap("n", "<C-i>", "<C-i>", opts)
keymap("n", "<tab>", "==", opts)
-- below doesn't work actual keymap is in lsp plugin
keymap("v", "<tab>", "=", opts)
keymap("n", "<leader><tab>", 'A<space><esc>8i<C-i><esc>A', opts)
-- keymap("i", "<leader><tab>", ">ab>", opts)
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

-- 8x word forward and backward
keymap("n", "<leader>w", "8w", opts)
keymap("n", "<leader>b", "8b", opts)

-- 8x word-end forward and backward
keymap("n", "<leader>e", "8e", opts)
keymap("v", "<leader>e", "8e", opts)


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
keymap("v", 'K', "6k", opts)


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
keymap("i", "<C-e>", "<esc><esc>A", opts)
keymap("v", "<C-e>", "$", opts)
keymap("n", "<C-e>", "A", opts)
keymap("n", "<C-A-e>", "<C-e>", opts)

keymap("v", "L", "$", opts)
keymap("n", "L", "$", opts)

-- SWITCH LINES DOWN
keymap("v", "<C-down>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<C-A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("n", "<C-down>", "v$:m '>+1<CR>gv=gv<Esc>", opts)
keymap("n", "<C-A-j>", "v$:m '>+1<CR>gv=gv<Esc>", opts)

-- SWITCH LINES UP
keymap("v", "<C-up>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "<C-A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("n", "<C-up>", "v$:m '>-2<CR>gv=gv<Esc>", opts)
keymap("n", "<C-A-k>", "v$:m '>-2<CR>gv=gv<Esc>", opts)

-- CENTER MIDDLE
keymap("n", "mm", "zz", opts)
keymap("i", "<C-m>", "<esc>zza", opts)

-- SCROLL DOWN
keymap("i", "<C-j>", "<Esc>6<C-e>i", opts)
keymap("v", "<C-j>", "6<C-e>", opts)
keymap("n", "<C-j>", "6<C-e>", opts)

-- HALF DOWN
keymap("n", "<A-m>", "<C-d>M", opts)
-- keymap("n", "<C-d>", "<C-d>M", opts)
-- keymap("i", "<C-d>", "<esc><C-d>M", opts)
-- keymap("n", "<C-A-j>", "<C-d>M", opts)
-- keymap("n", "<space-j>", "<C-d>M", opts)
-- keymap("i", "<C-A-j>", "<Esc><C-d>M", opts)
-- keymap("v", "<C-A-j>", "<C-d>M", opts)

-- HALF UP
keymap("n", "<A-,>", "<C-u>M", opts)
-- keymap("n", "<C-u>", "<C-u>M", opts)
-- keymap("i", "<C-u>", "<esc><C-u>M", opts)
-- keymap("n", "<C-A-k>", "<C-u>M", opts)
-- keymap("n", "<space-k>", "<C-u>M", opts)
-- keymap("i", "<C-A-k>", "<Esc><C-u>M", opts)
-- keymap("v", "<C-A-k>", "<C-u>M", opts)

-- SCROLL UP
keymap("i", "<C-k>", "<Esc>6<C-y>i", opts)
keymap("v", "<C-k>", "6<C-y>", opts)
keymap("n", "<C-k>", "6<C-y>", opts)



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
-- keymap("n", "<space>d", "4x")

-- JOIN LINES
keymap("n", "<leader>j", "J", opts)

-- COPY SYSTEM CLIPBOARD
keymap("v", "<C-c>", '"*ygv"+y', opts)
keymap("v", "<C-x>", '"+ygv"*d', opts)

-- PASTE
-- keymap("n", "<C-v>", ':set paste<cr>i<c-r>+<esc>:set nopaste<cr>`[v`]=', opts)
keymap("n", "<C-v>", 'i<esc>"*p', opts)
keymap("v", "<C-v>", 'c<ESC>"*p`[v`]=', opts)
keymap("i", "<C-v>", '<esc>"*p', opts)
-- go to last pasted text
keymap("n", "gp", "`[v`]", opts)
-- paste without format
-- keymap("n", "<A-v>", 'i<esc>"*p`[v`]<esc>', opts)
-- to buffers, other windows
keymap("n", "<A-v>", 'i<esc>"*p`[v`]=', opts)
keymap("v", "<A-v>", 'c<ESC>"*p`[v`]=', opts)
keymap("i", "<A-v>", '<esc>"*p`[v`]==', opts)
-- keymap("n", "<A-V>", "<C-r>+", opts)
-- keymap("i", "<A-V>", "<esc><C-r>+", opts)

-- INSERT END OF LINE
keymap("i", "<A-i>", "<esc>A", opts)
keymap("v", "<A-i>", "A", opts)
keymap("n", "<A-i>", "A", opts)

-- DUPLICATE LINES
-- keymap("i", "<A-D>", "<Esc>:t.<CR>i", opts)
-- keymap("v", "<A-D>", ":t.<CR>", opts)
keymap("n", "<A-D>", ":t.<CR>", opts)
keymap("i", "<A-D>", "<esc>:t.<CR>a", opts)
-- keymap("v", "<A-D>", "ygvvo<esc>p`[v`]=", opts)
keymap("v", "<A-D>", '"*ygv"+yki<esc>"*p', opts)


-- DELETE LINE
-- keymap("i", "<C-d>", "<Esc>dd", opts)
-- keymap("v", "<C-d>", "dd", opts)
-- keymap("n", "<C-d>", "dd", opts)
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
keymap("n", "<C-;>", "bciw", opts)
keymap("i", "<C-;>", "<Esc>bciw", opts)

-- BLOCK VISUAL
keymap("n", "<C-A-v>", "<C-v>", opts)
keymap("i", "<C-A-v>", "<C-v>", opts)
keymap("n", "<leader>v", "V", opts)
keymap("v", "<leader>v", "V", opts)


-- ---------------------------------------------
-- Vista 
-- ---------------------------------------------
keymap("n", "<A-r>", ":Vista finder ctags<CR>", opts)
keymap("n", "<F9>", ":Vista!!<CR>", opts)
function _G.toggle_term()
  local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
  end
  local filetype = vim.api.nvim_buf_get_option(0, 'filetype')
  if filetype == 'fzf' then
    return t"<Esc>"
  else
    return "<Esc>:set nohlsearch<cr>"
  end
end
vim.api.nvim_set_keymap('t', '<A-j>', 'v:lua.toggle_term()', { expr = true, silent = true, noremap = true })


-- ---------------------------------------------
-- VIM VIKI 
-- ---------------------------------------------
keymap("n", "<C-A-up>", "<Plug>VimwikiDiaryPrevDay", opts)

keymap("n", "<C-A-down>", "<Plug>VimwikiDiaryNextDay", opts)

keymap("n", "<leader>nl", "<Plug>VimwikiNextLink", opts)

keymap("n", "<leader>pl", "<Plug>VimwikiPrevLink", opts)

-- surround with bold
keymap("n", "<leader>bo", "I**<esc>A**  <esc>", opts)


-- ---------------------------------------------
-- Mark 
-- ---------------------------------------------
keymap("n", "'A", "'Azz", opts)
keymap("n", "'B", "'Bzz", opts)
keymap("n", "'C", "'Czz", opts)
keymap("n", "'D", "'Dzz", opts)

keymap("n", "'a", "'azz", opts)
keymap("n", "'b", "'bzz", opts)
keymap("n", "'c", "'czz", opts)
keymap("n", "'d", "'dzz", opts)



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
]]

