nnoremap <silent>s :Denite buffer file/rec -winheight=`50*winheight(0)/100` -winrow=`25*winheight(0)/100`<cr>
nnoremap <silent><leader>gg :Denite -no-empty -winheight=`50*winheight(0)/100` -winrow=`25*winheight(0)/100` grep<cr>
nnoremap <silent><leader>g :<c-u>set operatorfunc=GrepOperator<cr>g@
vnoremap <silent><leader>g :<c-u>call GrepOperator(visualmode())<cr>


autocmd FileType denite call s:denite_normal_settings()
autocmd FileType denite-filter call s:denite_filter_settings()

function! s:denite_normal_settings() abort
  nnoremap <silent><buffer><expr> s denite#do_map('quit')
endfunction

function! s:denite_filter_settings()
  " imap <silent><buffer> <C-c> <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <C-c> denite#do_map('quit')
endfunction

call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#option('_', {
      \ 'prompt': 'λ',
      \ 'split': 'floating',
      \ 'statusline': 0,
      \ 'auto-resume': 1,
      \ })

" call denite#custom#kind('_', 'default_action', 'tabswitch')

call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/*', '*.pyc', 'node_modules/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/', '*.png'])

function! GrepOperator(type)
    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    execute "Denite grep -input=" . @@
endfunction
