" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" Install:
" 1. search plugin in vimawesome.com
" 2. add it in form: Plug 'author/plugin_name'
" 3. run command :PlugInstall
" For more information, visit https://github.com/junegunn/vim-plug
let g:plug_window = 'new'

if has('win32')
    let g:vimrc = '$HOME/vimfiles/'
else
    let g:vimrc = '~/.vim/'
endif
call plug#begin(g:vimrc.'plugged')

" Make sure you use single quotes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Language
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'lervag/vimtex', {'for' : ['tex','plaintex']}
Plug 'scrooloose/nerdcommenter'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'brennier/quicktex', {'for': 'tex'}
Plug 'raimondi/delimitmate'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}} "Framework + lsp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Code display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'yggdroot/indentline'
"Plug 'lilydjwg/colorizer'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Integrations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'rhysd/vim-grammarous'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
" debug plugin for python
"Plug 'joonty/vdebug'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Yggdroot/LeaderF', { 'do': '.\install' }
Plug 'liuchengxu/vim-which-key'
Plug 'vim-airline/vim-airline'
Plug 'machakann/vim-highlightedyank'
"Plug 'pgdouyon/vim-evanesco'
Plug 'henrik/vim-indexed-search'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeCWD'] }
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
Plug 'mhinz/vim-signify'
Plug 't9md/vim-choosewin'
Plug 'Yilin-Yang/vim-markbar'
Plug 'junegunn/vim-peekaboo'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-smooth-scroll'
Plug 'junegunn/vim-easy-align'
Plug 'osyo-manga/vim-over', {'on': 'OverCommandLine'}
"Plug 'xolox/vim-session'
Plug 'tpope/vim-speeddating'
Plug 'danro/rename.vim', {'on': 'Rename'}
"Plug 'keith/investigate.vim'
" Evaluate text as a math expression and replace it with the result.
Plug 'm1foley/vim-expresso'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'lotabout/ywvim'
Plug 'embear/vim-localvimrc'
"Keep caret on last place when reopen a file
Plug 'farmergreg/vim-lastplace'

call plug#end()
