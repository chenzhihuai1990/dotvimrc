" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" Install:
" 1. search plugin in vimawesome.com
" 2. add it in form: Plug 'author/plugin_name'
" 3. run command :PlugInstall
"
call plug#begin('~/vimfiles/plugged')

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
Plug 'mattn/emmet-vim'
Plug 'valloric/youcompleteme', {'do' : 'python ./install.py --msvc=14 --clang-completer'}
Plug 'raimondi/delimitmate'
"Plug 'ervandew/supertab'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Code display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'MatchTagAlways'
Plug 'gregsexton/matchtag'
Plug 'w0ng/vim-hybrid'
Plug 'kien/rainbow_parentheses.vim'
Plug 'yggdroot/indentline'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Integrations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'rhysd/vim-grammarous'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'shougo/unite.vim'
Plug 'ap/vim-buftabline'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'hecal3/vim-leader-guide'

Plug 'chenzhihuai1990/vim-powerline', {'branch' : 'develop'}
Plug 'mbbill/undotree'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'terryma/vim-smooth-scroll'
Plug 'junegunn/vim-easy-align'
Plug 'osyo-manga/vim-over'
Plug 'tpope/vim-repeat'
Plug 'xolox/vim-session'
Plug 'easymotion/vim-easymotion'
"Plug 'svermeulen/vim-easyclip'
Plug 'thinca/vim-quickrun'
Plug 'tpope/vim-surround'
"Plug 'matchit.zip'
Plug 'tpope/vim-speeddating'
Plug 'danro/rename.vim'
Plug 'tmhedberg/matchit'
"Plug 'keith/investigate.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'L9'
"Plug 'maonx/vimim'
Plug 'xolox/vim-misc'

"" On-demand loading
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()
