let mapleader=" "

" swap ; and :
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
