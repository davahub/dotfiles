let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +38 workspace/dans/src/components/mycarditems.tsx
badd +3541 workspace/.work/winconfig/reference-md/linux.md
badd +61 .1homepc/home/config/nvim/lua/plugins.lua
badd +30 .1homepc/home/config/nvim/after/plugin/vimshortcuts.vim
badd +2 .1homepc/home/config/nvim/after/plugin/dressing.lua
badd +94 workspace/dans/api/account.py
badd +86 ~/workspace/dans/api/transaction.py
badd +1 .config/nvim/after/plugin/snippet.lua
badd +14 ~/.config/nvim/my_snippets/snippets/global.json
badd +3 .1homepc/home/config/nvim/after/plugin/spectre.lua
argglobal
%argdel
$argadd ~/.config/nvim/my_snippets/snippets/global.json
edit .1homepc/home/config/nvim/after/plugin/spectre.lua
argglobal
balt workspace/.work/winconfig/reference-md/linux.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 3 - ((2 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
