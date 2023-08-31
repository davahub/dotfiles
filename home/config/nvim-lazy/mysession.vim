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
badd +32 workspace/dans/src/components/mytable.tsx
badd +120 workspace/dans/src/components/mydropdown.tsx
badd +6 .1homepc/home/config/nvim-lazy/lua/config/options.lua
badd +1 workspace/dans/src/components/mycarditems.tsx
badd +406 workspace/.work/winconfig/reference-md/linux.md
badd +1 workspace/.work/winconfig/reference-md/reference.md
badd +5 .config/nvim/init.lua
badd +25 .config/nvim/lua/config/keymaps.lua
argglobal
%argdel
$argadd workspace/.work/winconfig/reference-md/reference.md
edit .1homepc/home/config/nvim-lazy/lua/config/options.lua
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
40,49fold
39,50fold
61,64fold
59,66fold
81,88fold
111,150fold
152,154fold
let &fdl = &fdl
let s:l = 6 - ((5 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 054|
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
