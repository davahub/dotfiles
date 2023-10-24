
-- --------------------------------------------------------
-- CMD
-- --------------------------------------------------------

-- turn off auto commevident after o
vim.cmd [[autocmd FileType * set formatoptions-=ro]]
vim.cmd [[filetype plugin on]]
-- allow auto-indenting depending on file type
vim.cmd [[filetype plugin indent on]]
-- highlight syntax
vim.cmd [[syntax on]]
vim.cmd [[:au FocusLost * :wa]]
-- check if file is changed outside vim
vim.cmd [[au FocusGained,BufEnter * :checktime]]
-- vim.cmd [[:au BufLeave * :wa]]

-- vim.cmd [[
-- autocmd FileType vimwiki         nnoremap <buffer> <expr> k (v:count == 0 ? 'gk' : 'k') 
-- autocmd FileType vimwiki         nnoremap <buffer> <expr> j (v:count == 0 ? 'gj' : 'j')
-- ]]


-- ---------------------------------------------
-- -- FILE TYPES 
-- ---------------------------------------------

vim.cmd [[autocmd BufNewFile,BufRead *.aliases set filetype=bash]]
vim.cmd [[autocmd BufNewFile,BufRead conky.conf set filetype=lua ]]
vim.cmd [[autocmd BufNewFile,BufRead *.wiki set filetype=vimwiki ]]

vim.cmd [[ autocmd Filetype markdown setlocal com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,b:- | set formatoptions=tcroqln ]]
-- vim.cmd [[autocmd BufNewFile,BufRead *. set filetype=bash]]
-- vim.cmd [[autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc]]



