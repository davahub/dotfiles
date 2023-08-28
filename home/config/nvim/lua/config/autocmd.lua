
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
vim.cmd [[:au BufLeave * :wa]]


-- ---------------------------------------------
-- -- FILE TYPES 
-- ---------------------------------------------

vim.cmd [[autocmd BufNewFile,BufRead *.aliases set filetype=bash]]
-- vim.cmd [[autocmd BufNewFile,BufRead *. set filetype=bash]]
-- vim.cmd [[autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc]]
