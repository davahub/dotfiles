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
badd +87 .1homepc/home/config/nvim-lazy/lua/config/keymaps.lua
badd +81 workspace/dans/api/account.py
badd +48 workspace/dans/api/app.py
badd +49 workspace/dans/src/app/page.tsx
badd +32 workspace/dans/src/components/mytable.tsx
badd +50 .config/nvim/lua/config/commands.lua
badd +39 .config/nvim/lua/config/options.lua
badd +149 ~/workspace/dans/api/util/data_util.py
badd +120 workspace/dans/src/components/mydropdown.tsx
badd +28 .1homepc/home/config/nvim-lazy/lua/config/vimscript.vim
argglobal
%argdel
$argadd workspace/.work/winconfig/reference-md/python.md
edit ~/workspace/dans/api/util/data_util.py
argglobal
balt workspace/dans/src/components/mydropdown.tsx
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
26,29fold
23,32fold
38,42fold
35,45fold
57,58fold
60,61fold
63,64fold
66,69fold
56,69fold
50,71fold
48,71fold
83,84fold
86,87fold
89,90fold
96,98fold
100,104fold
82,104fold
76,104fold
74,106fold
114,117fold
122,123fold
121,126fold
120,126fold
133,141fold
146,152fold
166,175fold
165,176fold
164,176fold
144,180fold
185,191fold
203,208fold
183,210fold
215,221fold
226,230fold
232,236fold
238,243fold
245,248fold
225,248fold
257,263fold
213,265fold
270,276fold
280,284fold
268,290fold
295,301fold
305,308fold
314,320fold
293,322fold
327,329fold
331,442fold
326,442fold
let &fdl = &fdl
144
normal! zo
let s:l = 149 - ((27 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 149
normal! 032|
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
