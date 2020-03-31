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
" set foldmethod=indent "syntax highlighting items specify folds
set foldlevelstart=99 "start file with all folds opened
set autoread
set list " work great with onedark.vim for showing trail chars
set cmdheight=1
set synmaxcol=500
set showtabline=1
set history=500
set spelllang=en_us,cjk
" set formatoptions+=mM
set formatoptions=cqmMB

" nnoremap : ;
" nnoremap ; :

" vnoremap : ;
" vnoremap ; :

nnoremap <leader><Tab> :b#<cr>
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
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

autocmd BufRead,BufNewFile *.md set wrap linebreak

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

command! Bd :bp | :sp | :bn | :bd " Close buffer without closing window.

nnoremap <leader>k :Bd<cr>

runtime plugins.vim

nnoremap gd :ALEGoToDefinition<cr>

let g:XkbSwitchEnabled = 1
let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

command! -nargs=1 Vo call s:AddVocabulary(<q-args>)

function! s:AddVocabulary(word)
  execute 'silent !echo ' . a:word . ' >> ~/wiki/english/vocabulary.md'
  redraw!
endfunction
