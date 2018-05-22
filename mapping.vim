nnoremap ; :
nnoremap <localleader> ,

map f <plug>(easymotion-fl)
map F <plug>(easymotion-Fl)
map t <plug>(easymotion-tl)
map T <plug>(easymotion-Tl)

map <buffer> <localleader>w <plug>(easymotion-w)

imap jk <Esc>
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

nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
