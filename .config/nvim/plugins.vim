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
  " look & feel
	Plug 'morhetz/gruvbox'
  " move context automatically
	Plug 'airblade/vim-rooter'
  " lsp
  Plug 'neovim/nvim-lspconfig'
  " sensible defaults
	Plug 'tpope/vim-sensible'
call plug#end()

" plugin configurations
source ~/.config/nvim/gruvbox.vim

