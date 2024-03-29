
" -------------------------------------------------------
" -- Commands
" -------------------------------------------------------

" source
command! Sr :w | :source ~/.config/nvim/init.vim | :noh

" wrap toggle
command! Wrap :set wrap!

" python format
command! Fpython :w | :! black %:p

" format jsx prettier
command! Fprettier :w | :! prettier --write %:p
command! Fjsx :w | :! prettier --write %:p
command! Ftsx :w | :! prettier --write %:p

" xmlformat
vnoremap <F5> :! xmllint --format -
nnoremap <F5> ggVG:!xmllint --format -<CR>



" use call to call a function 
" function! Myformat()command So :w | :source ~/.config/nvim/init.vim | :noh
    " :! prettier %:p --write 
    " call append(line("."), "")
" endfunction
" com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
" nnoremap <F5> :FormatXML<Cr>


