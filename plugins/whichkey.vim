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
let g:which_key_map.t = [':LeaderfBufTag'  , 'Tags']
let g:which_key_map.r = [':LeaderfMru'     , 'MRU']
let g:which_key_map.s = [':Leaderf rg'     , 'Global Search']
let g:which_key_map.f = [':Leaderf file'   , 'Open file']
let g:which_key_map.j = [':LeaderfFunction', 'Functions']
let g:which_key_map.w = [':ChooseWin'      , 'Windows']

" ==> Level 2
let g:which_key_map.c={'name':'+Commenter'} 
let g:which_key_map.d = {
            \ 'name' : '+YouCompleteMe'                   ,
            \ 'h' : ['YcmCompleter GetDoc'             , "getDoc"             ]  ,
            \ 'g' : ['YcmCompleter GoTo'               , "smart Goto"         ]  ,
            \ 'i' : ['YcmCompleter GoToInclude'        , "goToInclude"        ]  ,
            \ 'c' : ['YcmCompleter GoToDeclaration'    , "goToDeclaration"    ]  ,
            \ 'n' : ['YcmCompleter GoToDefinition'     , "goToDefinition"     ]  ,
            \ 'r' : ['YcmCompleter GoToReferences'     , "goToReferences"     ]  ,
            \ 'p' : ['YcmCompleter GoToImplementation' , "goToImplementation" ]  ,
            \ 's' : ['YcmCompleter GoToImprecise'      , "goToImprecise"      ]  ,
            \ 'f' : ['YcmCompleter FixIt'              , "fixIt"              ]  ,
            \ 't' : ['YcmCompleter GetType'            , "getType"            ]  ,
            \ 'm' : ['YcmCompleter GetTypeImprecise'   , "getTypeImprecise"   ]  ,
            \ }

let g:which_key_map.g = {
            \'name' : '+Jump'                                              ,
            \ 'w' : ['call feedkeys("\<Plug>(easymotion-w)")'              , 'jump to word'         ]  ,
            \ 'f' : ['LeaderfFunction'                                     , 'goto function'        ]  ,
            \ 'F' : ['call feedkeys("\<Plug>(easymotion-f)")'              , 'find {char} backward' ]  ,
            \ 'b' : ['call feedkeys("\<Plug>(easymotion-b)")'              , 'jump Backward'        ]  ,
            \ 'B' : ['LeaderfBuffer'                                       , 'buffers'              ]  ,
            \ 'l' : ['call feedkeys("\<Plug>(easymotion-bd-jk)")'          , 'jump to line'         ]  ,
            \ 'k' : ['call feedkeys("\<Plug>(easymotion-iskeyword-bd-w)")' , 'jump to line'         ]  ,
            \ 't' : ['LeaderfBufTag'                                       , 'BufTags'              ]  ,
            \ 'a' : ['LeaderBufTagAll'                                     , 'AllTags'              ]  ,
            \}

let g:which_key_map.k = {
            \ 'name' : '+Close'         ,
            \ 's'    : ['CloseSession'  , 'Sessions' ]  ,
            \ 'n'    : ['NERDTreeClose' , 'NERDTree' ]  ,
            \ 'u'    : ['UndotreeClose' , 'UndoTree' ]  ,
            \ 't'    : ['TagbarClose'   , 'Tagbar'   ]
            \ }

let g:which_key_map.o = {
            \ 'name' : '+Open'              ,
            \ 'f'    : [':Leaderf file'     , 'File'       ]  ,
            \ 'r'    : [':Leaderf mru'      , 'MRU File'   ]  ,
            \ 'b'    : [':Leaderf buffer'   , 'Buffers'    ]  ,
            \ 'n'    : ['NERDTreeToggle'    , 'NERDTree'   ]  ,
            \ 'u'    : ['UndotreeToggle'    , 'UndoTree'   ]  ,
            \ 't'    : ['TagbarToggle'      , 'Tagbar'     ]  ,
            \ 'v'    : ['call Editdotvimrc' , 'Edit .vimrc']
            \ }

let g:which_key_map.q = {
            \ 'name' : '+Toggle'           ,
            \ '/' : [':set hlsearch!'      , 'hlsearch'                    ]  ,
            \ 'n' : [':set relativenumber!', 'relativenumber'              ]  ,
            \ 'b' : ['RainbowToggle'       , 'rainbow'                     ]  ,
            \ 'w' : [':set wrap!'          , 'wrap'                        ]  ,
            \ 't' : [':cd %:p:h'           , 'set current dir as work dir' ]  ,
            \ 'l' : ['ZoomIn'              , 'Larger font'                 ]  ,
            \ 's' : ['ZoomOut'             , 'Smaller font'                ]  ,
            \ 'd' : ['pwd'                 , 'Current Path'                ]  ,
            \ 'f' : ['set foldenable!'     , 'Foldenable'                  ]  ,
            \ 'c' : [':Leaderf file ~/dotvimrc', 'Dotvimrc']
            \ }

let g:which_key_map.m = {
            \ 'name' : '+Windows'    ,
            \ 'v'    : ['vsplit'     , 'vertically split' ]  ,
            \ 'c'    : ['close'      , 'close'            ]  ,
            \ 's'    : ['split'      , 'split'            ]  ,
            \ 'o'    : ['only'       , "close others"     ]  ,
            \ 'm'    : [':simalt ~x' , "maximize"         ]
            \ }

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
