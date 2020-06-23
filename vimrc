
" color scheme for status line
let g:lightline = {
      \ 'colorscheme': 'material',
      \ }

set nocompatible
set autowrite
set backspace=indent,eol,start
set ignorecase
set sidescrolloff=5
set scrolloff=3
set spell
set hlsearch
set incsearch
set number
set ruler
set showcmd
set noshowmode
set cursorline
highlight CursorLine guibg=lightblue ctermbg=black
set tabstop=4
set numberwidth=5
set smarttab
set showmatch " Show matching brackets when text indicator is over them
set autoindent
set relativenumber
set background=dark
set linebreak
syntax on
set shiftwidth=4
filetype indent plugin on 
"respect indentation when starting a line
packloadall		"Load all plugins
set foldmethod=indent 
set wildmenu 		"enable enhanced tab autocomplete
set wildmode=list:longest,full 		"complete till longest string, then open the wildmenu
set tags=tags;
set laststatus=2 "Always show status line
silent! helptags all "Load help files for all plugins

" Install vim-plug if it's not already installed.

if empty(glob('~/.vim/autoload/plug.vim'))
silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
\ https://raw.github.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Manage plugins with vim-plug.
call plug#begin()
let g:plug_timeout = 300 " Increase vim-plug timeout for YouCompleteMe.
Plug 'sjl/gundo.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" Look for a tags file recursively in
" parent directories. Hit Ctrl + ], Ctrl + t, :tn(tag next), :tp(tag previous), :ts .

" Regenerate tags when saving Python files.
autocmd BufWritePost *.c silent! !ctags -R &


map! <C-F> <Esc>gUiw`]a


" Returns true if paste mode is enabled (helper function)
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction


"format the status line
let g:netrw_listsytle=1

" color scheme for status line
let g:lightline = {
      \ 'colorscheme': 'material',
      \ }




" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
