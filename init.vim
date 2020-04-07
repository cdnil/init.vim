for f in split(glob('./custom/*.vim'), '\n')
  execute 'source' f
endfor
