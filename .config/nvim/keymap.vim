""""""""""""""""
" Key Bindings "
""""""""""""""""

""" General
" escape
tnoremap <esc> <c-\><c-n>
"""

""" Tools
" settings
noremap ≤ :edit ~/.vimrc<cr>
" terminal
noremap         ≠ :20sp term:///bin/bash<cr>
noremap <leader>≠ :vs term:///bin/bash<cr>
"""

""" Navigation
" close active buffer
noremap ∑ :bd!<cr>
tmap    ∑ <esc>:bd!<cr>
"""
