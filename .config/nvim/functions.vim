""""""""""""""""""""""""""
" User-Defined Functions "
""""""""""""""""""""""""""

function! FluxAutoCommands()
  " execute chunk (⌥0)
  nnoremap <buffer>         º V{:FluxQueryInfluxDB blbr.ai<cr>
  " execute page (⌥0)
  nnoremap <buffer> <leader>º Vgg:FluxQueryInfluxDB blbr.ai<cr>
endfunction
