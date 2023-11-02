
-- ---------------------------------------------
-- Lua 
-- ---------------------------------------------
-- :h nvim_create_user_command
vim.api.nvim_create_user_command('Snipmarkdownswitch',
  function ()
    os.execute('neo-markdown-switch')
    vim.cmd[[ :e ~/.config/nvim/my_snippets/snippets/vimwiki.json | :w | :Bclose ]]
    vim.fn.feedkeys('zz')
  end, { desc = "switch snippet mediawiki and markdown" })


-- vim.api.nvim_create_user_command('SayHello', 'echo "Hello world!"', {'bang': v:true})

-- vim.api.nvim_create_user_command('VG', function (args)
--   local vimCmd = 'vertical Git'
--   if (args['args']) then
--     vimCmd = vimCmd .. ' ' .. args['args']
--   end
--   vim.cmd(vimCmd)
-- end, { desc = "Open Git vertically", nargs = '*' })


-- ---------------------------------------------
-- GENERAL 
-- ---------------------------------------------

vim.cmd [[ 
command! Cmarks :delm! | delm A-Z0-9 | delm []<> 

command! Ctoc :1d | g/.*- \[.*\](#.*)/d 
command! Vtoc :VimwikiTOC 
" command! Vtoc :1d | g/.*- \[.*\](#.*)/d | :w | call timer_start(1000, { tid -> execute(':VimwikiTOC')}) 

command! Chrome :! google-chrome-stable "%"

command! Copyfilepath let @+ = expand('%:p')

command! Python :! python "%"

command! Ctags :! ctags "%"

]]


-----------------------------------------------
-- NERDTREE
-----------------------------------------------
vim.cmd [[ 

command! Oconfig :NERDTree ~/.config/nvim 
command! Otestcode :NERDTree ~/workspace/coding
command! Oworkspace :NERDTree ~/workspace/dans
" command! Ocamel :NERDTree ~/workspace/workapps/camel-tutor-2
command! Oref :NERDTree ~/workspace/.work/winconfig/reference-md

command! Opersonal :NERDTree ~/workspace/personalsite
command! -nargs=+ Nt :NERDTree <args>

command! Slua :luafile %

command! Focus :NERDTreeFind 

]]


-- ---------------------------------------------
-- Convert 
-- ---------------------------------------------

vim.cmd [[ command! Convertunix :w | :! dos2unix %:p ]]



-- ---------------------------------------------
-- Format 
-- ---------------------------------------------

-- lua
vim.cmd [[ command! Flua :w | :! stylua %:p ]]

-- python 
vim.cmd [[ command! Fpython :w | :! black %:p ]]

-- prettier
vim.cmd [[ command! Fprettier :w | :! prettier --write %:p ]]
vim.cmd [[ command! Format :w | :! prettier --write %:p ]]
vim.cmd [[ command! Fjsx :w | :! prettier --write %:p ]]
vim.cmd [[ command! Ftsx :w | :! prettier --write %:p ]]
vim.cmd [[ command! Fjs :w | :! prettier --write %:p ]]
vim.cmd [[ command! Fjson :w | :! prettier --write %:p ]]

-- xmlformat
vim.cmd [[ command! Fxml :w | :! xmllint --format - ]]
-- nnoremap <F5> ggVG:!xmllint --format -<CR>




