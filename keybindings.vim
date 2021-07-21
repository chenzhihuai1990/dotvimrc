if !has('g:remmaping_semicolon')
    let g:remmaping_semicolon = 1
end
"change default behavior
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
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap * *zv
nnoremap # #zv
nnoremap n nzv
nnoremap N Nzv
inoremap <C-BS> <C-w>
inoremap <ESC> <ESC>:set iminsert=0<CR>

nmap <leader>p "+p
nmap <leader>y "+y


tnoremap <Esc> <C-\><C-n>
