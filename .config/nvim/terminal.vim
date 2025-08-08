"" Automation
augroup Terminal
  autocmd!
    " activate insert mode on terminal entry
    autocmd BufEnter,TermOpen * if &buftype == 'terminal' | startinsert | endif
augroup END

"" Maps
" new horizontal/vertical/inplace terminal
nnoremap <Leader>t     :botright terminal<CR>
nnoremap <Leader>vt    :vertical botright terminal<CR>
nnoremap <Leader><S-t> :terminal<CR>
