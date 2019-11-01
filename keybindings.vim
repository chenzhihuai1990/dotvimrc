vmap <cr> :EasyAlign<cr>
vmap <c-a> :EasyAlign /

if !has('g:remmaping_semicolon')
    let g:remmaping_semicolon = 1
end
nnoremap ; :
vnoremap ; :
nnoremap q; q:
vnoremap q; q:
map <c-n> <plug>(easymotion-next)
map <c-p> <plug>(easymotion-prev)
nnoremap <localleader> ,
"change default behavior
map f <plug>(easymotion-fl)
map F <plug>(easymotion-Fl)
map t <plug>(easymotion-tl)
map T <plug>(easymotion-Tl)
"<c-;> and <c-,> is unavailable in terminal 
nnoremap H ^
nnoremap L $
cnoremap <c-f> <right>
cnoremap <c-b> <left>
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <C-BS> <C-w>
vnoremap < <gv
vnoremap > >gv
map Y y$
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap * *zv
nnoremap # #zv
nnoremap n nzv
nnoremap N Nzv
inoremap <C-BS> <C-w>
inoremap <C-S> <C-o>:update<Cr>
nnoremap <C-S> :update<Cr>
inoremap <ESC> <ESC>:set iminsert=0<CR>

nmap <leader>R <Plug>(coc-rename)
nmap <leader>p "+p
nmap <leader>y "+y


tnoremap <Esc> <C-\><C-n>
