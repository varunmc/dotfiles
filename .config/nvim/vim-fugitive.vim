"" Automation
augroup Fugitive
  autocmd!
    " resize git status buffer on navigation
    "autocmd BufEnter,BufLeave * if StartsWith(bufname(''), 'fugitive') | :vertical resize 50<CR> | endif
augroup END

"" Functions
" toggles git status explorer
" https://vi.stackexchange.com/a/39087
function! ToggleGitStatus() abort
  for l:winnr in range(1, winnr('$'))
    if !empty(getwinvar(l:winnr, 'fugitive_status'))
      exe l:winnr 'close'
      return
    endif
  endfor
  keepalt vertical botright Git
endfunction

"" Maps
" toggle git status explorer
nnoremap <Leader>g :call ToggleGitStatus()<CR>
