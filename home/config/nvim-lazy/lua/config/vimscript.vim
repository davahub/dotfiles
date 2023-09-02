

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
nnoremap <silent><F8> :NERDTreeToggle<CR>

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


" Command ':Bclose' executes ':bd' to delete buffer in current window.
" Command ':Bclose!' is the same, but executes ':bd!' (discard changes).
function! s:Bclose(bang, buffer)
  if empty(a:buffer)
    let btarget = bufnr('%')
  elseif a:buffer =~ '^\d\+$'
    let btarget = bufnr(str2nr(a:buffer))
  else
    let btarget = bufnr(a:buffer)
  endif
  if btarget < 0
    call s:Warn('No matching buffer for '.a:buffer)
    return
  endif
  if empty(a:bang) && getbufvar(btarget, '&modified')
    call s:Warn('No write since last change for buffer '.btarget.' (use :Bclose!)')
    return
  endif
  " Numbers of windows that view target buffer which we will delete.
  let wnums = filter(range(1, winnr('$')), 'winbufnr(v:val) == btarget')
  if !g:bclose_multiple && len(wnums) > 1
    call s:Warn('Buffer is in multiple windows (use ":let bclose_multiple=1")')
    return
  endif
  let wcurrent = winnr()
  for w in wnums
    execute w.'wincmd w'
    let prevbuf = bufnr('#')
    if prevbuf > 0 && buflisted(prevbuf) && prevbuf != btarget
      buffer #
    else
      bprevious
    endif
    if btarget == bufnr('%')
      " Numbers of listed buffers which are not the target to be deleted.
      let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val) && v:val != btarget')
      " Listed, not target, and not displayed.
      let bhidden = filter(copy(blisted), 'bufwinnr(v:val) < 0')
      " Take the first buffer, if any (could be more intelligent).
      let bjump = (bhidden + blisted + [-1])[0]
      if bjump > 0
        execute 'buffer '.bjump
      else
        execute 'enew'.a:bang
      endif
    endif
  endfor
  execute 'bdelete'.a:bang.' '.btarget
  execute wcurrent.'wincmd w'
endfunction

command! -bang -complete=buffer -nargs=? Bclose call <SID>Bclose(<q-bang>, <q-args>)

