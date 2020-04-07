for f in split(glob('./custom/*.vim'), '\n')
  execute 'source' f
endfor

" see https://github.com/vim/vim/issues/993#issuecomment-255651605
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

colorscheme nord

autocmd FocusGained,BufEnter,CursorHold * checktime %
