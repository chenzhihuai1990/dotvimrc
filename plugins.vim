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
Plug 'lervag/vimtex', {'for' : 'tex'}
Plug 'scrooloose/nerdcommenter'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mattn/emmet-vim', {'for': 'html'}
Plug 'jvanja/vim-bootstrap4-snippets', {'for': 'html'}
if has('win32') || has('win64')
    Plug 'snakeleon/youcompleteme-x64'
else
    Plug 'valloric/youcompleteme'
endif
Plug 'raimondi/delimitmate'
"Plug 'ervandew/supertab'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Code display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'MatchTagAlways'
Plug 'gregsexton/matchtag'
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Integrations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'rhysd/vim-grammarous', {'for': 'txt'}
Plug 'KabbAmine/zeavim.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'henrik/vim-indexed-search'
Plug 't9md/vim-choosewin'
"Plug 'shougo/unite.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'hecal3/vim-leader-guide'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree', {'on': 'UndoTreeToggle'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-signify'
"Plug 'airblade/vim-gitgutter'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/SearchComplete'
Plug 'terryma/vim-smooth-scroll'
Plug 'junegunn/vim-easy-align'
Plug 'osyo-manga/vim-over', {'on': 'OverCommandLine'}
Plug 'tpope/vim-repeat'
"Plug 'xolox/vim-session'
"Plug 'svermeulen/vim-easyclip'
Plug 'thinca/vim-quickrun', {'on': 'QuickRun'}
Plug 'tpope/vim-speeddating'
Plug 'danro/rename.vim', {'on': 'Rename'}
Plug 'tmhedberg/matchit'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
"Plug 'keith/investigate.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'xolox/vim-misc'
Plug 'tpope/vim-sensible'

call plug#end()
