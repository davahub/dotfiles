
" -------------------------------------------------------
" -- PLUGINS
" -------------------------------------------------------
lua require('plugins')
lua require('color')


let NERDTreeIgnore = ['__init__.py', '__pycache__', 'node_modules']
" -------------------------------------------------------
" -- COMMANDS
" -------------------------------------------------------
command! Ps :PackerSync
command! Format :w | :! prettier %:p --write
command! Focus :NERDTreeFind
command! Oconfig :NERDTree ~/.config/nvim
command! Oworkspace :NERDTree ~/workspace/dans
command! Oref :NERDTree ~/workspace/.work/winconfig/reference-md


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

" duplicate
vnoremap <A-D> ygvvo<esc>p`[v`]=



