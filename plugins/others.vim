" => choosewin
let g:choosewin_overlay_enable=1

" => Nerd Tree & Tagbar
let g:NERDTreeWinPos   = "left"
let NERDTreeShowHidden = 0
let NERDTreeIgnore     = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize  = 35
let g:tagbar_left      = 0

" => Smooth scroll
nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
nnoremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 2)<CR>
nnoremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 2)<CR>

" => EasyMotion
let g:EasyMotion_do_mapping=0

" => indentLine 
let g:indentLine_char = ''

" => ywvim (Chinese Input Method) 
let g:ywvim_ims=[
            \['wb', '五笔', 'wubi.ywvim'],
            \['py', '拼音', 'pinyin.ywvim'],
            \]

let g:ywvim_py               = { 'helpim':'wb', 'gb':0 }
let g:ywvim_zhpunc           = 1
let g:ywvim_listmax          = 10
let g:ywvim_esc_autoff       = 0
let g:ywvim_autoinput        = 0
let g:ywvim_circlecandidates = 1
let g:ywvim_helpim_on        = 1
let g:ywvim_matchexact       = 0
let g:ywvim_chinesecode      = 1
let g:ywvim_gb               = 0
let g:ywvim_preconv          = 'g2b'
let g:ywvim_conv             = ''
let g:ywvim_lockb            = 1
let g:ywvim_theme            = 'dark'

" => local vimrc 
let g:localvimrc_name    = ["_lvimrc"]
let g:localvimrc_ask     = 0
let g:localvimrc_debug   = 1
let g:localvimrc_sandbox = 0

" => LeaderF
let g:Lf_ShortcutF      = ''
let g:Lf_StlColorscheme = 'one'
let g:Lf_ReverseOrder   = 1
let g:Lf_StlSeparator   = { 'left': '', 'right': '' }


" => Matchup
let g:matchup_matchparen_offscreen={}
let g:matchup_override_vimtex=1
" => Peekaboo_window
let g:peekaboo_window = 'vertical botright 40new'
let g:peekaboo_delay  = 1000
