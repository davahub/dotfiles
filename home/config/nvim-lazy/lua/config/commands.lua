

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

]]


-----------------------------------------------
-- NERDTREE
-----------------------------------------------
vim.cmd [[ 

command! Oconfig :NERDTree ~/.config/nvim 
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




