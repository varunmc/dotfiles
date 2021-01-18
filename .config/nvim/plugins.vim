"""""""""""
" Plugins "
"""""""""""

" autoload vim-plug
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl --create-dirs --fail --location --output ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')
	Plug 'airblade/vim-rooter'
	Plug 'morhetz/gruvbox'
	Plug 'tpope/vim-sensible'
call plug#end()

" plugin configurations
source ~/.config/nvim/gruvbox.vim
