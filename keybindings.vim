nnoremap <localleader> ,

"nmap <leader>o ;OverCommandLine<Cr>

"change default behavior
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap ; :
vnoremap ; :
map f <plug>(easymotion-fl)
map F <plug>(easymotion-Fl)
map t <plug>(easymotion-tl)
map T <plug>(easymotion-Tl)
nnoremap H ^
nnoremap L $
cnoremap <c-f> <right>
cnoremap <c-b> <left>
cnoremap <c-a> <home>
cnoremap <c-e> <end>

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

nmap <localLeader>1 <Plug>lightline#bufferline#go(1)
nmap <localLeader>2 <Plug>lightline#bufferline#go(2)
nmap <localLeader>3 <Plug>lightline#bufferline#go(3)
nmap <localLeader>4 <Plug>lightline#bufferline#go(4)
nmap <localLeader>5 <Plug>lightline#bufferline#go(5)
nmap <localLeader>6 <Plug>lightline#bufferline#go(6)
nmap <localLeader>7 <Plug>lightline#bufferline#go(7)
nmap <localLeader>8 <Plug>lightline#bufferline#go(8)
nmap <localLeader>9 <Plug>lightline#bufferline#go(9)
nmap <localLeader>0 <Plug>lightline#bufferline#go(10)

