"syntax highlightning
syntax on

"show line numbers
set number

"reload files changed outside vim
set autoread

" set , as mapleader
let mapleader = ","

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" map <leader>q and <leader>w to buffer prev/next buffer
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>

set encoding=utf-8

" indentation
set expandtab       " use spaces instead of tabs
set autoindent      " autoindent based on line above, works most of the time
set smartindent     " smarter indent for C-like languages
set shiftwidth=4    " when reading, tabs are 4 spaces
set softtabstop=4   " in insert mode, tabs are 4 spaces

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'itchyny/lightline.vim'      
Plugin 'Lokaltog/vim-easymotion'    
Plugin 'tpope/vim-surround'         
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/vim-github-dashboard'
Plugin 'tpope/vim-fugitive'
" -- Web Development
Plugin 'pangloss/vim-javascript'
Plugin 'Shutnik/jshint2.vim'        
Plugin 'mattn/emmet-vim'            
Plugin 'kchmck/vim-coffee-script'   
Plugin 'groenewege/vim-less'        
Plugin 'skammer/vim-css-color'      
Plugin 'hail2u/vim-css3-syntax'     
Plugin 'digitaltoad/vim-jade'  
 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" start NERDTree on start-up and focus active window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" map FuzzyFinder
noremap <leader>b :FufBuffer<cr>
noremap <leader>f :FufFile<cr>
