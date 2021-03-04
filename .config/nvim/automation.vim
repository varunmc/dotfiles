""""""""""""""""""""""
" Automated Behavior "
""""""""""""""""""""""

augroup Automation
        autocmd!
	" reload settings on update
	autocmd BufWritePost ~/.config/nvim/*.vim source $MYVIMRC
	autocmd BufWritePost ~/.vimrc source $MYVIMRC
	" insert mode on terminal entry
	autocmd BufEnter,BufWinEnter term://* startinsert
	" normal mode on terminal exit
	autocmd BufLeave term://* stopinsert
augroup END
