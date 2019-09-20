set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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

" global
colorscheme torte

" pastemode settings 
set nopaste
set relativenumber
set number
set hlsearch
set pastetoggle=<F2>

" sounds
set belloff=all

" formatting
set smartindent
set tabstop=4       " 
set shiftwidth=4    " 
set expandtab       " Makes tab key insert 4 spaces
set autoindent
set cursorline      " Adds cursor line highlighting 
set cursorcolumn    " Adds cursor column highlighting 
hi CursorLine term=bold cterm=bold     " cursor line bolding
highlight CursorColumn ctermbg=234
highlight CursorLine ctermbg=234

" functions
fun! SudoWrite()
    silent write !sudo tee %
    edit!
endfun

" keybindings
" toggle cursor highlighting
nnoremap H :set cursorline! cursorcolumn!<CR>
" Force saving files that require root permission 
cnoremap sw :call SudoWrite()<CR>
