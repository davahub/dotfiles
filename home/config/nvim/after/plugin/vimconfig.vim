
" --------------------------------------------------------
" -- MAIN
" -------------------------------------------------------

lua require('treesitter')


" --------------------------------------------------------
" -- NETRW Explorer
" -------------------------------------------------------

" set window size
let g:netrw_winsize=15

" kill netrw buffer for toggle
augroup AutoDeleteNetrwHiddenBuffers
  au!
  au FileType netrw setlocal bufhidden=wipe
augroup end

nnoremap <F8> :Lexplore %:p:h<cr>


"-------------------------------------------------------
"-- Markdown
"-------------------------------------------------------
" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

let g:markdown_minlines = 100

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" disable default keybindings
let g:vim_markdown_no_default_key_mappings = 1


"-------------------------------------------------------
"-- NVIM Tree
"-------------------------------------------------------
" nnoremap <F8> :NvimTreeToggle<CR> 
" nnoremap <F6> :NvimTreeRefresh<CR>  
" nnoremap <F5> :NvimTreeFindFile<CR> 

