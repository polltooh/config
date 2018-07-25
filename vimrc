set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'python-mode/python-mode'
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
syntax on
" fuzz find. Looking for files in the subdir
set path+=**
" set path=/Users/Geoff/Documents/learning_video/
" display all matching when tap complete
set wildmenu
set wildmode=list:full

set laststatus=2
set statusline+=%F

set expandtab
set tabstop=4 
set shiftwidth=4
set clipboard=unnamed
set number
set autoindent
set smartindent
set hlsearch
set ic
set colorcolumn=100
set backspace=indent,eol,start

" change the current dir to the opened a new file.
" set autochdir

" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>

" set paste
nnoremap <silent> 0 :!clear;python %<CR>
nnoremap 8 :YcmCompleter GoTo<CR>
nnoremap <silent> 9 :!clear;autopep8 --in-place --ignore E111,E114 --max-line-length 100 %<CR>
vnoremap . :normal .<CR>

" youcompleteme variable
let g:ycm_goto_buffer_command = 'horizontal-split'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
