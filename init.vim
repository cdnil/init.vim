for f in split(glob('~/.config/nvim/custom/*.vim'), '\n')
  execute 'source' f
endfor

colorscheme nil

autocmd BufNewFile,BufRead *.wxml set filetype=html
autocmd FocusGained * :checktime
autocmd BufRead,BufNewFile *.md set wrap linebreak

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

let g:XkbSwitchEnabled = 1
let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=n
endif

