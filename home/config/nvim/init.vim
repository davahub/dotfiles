
" -------------------------------------------------------
" -- PLUGINS
" -------------------------------------------------------
lua require('plugins')
lua require('color')


" -------------------------------------------------------
" -- COMMANDS
" -------------------------------------------------------
command! Ps :PackerSync
command! Format :w | :! prettier %:p --write
command! Focus :NERDTreeFind
command! Oconfig :NERDTree ~/.config/nvim
command! Oworkspace :NERDTree ~/workspace/dans


"-------------------------------------------------------
"-- KEYMAP
"-------------------------------------------------------

" nerd toggle
nnoremap <F8> :NERDTreeToggle<CR>

"dir config
nnoremap <space>dc :NERDTree ~/.config/nvim<CR>

" dir workspace
nnoremap <space>dw :NERDTree ~/workspace/dans<CR>

" focus nerd tree 
nnoremap <space>f :NERDTreeFocus<CR>

nnoremap <space>f :nerdtreefocus<cr>

let NERDTreeIgnore = ['__init__.py', '__pycache__', 'node_modules']

" nnoremap gp `[v`]

