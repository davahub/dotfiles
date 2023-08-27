
" nnoremap <space> <Nop>
" let mapleader = " "


"-------------------------------------------------------
"-- KEY MAPPING
"-------------------------------------------------------

func! MyF(comment)
  let str_comment = a:comment
  if str_comment == '"'
    exe ':set commentstring=\' . a:comment . '%s'
    return
  endif
  exe ':set commentstring=' . a:comment . '%s'
endfunc
command! -nargs=1 Com :call MyF(<f-args>)
command! Comsh :call MyF("#")
command! Comjs :call MyF("//")

 

" COMMENT TOGGLE
func! MyCommentToggle()
  if getline('.') =~ '^\s*$'
    :normal i tt
    :normal 0x
    Commentary
    :normal wdw==
    :startinsert!
    echo 'commenting empty line!'
  else
    Commentary
  endif
endfunc

nnoremap <A-e> :call MyCommentToggle()<CR>
inoremap <A-e> <Esc>:call MyCommentToggle()<CR>
vnoremap <A-e> :Commentary<CR>

 

" empty lines below
function! AddEmptyLineBelow()
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
  call append(line("."), "")
endfunction
" nnoremap <C-A-j> :call AddEmptyLineBelow()<CR>
nnoremap <leader>ie :call AddEmptyLineBelow()<CR>
nnoremap <silent> <A-J> :call AddEmptyLineBelow()<CR>
inoremap <silent> <A-J> <esc>:call AddEmptyLineBelow()<CR>i

" tab mapping is mapped to ctrl-i so don't enable
" indent tab
" nnoremap <tab> >>w
" vnoremap <tab> >





