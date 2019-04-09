""""""""""""""""""""""""""""""
" => choosewin
""""""""""""""""""""""""""""""
let g:choosewin_overlay_enable=1
""""""""""""""""""""""""""""""
" => vimtex
""""""""""""""""""""""""""""""
let g:vimtex_compiler_latexmk = {
            \ 'backend' : 'jobs',
            \ 'background' : 1,
            \ 'callback' : 1,
            \ 'continuous' : 1,
            \ 'executable' : 'latexmk',
            \ 'options' : [
            \     '-pdf',
            \     '-bibtex',
            \     '-verbose',
            \     '-synctex=1',
            \   '-file-line-error',
            \   '-interaction=nonstopmode',
            \ ]
            \}
if has('nvim')
    let g:vimtex_compiler_latexmk.backend = 'nvim'
endif

let g:vimtex_view_general_options_latexmk = '-reuse-instance'

let g:vimtex_view_general_viewer = 'SumatraPDF'

if has('nvim')
    let g:vimtex_view_general_options
                \ = '-reuse-instance -forward-search @tex @line @pdf'
                \ . '-inverse-search "nvr --servername ' . v:servername
                \ . ' --remote-silent \%f -c \%l"'
else
    let g:vimtex_view_general_options
                \ = '-reuse-instance -forward-search @tex @line @pdf'
                \ . ' -inverse-search "gvim --servername ' . v:servername
                \ . ' --remote-send \"^<C-\^>^<C-n^>'
                \ . ':drop \%f^<CR^>:\%l^<CR^>:normal\! zzzv^<CR^>'
                \ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
                \ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
                \ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'
endif
let g:tex_conceal = ""
""""""""""""""""""""""""""""""
" => AutoComplete (YouCompleteMe & neovim-LanguageClient & deoplete)
""""""""""""""""""""""""""""""
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"generate .ycm_extra_conf.py for youcompleteme
"clang++ -E -x c++ - -v < nul 
"
if !exists("g:vim_completor") || g:vim_completor=="ycm"
"YouCompleteMe for vim8
    let g:ycm_key_detailed_diagnostics = '<leader>dd'
    nmap <M-d> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>
    let g:ycm_keep_logfiles = 1
    let g:ycm_add_preview_to_completeopt = 1
    let g:ycm_autoclose_preview_window_after_completion = 0
    let g:ycm_always_populate_location_list = 1
    let g:ycm_complete_in_comments=0
    let g:ycm_collect_identifiers_from_tags_files = 1
    let g:ycm_min_num_of_chars_for_completion=2
    let g:ycm_error_symbol = '✖'
    let g:ycm_warning_symbol = 'w'
    let g:ycm_confirm_extra_conf = 0
"CoC for vim8
elseif g:vim_completor=="coc"
    function! s:show_documentation()
        if &filetype == 'vim'
            execute 'h '.expand('<cword>')
        else
            call CocAction('doHover')
        endif
    endfunction
    autocmd CursorHold * silent call CocActionAsync('highlight')
    " Use `[c` and `]c` for navigate diagnostics
    nmap <silent> [c <Plug>(coc-diagnostic-prev)
    nmap <silent> ]c <Plug>(coc-diagnostic-next)

    " Remap keys for gotos
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    " Use tab for trigger completion with characters ahead and navigate.
    " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    " Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
    " Coc only does snippet and additional edit on confirm.
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    " Use K for show documentation in preview window
    function! s:show_documentation()
        if &filetype == 'vim'
            execute 'h '.expand('<cword>')
        else
            call CocAction('doHover')
        endif
    endfunction
    nnoremap <silent> K :call <SID>show_documentation()<CR>
endif
""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree & Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
let g:tagbar_left=0 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Smooth scroll
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
nnoremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 2)<CR>
nnoremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 2)<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Session
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:session_autosave='yes'
"let g:session_autoload='yes'
"let g:session_default_to_last='yes'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping=0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => quickrun
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:quickrun_no_default_key_mappings=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indentLine 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = ''

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ywvim (Chinese Input Method) 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ywvim_ims=[
            \['wb', '五笔', 'wubi.ywvim'],
            \['py', '拼音', 'pinyin.ywvim'],
            \]

let g:ywvim_py = { 'helpim':'wb', 'gb':0 }
let g:ywvim_zhpunc = 1
let g:ywvim_listmax = 10
let g:ywvim_esc_autoff = 0
let g:ywvim_autoinput = 0
let g:ywvim_circlecandidates = 1
let g:ywvim_helpim_on = 1
let g:ywvim_matchexact = 0
let g:ywvim_chinesecode = 1
let g:ywvim_gb = 0
let g:ywvim_preconv = 'g2b'
let g:ywvim_conv = ''
let g:ywvim_lockb = 1
let g:ywvim_theme = 'dark'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_conf = {
            \    'guifgs': ['#83a598', 'darkorange3', 'seagreen3', 'firebrick'],
            \    'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \    'operators': '_,_',
            \    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \    'separately': {
            \        '*': {},
            \        'tex': {
            \            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
            \        },
            \        'lisp': {
            \            'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \        },
            \        'vim': {
            \            'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
            \        },
            \        'html': {
            \            'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
            \        },
            \        'css': 0,
            \    }
            \}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => local vimrc 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:localvimrc_name = ["_lvimrc"]
let g:localvimrc_ask = 0
let g:localvimrc_debug=1
let g:localvimrc_sandbox=0
"""""""""""""""""""""""""""""""""""""
" => Fuzzy finder
"""""""""""""""""""""""""""""""""""""
let g:Lf_ShortcutF = ''
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_ReverseOrder=1
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
