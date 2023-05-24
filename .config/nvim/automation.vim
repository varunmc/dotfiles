""""""""""""""""""""""
" Automated Behavior "
""""""""""""""""""""""

augroup Automation
  autocmd!
	" insert mode on terminal entry
	autocmd BufEnter,BufWinEnter term://* startinsert
	" autoload settings on update
	autocmd BufWritePost ~/.config/nvim/*.vim source $MYVIMRC
	autocmd BufWritePost ~/.vimrc source $MYVIMRC
  " trigger autoread when files change on disk
  " https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
  " https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
    \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif
  " notify file changed event
  autocmd FileChangedShellPost *
    \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
  " enable flux support
  autocmd FileType flux call FluxAutoCommands()
augroup END
