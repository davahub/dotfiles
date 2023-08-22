
" -------------------------------------------------------
" -- PLUGINS
" -------------------------------------------------------
lua require('plugins')
lua require('color')


" -------------------------------------------------------
" -- COMMANDS
" -------------------------------------------------------
command! Format :w | :! prettier %:p --write
command! Focus :NERDTreeFind
command! Oconfig :NERDTree ~/.config/nvim
command! Oworkspace :NERDTree ~/.config/nvim


"-------------------------------------------------------
"-- KEYMAP
"-------------------------------------------------------

" nerd toggle
nnoremap <F8> :NERDTreeToggle<CR>

" dir config
nnoremap <space>dc :NERDTree ~/.config/nvim<CR>

" dir workspace
nnoremap <space>dw :NERDTree ~/workspace<CR>







