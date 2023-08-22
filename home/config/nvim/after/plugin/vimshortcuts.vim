
" nnoremap <space> <Nop>
" let mapleader = " "


"-------------------------------------------------------
"-- KEY MAPPING
"-------------------------------------------------------




" COMMENT TOGGLE
func! MyCommentToggle()
    if getline('.') =~ '^\s*$'
        :normal i text
        :normal 0x
        Commentary
        :normal wdw
        :startinsert!
        echo 'commenting empty line!'
    else
        Commentary
    endif
endfunc
inoremap <A-e> <Esc>:call MyCommentToggle()<CR>
nnoremap <A-e> :call MyCommentToggle()<CR>
vnoremap <A-e> :call MyCommentToggle()<CR>


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





