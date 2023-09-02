

" ---------------------------------------------
" -- NERD DIR 
" ---------------------------------------------
command! Oconfig :NERDTree ~/.config/nvim 
command! Oworkspace :NERDTree ~/workspace/dans
command! Ocamel :NERDTree ~/workspace/workapps/camel-tutor-2
command! Oref :NERDTree ~/workspace/.work/winconfig/reference-md


" ---------------------------------------------
" -- KEYMAP 
" ---------------------------------------------
" NERDTREE ----
nnoremap <F8> :NERDTreeToggle<CR>

"dir config
nnoremap <space>dc :NERDTree ~/.config/nvim<CR>

" dir workspace
nnoremap <space>dw :NERDTree ~/workspace/dans<CR>

" focus nerd tree 
nnoremap <space>f :NERDTreeFocus<CR>
" ----

" CLOSE WINDOW
nnoremap <silent> W :Bclose<CR>
vnoremap <silent> W :Bclose<CR>
inoremap <silent> W <esc>:Bclose<CR>

" TOGGLE COMMENT
nnoremap <silent> <A-e> :call MyCommentToggle()<CR>
inoremap <silent> <A-e> <Esc>:call MyCommentToggle()<CR>
vnoremap <silent> <A-e> :Commentary<CR>


" ---------------------------------------------
" -- COMMANDS 
" ---------------------------------------------
command! Bclose call s:Kwbd(1)

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


function s:Kwbd(kwbdStage)
  if(a:kwbdStage == 1)
    if(&modified)
      let answer = confirm("This buffer has been modified.  Are you sure you want to delete it?", "&Yes\n&No", 2)
      if(answer != 1)
        return
      endif
    endif
    if(!buflisted(winbufnr(0)))
      bd!
      return
    endif
    let s:kwbdBufNum = bufnr("%")
    let s:kwbdWinNum = winnr()
    windo call s:Kwbd(2)
    execute s:kwbdWinNum . 'wincmd w'
    let s:buflistedLeft = 0
    let s:bufFinalJump = 0
    let l:nBufs = bufnr("$")
    let l:i = 1
    while(l:i <= l:nBufs)
      if(l:i != s:kwbdBufNum)
        if(buflisted(l:i))
          let s:buflistedLeft = s:buflistedLeft + 1
        else
          if(bufexists(l:i) && !strlen(bufname(l:i)) && !s:bufFinalJump)
            let s:bufFinalJump = l:i
          endif
        endif
      endif
      let l:i = l:i + 1
    endwhile
    if(!s:buflistedLeft)
      if(s:bufFinalJump)
        windo if(buflisted(winbufnr(0))) | execute "b! " . s:bufFinalJump | endif
    else
      enew
      let l:newBuf = bufnr("%")
      windo if(buflisted(winbufnr(0))) | execute "b! " . l:newBuf | endif
  endif
  execute s:kwbdWinNum . 'wincmd w'
endif
if(buflisted(s:kwbdBufNum) || s:kwbdBufNum == bufnr("%"))
  execute "bd! " . s:kwbdBufNum
endif
if(!s:buflistedLeft)
  set buflisted
  set bufhidden=delete
  set buftype=
  setlocal noswapfile
endif
else
  if(bufnr("%") == s:kwbdBufNum)
    let prevbufvar = bufnr("#")
    if(prevbufvar > 0 && buflisted(prevbufvar) && prevbufvar != s:kwbdBufNum)
      b #
    else
      bn
    endif
  endif
endif
endfunction



