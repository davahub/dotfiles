
" --------------------------------------------------------
" -- Neovide
" -------------------------------------------------------
if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    set guifont=Inconsolata:h18
    let g:neovide_refresh_rate = 60
    
    " antialiasing
    let g:neovide_cursor_antialiasing = v:true

    " animation length
    let g:neovide_cursor_animation_length = 0
    " vim.g.neovide_cursor_animation_length = 0.13

    " trail size
    let g:neovide_cursor_trail_size = 0.2
    " vim.g.neovide_cursor_trail_size = 0.8


endif


" ---------------------------------------------
" -- NVIM-QT 
" ---------------------------------------------

" set color of cc ruler
hi ColorColumn ctermbg=0 guibg=Grey23

" Set Editor Font
" if exists(':GuiFont')
" Use GuiFont! to ignore font errors
" GuiFont Inconsolata:h17
" GuiFont Hack Nerd Font Mono:h25
" GuiFont Inconsolata Nerd Font Mono:h16
" GuiFont Inconsolata LGC Nerd Font Mono:h16
" GuiFont RobotoMono Nerd:h16
" GuiFont FiraCode Nerd Font Mono:h14
" endif

" set color of cc ruler
hi ColorColumn ctermbg=0 guibg=Grey23

