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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'brennier/quicktex', {'for': 'tex'}
Plug 'mattn/emmet-vim', {'for': 'html'}
Plug 'jvanja/vim-bootstrap4-snippets', {'for': 'html'}

if has("win32") || has("win64")
    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'powershell -executionpolicy bypass -File install.ps1',
        \ 'for' : 'cpp',
        \ }
else
    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh',
        \ 'for' : 'cpp',
        \ }
endif

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
elseif has("win64")
    Plug 'snakeleon/youcompleteme-x64', {'for': ['cpp', 'py']}
elseif has('win32') 
    Plug 'snakeleon/youcompleteme-x86', {'for': ['cpp', 'py', 'html']}
else
    Plug 'valloric/youcompleteme', {'for': ['cpp', 'py', 'html']}
endif
"Plug 'raimondi/delimitmate'
Plug 'jiangmiao/auto-pairs'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Code display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'gregsexton/matchtag', {'for': 'html'}
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
Plug 'luochen1990/rainbow'
"Plug 'junegunn/rainbow_parentheses.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Integrations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'rhysd/vim-grammarous'
Plug 'mileszs/ack.vim'
"Plug 'w0rp/ale',{'for':'py'}
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'rhysd/vim-grammarous'
"Plug 'KabbAmine/zeavim.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'henrik/vim-indexed-search'
Plug 't9md/vim-choosewin'
Plug 'machakann/vim-highlightedyank'
"Plug 'shougo/unite.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'liuchengxu/vim-which-key'

Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'chrisbra/Colorizer'
Plug 'mbbill/undotree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'mhinz/vim-signify'
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
"Waring: Those following plugins will change your custom for vim
Plug 'svermeulen/vim-yoink'
Plug 'svermeulen/vim-cutlass'
Plug 'svermeulen/vim-subversive'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'lotabout/ywvim'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-sensible'

call plug#end()
