"Auto indent
set ai
"Auto read
set ar
"Auto write
set awa
"Deleting
set bs=indent,eol,start
"Display
set dy=lastline,uhex
"Windows are equal
set ea
"Ignore case in patterns
set ic
"Line number
set nu
"Columns for line number
set nuw=4
"Scroll offset
set so=5
"Horizontal scroll offset
set siso=16
"New window below
set sb
"Break line char
set sbr=>\  
"New window right
set spr
"Wrap
"set ww=b,s
set nowrap
"Size of indent
set tabstop=4
"Shift width
set sw=4
"Spaces instead of tabs
set expandtab

set smartindent

"Show whitespaces
set list

set nocompatible
filetype off

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'fatih/vim-go'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'ekalinin/Dockerfile.vim'
Plug 'neoclide/coc.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'

Plug 'ayu-theme/ayu-vim'

call plug#end()

if exists('+termguicolors')
    set termguicolors
endif

let ayucolor="dark"
colorscheme ayu

hi CocMenuSel   ctermbg=237 guibg=#13151A
hi Comment guifg=#7B8896

"disable gopls in vim-go to avoid duplication
"let g:go_gopls_enabled = 0

"airline separators
let g:airline_left_sep = ''
let g:airline_right_sep = ''

"rust.vim autofmt
let g:rustfmt_autosave = 1

"NERDTree and NERDCommenter
map <C-g> :NERDTreeToggle<CR>
map // <plug>NERDCommenterToggle

"Quick window moving
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

"Coc
inoremap <expr> <CR> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
"inoremap <expr> <Space> coc#pum#visible() ? coc#_select_confirm() : "\<Space>"
inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <silent><expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<Tab>"

nmap <silent> gd <Plug>(coc-definition)
nmap <leader>rn <Plug>(coc-rename)

"Terminal
noremap <F12> :bo :tabnew<CR>:terminal<CR>i
tnoremap <ESC> <C-\><C-n>

"IndentLine
let g:indentLine_char = '|'
