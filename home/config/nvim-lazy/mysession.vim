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
badd +23 workspace/dans/src/components/mycarditems.tsx
badd +14 NERD_tree_1
badd +23 workspace/dans/src/components/mydropdown.tsx
badd +1837 workspace/.work/winconfig/reference-md/reference.md
badd +1 .config/nvim/lua/config/autocmd.lua
badd +28 .config/nvim/lua/config/commands.lua
badd +13 .config/nvim/lua/config/options.lua
badd +19 .config/nvim/lua/plugins/treesitter.lua
argglobal
%argdel
$argadd workspace/.work/winconfig/reference-md/reference.md
edit .config/nvim/lua/config/options.lua
argglobal
balt .config/nvim/lua/plugins/treesitter.lua
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
80,87fold
110,149fold
151,153fold
let &fdl = &fdl
let s:l = 13 - ((12 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
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
