" Include guards...
if exists('g:loaded_pub')
  finish
endif

if !exists('g:pub_bind_keys')
  let g:pub_bind_keys = 1
endif

if !exists('g:pub_command')
  let g:pub_command="pub"
endif

command! PubGet :call pub#get()
command! -nargs=* PubRun :call pub#run(<args>)
command! -nargs=* PubTest :call pub#run("test", <args>)
command! -nargs=* PubUpgrade :call pub#upgrade(<args>)
