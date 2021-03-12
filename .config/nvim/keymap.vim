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

""" Search/Replace
map  <esc> <esc>:noh<cr>
"""

""" Navigation
" maximise split
noremap <c-o> <c-w>o
tmap    <c-o> <esc><c-w>oi
" close split/buffer
noremap ∑ :bd<cr>
tmap    ∑ <esc>:bd!<cr>
" goto split
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
tmap    <c-h> <esc><c-w>h
tmap    <c-j> <esc><c-w>j
tmap    <c-k> <esc><c-w>k
tmap    <c-l> <esc><c-w>l
"""
