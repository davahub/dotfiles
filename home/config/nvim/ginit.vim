
" --------------------------------------------------------
" -- Neovide
" -------------------------------------------------------
if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    set guifont=Inconsolata:h17
    let g:neovide_refresh_rate = 60
endif

" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    " GuiFont Inconsolata:h17
    " GuiFont Hack Nerd Font Mono:h15
    GuiFont Inconsolata Nerd Font Mono:h16
endif

" set color of cc ruler
hi ColorColumn ctermbg=0 guibg=Grey23

