
""""""""""""""""""""""""""""""
" => Leader guide
""""""""""""""""""""""""""""""
let g:lmap={}

omap <leader> <Plug>(easymotion-bd-w)
let g:lmap[' '] = ['call feedkeys("\<Plug>(easymotion-bd-w)")', 'Ace-jump']
let g:lmap['<tab>'] = ['e #', 'last buffer']

call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
autocmd BufEnter __Tagbar__ noremap <buffer> <leader> <Plug>leaderguide-buffer

" Group names or direct command can be defined by filetype. Addsymotion-prefix) the following lines:
call leaderGuide#register_prefix_descriptions('\', 'g:llmap')
nnoremap <localleader> :<c-u>LeaderGuide  ','<CR>
vnoremap <localleader> :<c-u>LeaderGuideVisual  ','<CR>
let g:llmap = {}


"nmap <leader><tab> :e #<cr>
nmap <leader>w :ChooseWin<cr>
nmap <localleader>g :ChooseWin<Cr>
let g:lmap.b = {
            \'name': 'Build',
            \'r':['call feedkeys("\<Plug>(quickrun)")', 'quickrun'],
            \}
let g:lmap.c={'name':'Commenter'}
let g:lmap.d = {
            \'name':'YouCompleteMe',
            \'h':['YcmCompleter GetDoc', "getDoc"],
            \'g':['YcmCompleter GoTo', "smart Goto"],
            \'i':['YcmCompleter GoToInclude', "goToInclude"],
            \'c':['YcmCompleter GoToDeclaration', "goToDeclaration"],
            \'n':['YcmCompleter GoToDefinition', "goToDefinition"],
            \'r':['YcmCompleter GoToReferences', "goToReferences"],
            \'p':['YcmCompleter GoToImplementation', "goToImplementation"],
            \'s':['YcmCompleter GoToImprecise', "goToImprecise"],
            \'f':['YcmCompleter FixIt', "fixIt"],
            \'t':['YcmCompleter GetType', "getType"],
            \'m':['YcmCompleter GetTypeImprecise', "getTypeImprecise"],
            \}
let g:lmap.h = {
            \'name': 'GitGutter',
            \}
let g:lmap.g = {
            \'name': 'Jump',
            \'w':['call feedkeys("\<Plug>(easymotion-w)")', 'jump to word'],
            \'f':['call feedkeys("\<Plug>(easymotion-f)")', 'find {char}'],
            \'F':['call feedkeys("\<Plug>(easymotion-f)")', 'find {char} backward'],
            \'b':['call feedkeys("\<Plug>(easymotion-b)")', 'jump Backward'],
            \'B':['CtrlPBuffer', 'buffers'],
            \'l':['call feedkeys("\<Plug>(easymotion-bd-jk)")', 'jump to line'],
            \'k':['call feedkeys("\<Plug>(easymotion-iskeyword-bd-w)")', 'jump to line'],
            \'t':['CtrlPBufTag', 'BufTags'],
            \'a':['CtrlPBufTagAll', 'AllTags'],
            \}

let g:lmap.k = {
            \'name': 'Close',
            \'s':['CloseSession', 'Sessions'],
            \'n':['NERDTreeClose', 'NERDTree'],
            \'u':['UndotreeClose', 'UndoTree'],
            \'t':['TagbarClose', 'Tagbar']
            \}
let g:lmap.o = {
            \'name': 'Open',
            \'f':['CtrlP', 'File'],
            \'r':['CtrlPMRUFiles', 'MRU File'],
            \'b':['CtrlPBuffer', 'Buffers'],
            \'m':['CtrlPMixed', 'Mixed'],
            \'n':['NERDTreeToggle', 'NERDTree'],
            \'u':['UndotreeToggle', 'UndoTree'],
            \'t':['TagbarToggle', 'Tagbar']
            \}
let g:lmap.f = {
            \'name': 'Config',
            \'c': ['e ~/dotvimrc/plugins_config.vim', 'configuration'],
            \'p': ['e ~/dotvimrc/plugins.vim', 'plugins'],
            \'b': ['e ~/dotvimrc/basic.vim', 'basic'],
            \'f': ['e ~/dotvimrc/filetypes.vim', 'filetype'],
            \'l': ['e ~/dotvimrc/leaderguide_config.vim', 'leader guide'],
            \'m': ['e ~/dotvimrc/mapping.vim', 'mapping']
            \}
let g:lmap.t = {
            \'name':'Toggle',
            \'/':['set hlsearch!', 'hlsearch'],
            \'n':['set relativenumber!', 'relativenumber'],
            \'b':['RainbowToggle', 'rainbow'],
            \'w':['set wrap!', 'wrap']
            \}

let g:lmap.m = {
            \'name': 'Windows',
            \'e':['vnew', 'new'],
            \'v':['vsplit', 'vertically split'],
            \'c':['close', 'close'],
            \'s':['split', 'split'],
            \'o':['only', "close others"],
            \'m':['simalt ~x', "maximize"]
            \}

function! s:appendSessionsToOpen()
    let sessions = split(globpath('~\vimfiles\sessions', '*.vim'), '\n')
    let index=0
    for se in sessions
        let fn = fnamemodify(se,":t:r")
        let g:lmap.o[index % 10] = ["OpenSession ".fn, fn]
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
        if has_key(g:lmap.k, index)
            unlet g:lmap.k[index]
        endif
        let index+=1
    endwhile
    let index=1
    for bufnum in bufnums
        let g:lmap.k[index % 10] = ["bd ".bufnum, bufname(bufnum)]
        let index += 1
        if index > 10
            break
        endif
    endfor
endfunction
"autocmd! BufAdd * call AppendBuffersToClose()
"autocmd! BufDelete * call AppendBuffersToClose()
