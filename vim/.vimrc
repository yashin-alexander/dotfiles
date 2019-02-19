" global
colorscheme torte

" pastemode settings 
set nopaste
set relativenumber
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

