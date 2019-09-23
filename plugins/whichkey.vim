let g:which_key_sort_horizontal = 1
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
"nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
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
call extend(g:which_key_map, {
            \ '1': ['<Plug>lightline#bufferline#go(1)'  , 'goto-tab-1'],
            \ '2': ['<Plug>lightline#bufferline#go(2)'  , 'goto-tab-2'],
            \ '3': ['<Plug>lightline#bufferline#go(3)'  , 'goto-tab-3'],
            \ '4': ['<Plug>lightline#bufferline#go(4)'  , 'goto-tab-4'],
            \ '5': ['<Plug>lightline#bufferline#go(5)'  , 'goto-tab-5'],
            \ '6': ['<Plug>lightline#bufferline#go(6)'  , 'goto-tab-6'],
            \ '7': ['<Plug>lightline#bufferline#go(7)'  , 'goto-tab-7'],
            \ '8': ['<Plug>lightline#bufferline#go(8)'  , 'goto-tab-8'],
            \ '9': ['<Plug>lightline#bufferline#go(9)'  , 'goto-tab-9'],
            \ '0': ['<Plug>lightline#bufferline#go(10)' , 'goto-tab-10']
            \})
let g:which_key_map.g = [':Leaderf rg'     , 'global search']
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

let g:which_key_map.j = {
            \ 'name': '+Jumps/Search',
            \ 't' : [ ':LeaderfBufTag'   , 'buffer tags'                  ] ,
            \ 'a' : [ ':LeaderBufTagAll' , 'all tags'                     ] ,
            \ 'f' : [ ':LeaderFunction'  , 'functions'                    ] ,
            \ 'i' : [ ':LeaderRgInteractive', 'interactive search in Cwd' ] ,
            \ 'r' : [ ':Leader rg --recall', 'recall last search'         ] ,
            \ 'l' : [ ':Leader rg', 'live search in Cwd'                  ] ,
            \ 'b' : [ ':Leader rg --all-buffer', 'search in buffer'       ] ,
            \ }

let g:which_key_map.s = {
            \ 'name' : '+Settings',
            \ 'k' : [':e ~\dotvimrc\keybindings.vim'   , 'keybindings'     ] ,
            \ 'p' : [':e ~\dotvimrc\plugins.vim'       , 'plugins'         ] ,
            \ 'l' : [':e ~\dotvimrc\whichkey.vim'      , 'leader menu'     ] ,
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

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
