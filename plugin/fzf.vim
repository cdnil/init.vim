if &runtimepath !~ 'fzf.vim'
  finish
endif

" autocmd! FileType fzf set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let $FZF_DEFAULT_OPTS .= ' --layout=reverse'

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

nnoremap <silent>sf :GFiles<cr>
nnoremap <silent>sg :Rg<cr>
nnoremap <silent>sb :Buffers<cr>
