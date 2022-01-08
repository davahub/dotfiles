let s:fontsize = 14
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! Consolas:h" . s:fontsize
endfunction

"noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
"noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
"inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
"inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

execute "GuiFont! Inconsolata:h" . s:fontsize

" set color of cc ruler
hi ColorColumn ctermbg=0 guibg=Grey23


