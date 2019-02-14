nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map={}

let g:which_key_map[' '] = ['call feedkeys("\<Plug>(easymotion-bd-w)")', 'Ace-jump']
let g:which_key_map['<tab>'] = ['e #<cr>', 'last buffer']
nnoremap <leader><tab> :e #<cr>

let g:which_key_map.b = {
            \'name': 'Build',
            \'r':['call feedkeys("\<Plug>(quickrun)")', 'quickrun'],
            \}
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
let g:which_key_map.h = {
            \'name': '+GitGutter',
            \}
let g:which_key_map.g = {
            \'name' : '+Jump'                                                ,
            \ 'w' : ['call feedkeys("\<Plug>(easymotion-w)")'              , 'jump to word'         ]  ,
            \ 'f' : ['CtrlPFunky'                                          , 'goto function'        ]  ,
            \ 'F' : ['call feedkeys("\<Plug>(easymotion-f)")'              , 'find {char} backward' ]  ,
            \ 'b' : ['call feedkeys("\<Plug>(easymotion-b)")'              , 'jump Backward'        ]  ,
            \ 'B' : ['CtrlPBuffer'                                         , 'buffers'              ]  ,
            \ 'l' : ['call feedkeys("\<Plug>(easymotion-bd-jk)")'          , 'jump to line'         ]  ,
            \ 'k' : ['call feedkeys("\<Plug>(easymotion-iskeyword-bd-w)")' , 'jump to line'         ]  ,
            \ 't' : ['CtrlPBufTag'                                         , 'BufTags'              ]  ,
            \ 'a' : ['CtrlPBufTagAll'                                      , 'AllTags'              ]  ,
            \}

let g:which_key_map.k = {
            \ 'name' : '+Close'         ,
            \ 's'    : ['CloseSession'  , 'Sessions' ]  ,
            \ 'n'    : ['NERDTreeClose' , 'NERDTree' ]  ,
            \ 'u'    : ['UndotreeClose' , 'UndoTree' ]  ,
            \ 't'    : ['TagbarClose'   , 'Tagbar'   ]
            \ }
let g:which_key_map.o = {
            \ 'name' : '+Open'           ,
            \ 'f'    : ['CtrlP'          , 'File'     ]  ,
            \ 'r'    : ['CtrlPMRUFiles'  , 'MRU File' ]  ,
            \ 'b'    : ['CtrlPBuffer'    , 'Buffers'  ]  ,
            \ 'm'    : ['CtrlPMixed'     , 'Mixed'    ]  ,
            \ 'n'    : ['NERDTreeToggle' , 'NERDTree' ]  ,
            \ 'u'    : ['UndotreeToggle' , 'UndoTree' ]  ,
            \ 't'    : ['TagbarToggle'   , 'Tagbar'   ]
            \ }
let g:which_key_map.f = {
            \ 'name' : '+Config'                           ,
            \ 'c' : ['e ~/dotvimrc/plugins_config.vim'  , 'configuration'  ]  ,
            \ 'l' : ['e ~/dotvimrc/lightline.vim.vim'   , 'lightline'      ]  ,
            \ 'p' : ['e ~/dotvimrc/plugins.vim'         , 'plugins'        ]  ,
            \ 'b' : ['e ~/dotvimrc/basic.vim'           , 'basic'          ]  ,
            \ 'f' : ['e ~/dotvimrc/filetypes.vim'       , 'filetype'       ]  ,
            \ 'w' : ['e ~/dotvimrc/whichkey_config.vim' , 'which keyguide' ]  ,
            \ 'm' : ['e ~/dotvimrc/mapping.vim'         , 'mapping'        ]  ,
            \ 'v' : ['call EditVimrc()'                 , 'edit vimrc'     ]  ,
            \ 's' : ['e ~/dotvimrc/start.vim'           , 'edit start.vim' ]
            \ }
let g:which_key_map.t = {
            \ 'name' : '+Toggle'               ,
            \ '/' : ['set hlsearch!'       , 'hlsearch'                    ]  ,
            \ 'n' : ['set relativenumber!' , 'relativenumber'              ]  ,
            \ 'b' : ['RainbowToggle'       , 'rainbow'                     ]  ,
            \ 'w' : ['set wrap!'           , 'wrap'                        ]  ,
            \ 't' : ['cd %:p:h'            , 'set current dir as work dir' ]  ,
            \ 'l' : ['ZoomIn'              , 'Larger font'                 ]  ,
            \ 's' : ['ZoomOut'             , 'Smaller font'                ]  ,
            \ 'd' : ['pwd'                 , 'Current Path'                ]
            \ }

let g:which_key_map.m = {
            \ 'name' : '+Windows'   ,
            \ 'e'    : ['vnew'      , 'new'              ]  ,
            \ 'v'    : ['vsplit'    , 'vertically split' ]  ,
            \ 'c'    : ['close'     , 'close'            ]  ,
            \ 's'    : ['split'     , 'split'            ]  ,
            \ 'o'    : ['only'      , "close others"     ]  ,
            \ 'm'    : ['simalt ~x' , "maximize"         ]
            \ }

function! s:appendSessionsToOpen()
    let sessions = split(globpath('~\vimfiles\sessions', '*.vim'), '\n')
    let index=0
    for se in sessions
        let fn = fnamemodify(se,":t:r")
        let g:which_key_map.o[index % 10] = ["OpenSession ".fn, fn]
        let index += 1
        if index > 9
            break
        endif
    endfor
endfunction
call s:appendSessionsToOpen()

function! AppendBuffersToClose()
    let bufnums = buftabline#user_buffers()
    let index = 0
    while index < 10
        if has_key(g:which_key_map.k, index)
            unlet g:which_key_map.k[index]
        endif
        let index+=1
    endwhile
    let index=1
    for bufnum in bufnums
        let g:which_key_map.k[index % 10] = ["bd ".bufnum, bufname(bufnum)]
        let index += 1
        if index > 10
            break
        endif
    endfor
endfunction
function! EditVimrc()
    if has('nvim')
        exec 'e '.stdpath('config').'/init.vim'
    else
        exec 'e ~/_vimrc'
    endif
endfunction
