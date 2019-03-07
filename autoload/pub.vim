function! pub#get() abort
  let pub_out = system(g:pub_command ." get")

  " Open it in a split
  split __Pub_Output__
  " Reuse existing Pub buffer, so clear it each time
  normal! ggdG
  setlocal buftype=nofile
  call append(0, split(pub_out, '\v\n'))
endfunction

function! pub#run(...) abort
  let pub_out = system(g:pub_command ." run " . join(a:000))
  split __Pub_Output__
  normal! ggdG
  setlocal buftype=nofile
  call append(0, split(pub_out, '\v\n'))
endfunction

function! pub#upgrade(...) abort
  let pub_out = system(g:pub_command ." upgrade " . join(a:000))
  split __Pub_Output__
  normal! ggdG
  setlocal buftype=nofile
  call append(0, split(pub_out, '\v\n'))
endfunction
