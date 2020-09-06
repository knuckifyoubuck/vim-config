"My configuration for vim
"------------------------
set wildmenu

set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set number
set ruler
set nowrap

set autoindent
set smartindent

set ignorecase
set smartcase

set foldcolumn=2

set t_Co=256
syntax on

set mouse=a

"Moving between tabs in vim 
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Copy and paste from system clipboard
noremap <S-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d

:imap jj <Esc>

"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'valloric/youcompleteme'
Plug 'ervandew/supertab'
Plug 'pangloss/vim-javascript'
Plug 'yggdroot/indentline'
Plug 'christoomey/vim-tmux-navigator'

"Colorscheme gruvbox
Plug 'morhetz/gruvbox'
autocmd vimenter * colorscheme gruvbox
set background=dark
let g:gruvbox_italic=1
set termguicolors
"--------------------

call plug#end()
