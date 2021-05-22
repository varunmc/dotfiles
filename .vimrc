""""""""""""""""""""""""""""""""""""""""""""
" VimRC: Where editing magic is configured "
""""""""""""""""""""""""""""""""""""""""""""

" detect os
if has('win32')
  let os = 'win32'
else
  let os = 'unix'
endif

" plugins
source ~/.config/nvim/plugins.vim
" look & feel
source ~/.config/nvim/environment.vim
" os key bindings
execute 'source ~/.config/nvim/'.os.'/keymap.vim'
" automated behavior
source ~/.config/nvim/automation.vim

