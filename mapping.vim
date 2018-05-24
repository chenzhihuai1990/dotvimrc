nnoremap <localleader> ,

nmap <leader>w :ChooseWin<cr>
nmap <localleader>w <plug>(easymotion-w)
nmap <localleader>g ;ChooseWin<Cr>
nmap <localleader>s ;ChooseWinSwap<Cr>
nmap <localleader>r ;CtrlPBufTag<Cr>
nmap <localleader>o ;OverCommandLine<Cr>
nmap <localleader>a ;Ack 
nmap <localleader>l ;ZoomIn<Cr>
nmap <localleader>s ;ZoomOut<Cr>

"change default behavior
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap ; :
nnoremap : <Nop>
map f <plug>(easymotion-fl)
map F <plug>(easymotion-Fl)
map t <plug>(easymotion-tl)
map T <plug>(easymotion-Tl)


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

nmap <localleader>1 <Plug>AirlineSelectTab1
nmap <localleader>2 <Plug>AirlineSelectTab2
nmap <localleader>3 <Plug>AirlineSelectTab3
nmap <localleader>4 <Plug>AirlineSelectTab4
nmap <localleader>5 <Plug>AirlineSelectTab5
nmap <localleader>6 <Plug>AirlineSelectTab6
nmap <localleader>7 <Plug>AirlineSelectTab7
nmap <localleader>8 <Plug>AirlineSelectTab8
nmap <localleader>9 <Plug>AirlineSelectTab9
nmap <localleader>- <Plug>AirlineSelectPrevTab
nmap <localleader>+ <Plug>AirlineSelectNextTab
