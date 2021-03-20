"""
" Key Bindings
" Inspired by IntelliJ with a few modifications to accomodate limitations with iPad keyboards.
" (https://resources.jetbrains.com/storage/products/intellij-idea/docs/IntelliJIDEA_ReferenceCard.pdf)
"
" Modifiers (⌘⌃↩⌥↑)
"   ⌘ -> ⌥
"""

""" General
" maximize split
noremap  <c-o> <c-w>o
tnoremap <c-o> <esc><c-w>oi
" escape
tnoremap <esc> <c-\><c-n>
"""

""" Tools
" settings (⌥,)
noremap ≤ :edit ~/.vimrc<cr>
" terminal (⌥=)
noremap         ≠ :20sp term:///bin/bash<cr>
noremap <leader>≠ :vs term:///bin/bash<cr>
"""

""" Search/Replace
" clear highlight
map <esc> <esc>:noh<cr>
"""

""" Editing
" close split/buffer (⌥w)
noremap ∑ :bd<cr>
tmap    ∑ <esc>:bd!<cr>
"""

""" Navigation
" recent files (⌥eb)
noremap ´b :buffers<cr>:buffer
" navigate back/forward buffers (⌥h/⌥l)
noremap ˙ :bprevious<cr>
noremap ¬ :bnext<cr>
" navigate splits
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
tmap    <c-h> <esc><c-w>h
tmap    <c-j> <esc><c-w>j
tmap    <c-k> <esc><c-w>k
tmap    <c-l> <esc><c-w>l
"""

