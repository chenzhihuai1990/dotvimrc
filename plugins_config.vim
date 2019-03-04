""""""""""""""""""
" => easyclip
"""""""""""""""""""""
"yank 
if has_key(g:plugs, 'vim-yoink')
    nmap <c-n> <plug>(YoinkPostPasteSwapBack)
    nmap <c-p> <plug>(YoinkPostPasteSwapForward)

    nmap p <plug>(YoinkPaste_p)
    nmap P <plug>(YoinkPaste_P)
    nmap y <plug>(YoinkYankPreserveCursorPosition)
    xmap y <plug>(YoinkYankPreserveCursorPosition)
    let g:yoinkIncludeDeleteOperations=1
endif
"Cut 
if has_key(g:plugs, 'vim-cutlass')
    nnoremap m d
    xnoremap m d

    nnoremap mm dd
    nnoremap M D

    nnoremap <silent> <Plug>TransposeCharacters "ux"up
    \:call repeat#set("\<Plug>TransposeCharacters")<CR>
    nmap gx <Plug>TransposeCharacters
endif
"Substitute
if has_key(g:plugs, 'vim-subversive')
    nmap s <plug>(SubversiveSubstitute)
    nmap ss <plug>(SubversiveSubstituteLine)
    nmap S <plug>(SubversiveSubstituteToEndOfLine)
    xmap s <plug>(SubversiveSubstitute)
    xmap p <plug>(SubversiveSubstitute)
    xmap P <plug>(SubversiveSubstitute)
endif
"let g:EasyClipPreserveCursorPositionAfterYank = 1
"let g:EasyClipUseSubstituteDefaults=1
"
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
"generate .ycm_extra_conf.py for youcompleteme
"clang++ -E -x c++ - -v < nul 
let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd'],
  \ }
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

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
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:ale_sign_error = '*'
let g:ale_sign_warning = '·'
let g:ale_sign_info = '~'
let g:ale_sign_style_error = '>'
let g:ale_sign_style_warning = '-'
let g:ale_completion_enabled=0


if has('nvim')
    let g:deoplete#enable_at_startup = 1
else
    let g:LanguageClient_diagnosticsEnable = 0

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
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
endif

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<localleader><localleader>p'
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0


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
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
let g:syntastic_python_checkers=['pyflakes']

" Javascript
let g:syntastic_javascript_checkers = ['jshint']

" Go
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" Custom CoffeeScript SyntasticCheck
func! SyntasticCheckCoffeescript()
    let l:filename = substitute(expand("%:p"), '\(\w\+\)\.coffee', '.coffee.\1.js', '')
    execute "tabedit " . l:filename
    execute "SyntasticCheck"
    execute "Errors"
endfunc


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
let g:ackprg = "ag --vimgrep"
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
            \    'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
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
