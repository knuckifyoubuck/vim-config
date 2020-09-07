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

set mouse=a

set autoindent
set smartindent

set ignorecase
set smartcase

set t_Co=256
syntax on

"Config for true colors in tmux 
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"Copy and paste from system clipboard
noremap <S-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d

"Exit from insert mode
:imap jj <Esc>

"vim-plug --> 
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

Plug 'scrooloose/nerdtree'
"--------------------
map <C-n> :NERDTreeToggle<CR>
"open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"--------------------

Plug 'scrooloose/syntastic'
"--------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"--------------------

Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter'
Plug 'valloric/youcompleteme'
Plug 'ervandew/supertab'
Plug 'pangloss/vim-javascript'
Plug 'yggdroot/indentline'
Plug 'christoomey/vim-tmux-navigator'

"Colorscheme gruvbox
"--------------------
Plug 'morhetz/gruvbox'
autocmd vimenter * colorscheme gruvbox
set background=dark
let g:gruvbox_italic=1
"--------------------

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"--------------------
let g:airline_theme='base16_3024'
let g:airline_powerline_fonts = 1
"--------------------

call plug#end()
"<--
