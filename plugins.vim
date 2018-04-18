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
Plug 'mattn/emmet-vim'
"Plug 'maralla/completor.vim'
"Plug 'roxma/nvim-completion-manager'
let g:deoplete#enable_at_startup = 1
if has('win32') || has('win64')
    Plug 'snakeleon/youcompleteme-x64', {'for': 'cpp'}
endif
Plug 'davidhalter/jedi-vim'
"Plug 'python-mode/python-mode'
"if has('nvim')
    "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
    "Plug 'Shougo/deoplete.nvim'
    "Plug 'roxma/nvim-yarp'
    "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"Plug 'valloric/youcompleteme'
Plug 'raimondi/delimitmate'
"Plug 'ervandew/supertab'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Code display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'MatchTagAlways'
Plug 'gregsexton/matchtag'
Plug 'morhetz/gruvbox'
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
Plug 'KabbAmine/zeavim.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 't9md/vim-choosewin'
"Plug 'shougo/unite.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'hecal3/vim-leader-guide'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-signify'
"Plug 'airblade/vim-gitgutter'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'terryma/vim-smooth-scroll'
Plug 'junegunn/vim-easy-align'
Plug 'osyo-manga/vim-over'
Plug 'tpope/vim-repeat'
"Plug 'xolox/vim-session'
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

"Plug 'ryanoasis/vim-devicons'
"" On-demand loading
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()
