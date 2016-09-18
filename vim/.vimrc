set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-fugitive'
" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set nocompatible    " not compatible with the old-fashion vi mode
set bs=2        " allow backspacing over everything in insert mode
set history=50        " keep 50 lines of command line history
set ruler        " show the cursor position all the time
set autoread        " auto read when file is changed from outside
set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set wildmenu
set expandtab
set noswapfile
set nobackup
set laststatus=2

"syntax enable
set t_Co=256

set cursorline
autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

syntax on

let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
syntax enable
set nu

" folding
" set foldmethod=syntax
" set foldcolumn=2     " the number of columns to use for folding display at the left

" lint
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
