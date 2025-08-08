"" Automation
augroup Init
  autocmd!
    " autoload settings on update
    autocmd BufWritePost *.vim source $MYVIMRC
augroup END

"" Environment
" use system clipboard
set clipboard=unnamedplus
" show effects of a command incrementally
set inccommand=split
" disable swap files
set noswapfile

"" Functions
" determines whether `longer` starts with `shorter`
" https://vi.stackexchange.com/a/29063
function! StartsWith(longer, shorter) abort
  return a:longer[0:len(a:shorter)-1] ==# a:shorter
endfunction

"" Maps
" Modifiers:
"   ⌘ - <Leader>^
"   ^ = <Leader>^
"   ^ = <Leader>
"
" References:
"   https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf
""
" show user settings
nnoremap <Leader>, :edit $MYVIMRC<CR>
