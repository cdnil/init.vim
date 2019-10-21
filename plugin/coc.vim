let g:coc_start_at_startup = 1
let g:coc_global_extensions = [
\ 'coc-tsserver',
\ 'coc-json',
\ 'coc-css',
\ 'coc-html',
\ 'coc-yaml',
\ 'coc-python',
\ 'coc-snippets',
\ 'coc-eslint',
\ 'coc-jest',
\ 'coc-vimlsp',
\ 'coc-pairs',
\ 'coc-yank',
\ ]

nmap <silent> <leader>dd <Plug>(coc-definition)
nnoremap <silent> gd <Plug>(coc-defininion)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <leader>qf  <Plug>(coc-fix-current)
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
