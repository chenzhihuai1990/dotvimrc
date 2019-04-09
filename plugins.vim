" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" Install:
" 1. search plugin in vimawesome.com
" 2. add it in form: Plug 'author/plugin_name'
" 3. run command :PlugInstall
"
let g:plug_window = 'new'

if has('win32') || has('win64')
    let g:vimrc = '$HOME/vimfiles/'
else
    let g:vimrc = '~/.vim/'
endif
call plug#begin(g:vimrc.'plugged')

" Make sure you use single quotes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Language
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'chiel92/vim-autoformat'
Plug 'lervag/vimtex', {'for' : ['tex','plaintex']}
Plug 'scrooloose/nerdcommenter'
Plug 'AndrewRadev/vim-eco', {'for': 'eco'}
Plug 'kchmck/vim-coffee-script', {'for': 'eco'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'brennier/quicktex', {'for': 'tex'}
Plug 'mattn/emmet-vim', {'for': 'html'}
Plug 'jvanja/vim-bootstrap4-snippets', {'for': 'html'}
Plug 'alvan/vim-closetag', {'for': 'html'}

if !exists("g:vim_completor") || g:vim_completor=="ycm"
"YouCompleteMe
    if has("win64")
        Plug 'snakeleon/youcompleteme-x64', {'for': ['cpp', 'python', 'tex']}
    elseif has('win32') 
        Plug 'snakeleon/youcompleteme-x86', {'for': ['cpp', 'python', 'tex']}
    else
        Plug 'valloric/youcompleteme', {'for': ['cpp', 'python', 'tex'], 'do': './install.py --clang-completer'}
    endif
    Plug 'jiangmiao/auto-pairs'
    "Plug 'raimondi/delimitmate'
elseif g:vim_completor=="coc"
"CoC for vim8
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}} "Framework + lsp
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Code display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'gregsexton/matchtag', {'for': 'html'}
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Integrations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'rhysd/vim-grammarous', {'for': 'plain'}
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
" debug plugin for python
Plug 'joonty/vdebug'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeCWD'] }
Plug 'henrik/vim-indexed-search'
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
Plug 'chrisbra/Colorizer', {'for': 'css'}
Plug 'mhinz/vim-signify'
Plug 'machakann/vim-highlightedyank'
Plug 't9md/vim-choosewin'
Plug 'liuchengxu/vim-which-key'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'Yggdroot/LeaderF', { 'do': '.\install' }
"Plug 'airblade/vim-gitgutter'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'vim-scripts/SearchComplete'
Plug 'terryma/vim-smooth-scroll'
Plug 'junegunn/vim-easy-align'
Plug 'osyo-manga/vim-over', {'on': 'OverCommandLine'}
Plug 'tpope/vim-repeat'
"Plug 'xolox/vim-session'
"Plug 'thinca/vim-quickrun', {'on': 'QuickRun'}
Plug 'tpope/vim-speeddating'
Plug 'danro/rename.vim', {'on': 'Rename'}
Plug 'tmhedberg/matchit'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
"Plug 'keith/investigate.vim'
Plug 'othree/html5.vim'
" Evaluate text as a math expression and replace it with the result.
Plug 'm1foley/vim-expresso'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'lotabout/ywvim'
Plug 'embear/vim-localvimrc'

call plug#end()
