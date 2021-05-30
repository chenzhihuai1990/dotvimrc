if !exists("g:vim_completor") || g:vim_completor=="ycm"
"YouCompleteMe for vim8
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
    "Use <TAB> to select the popup menu:
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    "generate .ycm_extra_conf.py for youcompleteme
    "clang++ -E -x c++ - -v < nul 
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
endif
