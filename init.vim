for f in split(glob('~/.config/nvim/*.vim'), '\n')
  if f =~ '\v[0-9]{3}-.+\.vim'
    execute 'source' f
  endif
endfor
