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
badd +19 workspace/dans/src/pages/index.tsx
badd +40 .1homepc/home/config/nvim-lazy/lua/config/keymaps.lua
badd +352 workspace/dans/src/components/mycarditems.tsx
badd +769 workspace/.work/winconfig/reference-md/reference.md
badd +104 .config/nvim/lua/config/options.lua
badd +82 .config/nvim/lua/plugins/lsp.lua
argglobal
%argdel
$argadd workspace/.work/winconfig/reference-md/reference.md
edit .config/nvim/lua/plugins/lsp.lua
argglobal
balt .config/nvim/lua/config/options.lua
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
10,12fold
7,13fold
19,27fold
18,28fold
17,29fold
14,30fold
50,54fold
57,60fold
55,61fold
62,67fold
69,71fold
49,72fold
48,73fold
47,74fold
77,79fold
75,80fold
108,110fold
115,117fold
93,118fold
91,119fold
124,138fold
142,147fold
150,153fold
148,154fold
39,156fold
36,157fold
176,178fold
180,184fold
179,185fold
169,195fold
168,196fold
198,200fold
165,205fold
162,206fold
215,221fold
229,234fold
227,235fold
236,239fold
240,246fold
247,253fold
247,255fold
226,256fold
260,262fold
260,264fold
259,265fold
270,272fold
268,273fold
278,280fold
278,282fold
276,283fold
222,284fold
210,285fold
2,288fold
let &fdl = &fdl
let s:l = 82 - ((27 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 82
normal! 025|
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
