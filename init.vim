let mapleader=" "


colorscheme nil
set path+=**
set wildignore+=**/node_modules/** 
set shortmess+=I " hide intro message
set noerrorbells
set novisualbell
set termguicolors
set noshowmode
set nowrap
set linebreak
set updatetime=100
set clipboard=unnamed
set number
set nocursorline
set signcolumn=yes
set fillchars=vert:\│,fold:-
set splitright
set splitbelow
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set foldmethod=indent "syntax highlighting items specify folds
set foldlevelstart=99 "start file with all folds opened
set autoread
set list " work great with onedark.vim for showing trail chars
set cmdheight=1
set synmaxcol=500
set showtabline=1

" nnoremap : ;
" nnoremap ; :

" vnoremap : ;
" vnoremap ; :

nnoremap <leader><Tab> :b#<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap <leader>nn :nohl<cr>

nnoremap <leader>nb :bnext<cr>
nnoremap <leader>pb :bprevious<cr>
nnoremap <leader>nc :cnext<cr>
nnoremap <leader>pc :cprevious<cr>
nnoremap <leader>nl :lnext<cr>
nnoremap <leader>pl :lprevious<cr>
nnoremap <leader>x :Defx ~/.notes<CR>

" save buffer
nnoremap <silent> <C-S>    :w<CR>
vnoremap <silent> <C-S>   <C-C>:w<CR>
inoremap <silent> <C-S>   <C-C>:w<CR>

" search visual
vnoremap // y/<C-r>"<cr>

" terminal
tnoremap <Esc> <C-\><C-n>


autocmd BufNewFile,BufRead *.wxml set filetype=html
autocmd FocusGained * :checktime

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md set wrap linebreak

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

runtime plugins.vim

