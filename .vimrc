"plugins -----------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'preservim/nerdtree'
"web dev
"ruby
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-endwise'
"neocomplete Plugin
  Plugin 'Shougo/neocomplete.vim'
  Plugin 'jose-elias-alvarez/null-ls.nvim'
"autocompletion
  Plugin 'LunarWatcher/auto-pairs'
  Plugin 'tpope/vim-surround'
"keywordcomplete
  Plugin 'maxboisvert/vim-simple-complete'
Plugin 'majutsushi/tagbar'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'yggdroot/indentline'
Plugin 'sheerun/vim-polyglot'
Plugin 'garbas/vim-snipmate'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'gmarik/Vundle.vim'
Plugin 'slim-template/vim-slim.git'
Plugin 'w0rp/ale'
Plugin 'ap/vim-css-color'
Plugin 'morhetz/gruvbox'
"html
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'othree/html5.vim'
"git
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'


call vundle#end()

"set line number
set number
set ruler

syntax on
set encoding=utf-8
set t_Co=256
set wildmode=list:longest
"highlight search result
set hlsearch
set incsearch
set ignorecase
set smartcase
"matching bracket
set showmatch
"spaces instead of tab
set expandtab
set smarttab
set wrap
set showmode
"intending
set shiftwidth =4
set autoindent
set tabstop =2
set softtabstop =2
set textwidth =79
"mouse
set mouse=a
"remove trailing whitespaces
"autocmd bufEnter * %s/\s\+$//e
"highlight currentline
set cursorline
"highlight Cursorline cterm=bold ctermbg=black
"ui
set background =dark
"set termguicolors
colorscheme gruvbox
"split
set splitbelow splitright
    map <C-h> <C-w>h
    map <C-l> <C-w>l
    map <C-j> <C-w>j
    map <C-k> <C-w>k

"mappings ----------
   " let g:mapleader = "\<Space>"
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
"vimscript ----------
noremap <c-n> :NERDTreeToggle <cr>


syntax enable
filetype plugin indent on
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

"snipMate
let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'

