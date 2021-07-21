" => IM Smart Switcher
if has('mac')
    let g:im_select_default = 'com.apple.keylayout.ABC'
elseif has('win32')
    let g:im_select_default = '1033'
    let g:im_select_command = expand('~/dotvimrc/integrations/im-select.exe')
endif
"let g:XkbSwitchEnabled = 1

" => Rainbow
let g:rainbow_active = 1
" => airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
if !exists('g:airline_mode_map')
    let g:airline_mode_map={}
endif

"let g:airline_highlighting_cache = 0
let g:airline_mode_map['ic'] = 'INSERT'
let g:airline_right_alt_sep = '◀'
let g:airline_detect_modified=0
let g:airline_symbols.maxlinenr = ' '
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#xkblayout#enabled = 0

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
" => choosewin
let g:choosewin_overlay_enable=1

" => Nerd Tree & Tagbar
let g:NERDTreeWinPos   = "left"
let NERDTreeShowHidden = 0
let NERDTreeIgnore     = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize  = 35
let g:tagbar_left      = 0

" => Smooth scroll
"nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 8, 2)<CR>
"nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 8, 2)<CR>
"nnoremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 8, 2)<CR>
"nnoremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 8, 2)<CR>

" => indentLine 
"let g:indentLine_char = ''
"set fcs=vert:
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'
set fcs=vert:▏

" => LeaderF
let g:Lf_ShowRelativePath=0
let g:Lf_ShortcutF      = ''
let g:Lf_StlColorscheme = 'one'
let g:Lf_ReverseOrder   = 1
let g:Lf_StlSeparator   = { 'left': '', 'right': '' }
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}

let g:Lf_StlColorscheme = 'gruvbox_material'

" => Matchup
let g:matchup_matchparen_offscreen={}
let g:matchup_override_vimtex=1
" => Peekaboo_window
let g:peekaboo_window = 'vertical botright 40new'
let g:peekaboo_delay  = 1000
" => delimitmate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
