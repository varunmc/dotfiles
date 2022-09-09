" Plugins

" autoload vim-plug
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl --create-dirs --fail --location --output ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')
  " change cwd automatically
	Plug 'airblade/vim-rooter'
  " look & feel
	Plug 'morhetz/gruvbox'
  " sensible defaults
	Plug 'tpope/vim-sensible'
  " git support
  Plug 'tpope/vim-fugitive'
call plug#end()

" configurations
source ~/.config/nvim/gruvbox.vim
