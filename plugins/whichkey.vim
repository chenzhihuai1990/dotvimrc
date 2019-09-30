let g:which_key_sort_horizontal = 1
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader>      :<c-u>WhichKeyVisual '<Space>'<CR>

"Note: There must a semicolon before whitespace-inclusive command except "call" 
if !has('g:which_key_map')
    let g:which_key_map={}
endif

let g:which_key_map[' '] = ['call feedkeys("\<Plug>(easymotion-bd-w)")', 'Ace-jump']
let g:which_key_map['<tab>'] = ['e #<cr>', 'last buffer']
nnoremap <leader><tab> :e #<cr>

" ==> Level 1

nmap <localleader>1 <Plug>lightline#bufferline#go(1)
nmap <localleader>2 <Plug>lightline#bufferline#go(2)
nmap <localleader>3 <Plug>lightline#bufferline#go(3)
nmap <localleader>4 <Plug>lightline#bufferline#go(4)
nmap <localleader>5 <Plug>lightline#bufferline#go(5)
nmap <localleader>6 <Plug>lightline#bufferline#go(6)
nmap <localleader>7 <Plug>lightline#bufferline#go(7)
nmap <localleader>8 <Plug>lightline#bufferline#go(8)
nmap <localleader>9 <Plug>lightline#bufferline#go(9)
nmap <localleader>0 <Plug>lightline#bufferline#go(10)

let g:which_key_map.r = [':LeaderfFunction', 'functions']
let g:which_key_map.w = ['call feedkeys("\<Plug>(easymotion-wl)")', 'word-in-line']
nmap <c-g> :ChooseWin<Cr>
" ==> Level 2
" +Commenter
" +Files
" +Views
" +Jumps
" +Options
" +Settings
"
let g:which_key_map.c={'name':'+Commenter'} 
let g:which_key_map.f = {
            \ 'name' : '+File',
            \ 'f' : [ 'LeaderfFile'   , "open-files"    ] ,
            \ 'm' : [ 'LeaderfMru'    , "history"      ] ,
            \ 'r' : [ 'LeaderfMruCwd' , "history(cwd)" ] ,
            \ }
let g:which_key_map.v = {
            \ 'name': '+Views',
            \ 'n' : ['NERDTreeToggle' , 'NERDTree' ] ,
            \ 'u' : ['UndotreeToggle' , 'UndoTree' ] ,
            \ 't' : ['TagbarToggle'   , 'Tagbar'   ] ,
            \ }

let g:which_key_map.g = {
            \ 'name': '+Search/Jumps',
            \ 't' : [ ':LeaderfBufTag'           , 'buffer tags'               ] ,
            \ 'a' : [ ':LeaderfBufTagAll'        , 'all-tags'                  ] ,
            \ 'f' : [ ':LeaderfFunction'         , 'functions'                 ] ,
            \ 'F' : [ ':LeaderfFunctionAll'      , 'all-functions'             ] ,
            \ 'i' : [ ':LeaderfRgInteractive'    , 'interactive-search-in-Cwd' ] ,
            \ 'r' : [ ':Leaderf rg --recall'     , 'recall-last-search'        ] ,
            \ 'l' : [ ':Leaderf rg'              , 'live-search-in-Cwd'        ] ,
            \ 'b' : [ ':Leaderf rg --all-buffer' , 'search in buffer'          ] ,
            \ }

let g:which_key_map.s = {
            \ 'name' : '+Settings',
            \ 'k' : [':e ~\dotvimrc\keybindings.vim'   , 'keybindings'     ] ,
            \ 'p' : [':e ~\dotvimrc\plugins.vim'       , 'plugins'         ] ,
            \ 'l' : [':e ~\dotvimrc\whichkey.vim'      , 'leader-menu'     ] ,
            \ 'o' : [':LeaderfFile ~/dotvimrc/plugins' , 'plugin settings' ] ,
            \ 'a' : [':LeaderfFile ~/dotvimrc/'        , 'all'             ] ,
            \ }
let g:which_key_map.o = {
            \ 'name' : '+Options',
            \ '/' : [':set hlsearch!'      , 'hlsearch'                    ]  ,
            \ 'n' : [':set relativenumber!', 'relativenumber'              ]  ,
            \ 'w' : [':set wrap!'          , 'wrap'                        ]  ,
            \ 't' : [':cd %:p:h'           , 'set current dir as work dir' ]  ,
            \ 'd' : ['pwd'                 , 'echo current path'           ]  ,
            \ 'f' : ['set foldenable!'     , 'foldenable'                  ]  ,
            \}

let g:which_key_map.d = {
            \ 'name' : '+Coc.nvim',
            \ 'r' : ['<Plug>(coc-rename)'              , 'rename'          ] ,
            \ 'd' : ['<Plug>(coc-definition)'          , 'definition'      ] ,
            \ 't' : ['<Plug>(coc-type-definition)'     , 'type-definition' ] ,
            \ 'e' : ['<Plug>(coc-references)'          , 'references'      ] ,
            \ 'k' : [':call <SID>show_documentation()' , 'docs'            ] ,
            \ 'f' : ['<Plug>(coc-fix-current)'         , 'fix-current'     ] ,
            \ 'x' : [':CocList diagnostics'            , 'diagnostics'     ] ,
            \ 'c' : [':CocList commands'               , 'commands'        ] ,
            \}

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
