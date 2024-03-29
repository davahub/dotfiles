
" -------------------------------------------------------
" -- PLUGINS
" -------------------------------------------------------
lua require('plugins')
lua require('color')

let NERDTreeIgnore = ['__init__.py', '__pycache__', 'node_modules']


" -------------------------------------------------------
" -- COMMANDS
" -------------------------------------------------------
command! Ps :w | :so | :PackerSync
command! Format :w | :! prettier %:p --write
command! Focus :NERDTreeFind
command! Oconfig :NERDTree ~/.config/nvim
command! Oworkspace :NERDTree ~/workspace/dans
command! Oref :NERDTree ~/workspace/.work/winconfig/reference-md


" sessions
function! SaveSession()
  mksession! ~/.config/nvim/mysession.vim
endfunction

function! LoadSession()
  source ~/.config/nvim/mysession.vim
endfunction

" command! Ssession :NERDTreeClose | :call SaveSession()
" command! Lsession :call LoadSession() | :Oworkspace
command! Save :NERDTreeClose | :Vista! | :call SaveSession()
command! Load :call LoadSession() | :Oworkspace

" Save session on quitting Vim
" autocmd VimLeave * NERDTreeClose
" autocmd VimLeave * mksession! [filename]

" Restore session on starting Vim
" autocmd VimEnter * call MySessionRestoreFunction()
" autocmd VimEnter * NERDTree

" vim.g.myvar="longest"



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


"here is a more exotic version of my original Kwbd script
"delete the buffer; keep windows; create a scratch buffer if no buffers left
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

command! Bclose call s:Kwbd(1)
" CLOSE WINDOW
nnoremap <silent> W :Bclose<CR>
" keymap("n", 'W', ":bdelete<cr>", opts)


" Create a mapping (e.g. in your .vimrc) like this:
"nmap <C-W>! <Plug>Kwbd
