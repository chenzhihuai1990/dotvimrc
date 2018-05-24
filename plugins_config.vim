let g:python3_host_prog = "c:/python36/python.exe"

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
            \ ]
            \}
let g:vimtex_view_general_viewer='sumatrapdf'
let g:vimtex_view_general_options
            \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
            \ = '-reuse-instance -forward-search @tex @line @pdf'
            \ . ' -inverse-search "gvim --servername ' . v:servername
            \ . ' --remote-send \"^<C-\^>^<C-n^>'
            \ . ':drop \%f^<CR^>:\%l^<CR^>:normal\! zzzv^<CR^>'
            \ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
            \ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
            \ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'
""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
let g:ale_sign_error = '*'
let g:ale_sign_warning = '·'
let g:ale_sign_info = '~'
let g:ale_sign_style_error = '>'
let g:ale_sign_style_warning = '-'

let g:ale_completion_enabled=0
if has('win32') || has('win64')
    let g:ycm_global_ycm_extra_conf = '~\vimfiles\plugged\YouCompleteMe\python\.ycm_extra_conf.py'
endif
let g:ycm_key_detailed_diagnostics = '<leader>dd'
nmap <M-d> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>
let g:ycm_keep_logfiles = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_always_populate_location_list = 1
let g:ycm_complete_in_comments=0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_error_symbol = '»'
let g:ycm_warning_symbol = '∥'
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

"nmap <c-p> <Plug>yankstack_substitute_older_paste
"nmap <c-n> <Plug>yankstack_substitute_newer_paste


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
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


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
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
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
" => Buftabline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:buftabline_numbers=2
"let g:buftabline_indicators=1
"let g:buftabline_seperators=1
"nmap <M-1> <Plug>BufTabLine.Go(1)
"nmap <M-2> <Plug>BufTabLine.Go(2)
"nmap <M-3> <Plug>BufTabLine.Go(3)
"nmap <M-4> <Plug>BufTabLine.Go(4)
"nmap <M-5> <Plug>BufTabLine.Go(5)
"nmap <M-6> <Plug>BufTabLine.Go(6)
"nmap <M-7> <Plug>BufTabLine.Go(7)
"nmap <M-8> <Plug>BufTabLine.Go(8)
"nmap <M-9> <Plug>BufTabLine.Go(9)
"nmap <M-0> <Plug>BufTabLine.Go(10)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => statusline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
" common symbol with unicode
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = '«'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.readonly='RO'
let g:airline_symbols.maxlinenr = ''

" powerline symbol:
let g:airline_symbols.crypt = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.maxlinenr = ''
""let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.notexists = '∄'
"let g:airline_symbols.whitespace = '☲'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#keymap_ignored_filetypes = ['vimfiler', 'nerdtree']
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#left_sep= ''

nmap <M-1> <Plug>AirlineSelectTab1
nmap <M-2> <Plug>AirlineSelectTab2
nmap <M-3> <Plug>AirlineSelectTab3
nmap <M-4> <Plug>AirlineSelectTab4
nmap <M-5> <Plug>AirlineSelectTab5
nmap <M-6> <Plug>AirlineSelectTab6
nmap <M-7> <Plug>AirlineSelectTab7
nmap <M-8> <Plug>AirlineSelectTab8
nmap <M-9> <Plug>AirlineSelectTab9
nmap <M--> <Plug>AirlineSelectPrevTab
nmap <M-+> <Plug>AirlineSelectNextTab

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
