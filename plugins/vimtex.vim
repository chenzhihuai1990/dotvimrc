let g:vimtex_quickfix_method='pplatex'
" Disable all warnings
let g:vimtex_quickfix_latexlog = {'default' : 0}
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
                \ . ' --remote-silent \"\%f\" -c \%l"'
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
