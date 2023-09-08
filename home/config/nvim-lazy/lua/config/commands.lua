


-----------------------------------------------
-- NERDTREE
-----------------------------------------------
vim.cmd [[ 

command! Oconfig :NERDTree ~/.config/nvim 
command! Oworkspace :NERDTree ~/workspace/dans
" command! Ocamel :NERDTree ~/workspace/workapps/camel-tutor-2
command! Oref :NERDTree ~/workspace/.work/winconfig/reference-md

]]


-- ---------------------------------------------
-- Format 
-- ---------------------------------------------

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




