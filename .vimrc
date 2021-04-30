"Auto indent
set ai
"Auto read
set ar
"Auto write
set awa
"Background
set bg=dark
"Deleting
set bs=indent,eol,start
"set cin
"CMD line height
set ch=1
"Pop menu
set cot=menu
"Highlight line
"set cul
"Display
set dy=lastline,uhex
"Windows are equal
set ea
"Ignore case in patterns
set ic
"Status line
set ls=2
"Line number
set nu
"Columns for line number
set nuw=4
"Show line and column
set ru
"Scroll offset
set so=5
"New window below
set sb
"Break line char
set sbr=>\  
"New window right
set spr
"Wrap
set ww=b,s
set wrap
"Size of indent
set tabstop=4
"Shift width
set sw=4
"Spaces instead of tabs
set expandtab
"Go to the next/previous line from last\first character
set ww=<,>,[,]

set smartindent

"Show whitespaces
set list

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'blueshirts/darcula'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdcommenter'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'neoclide/coc.nvim'

call vundle#end()
filetype plugin indent on

if exists('+termguicolors')
    set termguicolors
endif

colorscheme darcula

map <C-g> :NERDTreeToggle<CR>
map // <plug>NERDCommenterToggle

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Space> pumvisible() ? "\<C-y> " : "\<Space>"
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"
