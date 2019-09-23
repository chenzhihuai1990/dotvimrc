nnoremap <localleader> ,

vmap <cr> :EasyAlign<cr>
vmap <c-a> :EasyAlign /

nnoremap ; :
vnoremap ; :
"change default behavior
map f <plug>(easymotion-fl)
map F <plug>(easymotion-Fl)
map t <plug>(easymotion-tl)
map T <plug>(easymotion-Tl)
"<c-;> and <c-,> is unavailable in terminal 
map <c-n> <plug>(easymotion-next)
map <c-p> <plug>(easymotion-prev)
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
