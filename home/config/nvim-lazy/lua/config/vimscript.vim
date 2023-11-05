
" highlight Cursor gui=reverse guifg=Green guibg=Green
" highlight nCursor gui=NONE guifg=green guibg=green
" highlight Cursor gui=NONE guifg=green guibg=green
" highlight iCursor gui=NONE guifg=green guibg=green
" " set guicursor=i-ci:ver30-Cursor,n-v-c:blinkwait200-blinkoff1000-blinkon800-Cursor,r-cr-o:hor20
" set guicursor=i-ci:ver30-Cursor,n-v-c:block-Cursor,r-cr-o:hor20




" ---------------------------------------------
" -- AUTOCMD 
" ---------------------------------------------

" auto save folds
" augroup remember_folds
"   autocmd!
"   autocmd BufWritePost *.tsx mkview
"   autocmd BufEnter *.tsx silent! loadview
" augroup END



" ---------------------------------------------
" -- KEYMAP 
" ---------------------------------------------
nnoremap <expr> k (&wrap && v:count == 0 ? 'gk' : 'k')
vnoremap <expr> k (&wrap && v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (&wrap && v:count == 0 ? 'gj' : 'j')
vnoremap <expr> j (&wrap && v:count == 0 ? 'gj' : 'j')

" NERDTREE ----
nnoremap <silent><F8> :NERDTreeToggle<CR>
vnoremap <silent><F8> :NERDTreeToggle<CR>
inoremap <silent><F8> <esc>:NERDTreeToggle<CR>

"dir config
nnoremap <space>dc :NERDTree ~/.config/nvim<CR>

" dir workspace
nnoremap <space>dw :NERDTree ~/workspace/dans<CR>

" focus nerd tree 
nnoremap <space>f :NERDTreeFocus<CR>
" ----

" CLOSE WINDOW
nnoremap <silent> W :Bclose<CR>
" vnoremap <silent> W :Bclose<CR>
" inoremap <silent> W <esc>:Bclose<CR>

" TOGGLE COMMENT
nnoremap <silent> <A-e> :call MyCommentToggle()<CR>
inoremap <silent> <A-e> <Esc>:call MyCommentToggle()<CR>
vnoremap <silent> <A-e> :Commentary<CR>


" ---------------------------------------------
" -- COMMANDS 
" ---------------------------------------------
" command! Bclose call s:Kwbd(1)
" nnoremap <silent> <Leader>bd :Bclose<CR>
 
" comments ----
command! -nargs=1 Com :call MyF(<f-args>)
command! Comsh :call MyF("#")
command! Comjs :call MyF("//")
command! Comjsx :set commentstring={\/*%s*\/}

" source
command! Sr :w | :source ~/.config/nvim/init.vim | :noh

" wrap toggle
command! Wrap :set wrap! 

" package manager
command! Ls :w | :so | :Lazy sync 
" command! Ps :w | :so | :PackerSync

" close all buffer but this one
command! Closeall :%bd|e# 

" LOAD SAVE
command! Load :call LoadSession() | :Oworkspace
command! Save :NERDTreeClose | :Vista! | :call SaveSession()

" Save session on quitting Vim
" autocmd VimLeave * NERDTreeClose
" autocmd VimLeave * mksession! [filename]

" Restore session on starting Vim
" autocmd VimEnter * call MySessionRestoreFunction()
" autocmd VimEnter * NERDTree


" ---------------------------------------------
" -- FUNCTIONs 
" ---------------------------------------------

" sessions
function! SaveSession()
  mksession! ~/.config/nvim/mysession.vim
endfunction

function! LoadSession()
  source ~/.config/nvim/mysession.vim
endfunction

func! MyF(comment)
  let str_comment = a:comment
  if str_comment == '"'
    exe ':set commentstring=\' . a:comment . '%s'
    return
  endif
  exe ':set commentstring=' . a:comment . '%s'
endfunc

func! MyCommentToggle()
  if getline('.') =~ '^\s*$'
    :normal itext
    Commentary
    if &filetype ==# 'vimwiki'
      :normal $dbx
    else
      :normal ==$dbx
    endif
    :startinsert!
  else
    Commentary
  endif
endfunc

command! Bclose :bp|bd #

