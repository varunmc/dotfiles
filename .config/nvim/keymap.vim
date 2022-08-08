" Key Bindings
" Inspired by IntelliJ with a modifications to accomodate limitations with iPad keyboards.
" https://resources.jetbrains.com/storage/products/intellij-idea/docs/IntelliJIDEA_ReferenceCard.pdf
"
" Modifiers (⌘⌃↩⌥↑)
" Modifications:
"   ⌘ -> ⌥
""

" General
"" escape
tnoremap <esc> <c-\><c-n>

" Tools
"" settings (⌥,)
noremap ≤ :edit ~/.vimrc<cr>
"" terminal (⌥=)
noremap         ≠ :20sp term:///bin/bash<cr>
noremap <leader>≠ :vs term:///bin/bash<cr>

" Search/Replace
"" clear highlight
map <esc> <esc>:noh<cr>

" Editing
"" maximize split
noremap <c-o> <c-w>o
tmap    <c-o> <esc><c-w>oi
"" close split (⌥w)
noremap ∑ :bd<cr>
tmap    ∑ <esc>:bd!<cr>
"" move lines down/up (↑⌥j/↑⌥k)
noremap  Ô :m+<cr>==
noremap   :m-2<cr>==
vnoremap Ô :m '>+1<cr>gv=gv
vnoremap  :m '<-2<cr>gv=gv

" Navigation
"" show open buffers (⌥eb)
noremap ´b :buffers<cr>:buffer<space>
"" navigate back/forward buffers (⌥h/⌥l)
noremap ˙ :bprevious<cr>
noremap ¬ :bnext<cr>
"" navigate splits
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
tmap    <c-h> <esc><c-w>h
tmap    <c-j> <esc><c-w>j
tmap    <c-k> <esc><c-w>k
tmap    <c-l> <esc><c-w>l
