if expand('%:t') == 'pubspec.yaml'
  if g:pub_bind_keys == 1
    nnoremap <localleader>pg :PubGet<cr>
    nnoremap <localleader>pu :PubUpgrade<cr>
  endif
endif
