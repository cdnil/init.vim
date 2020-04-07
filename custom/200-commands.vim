command! Bd :bp | :sp | :bn | :bd " Close buffer without closing window.
command! Do :sp ~/wiki/todo.md

command! -nargs=1 Vo call s:AddVocabulary(<q-args>)
function! s:AddVocabulary(word)
  execute 'silent !echo ' . a:word . ' >> ~/wiki/english/vocabulary.md'
  redraw!
endfunction

