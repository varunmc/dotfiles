" Plugins.

" Autoload vim-plug.
"" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl --create-dirs --fail --location --output ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins.
call plug#begin('~/.vim/plugged')
  " sensible defaults
	Plug 'tpope/vim-sensible'

  " auto cwd
	Plug 'airblade/vim-rooter'

  " git support
  Plug 'tpope/vim-fugitive'

  " flux support
  Plug 'gianarb/vim-flux'

  " webapi support
  "" required by vim-flux
  Plug 'mattn/webapi-vim'

  " look & feel
	Plug 'morhetz/gruvbox'
call plug#end()

" Plugin configurations.
source ~/.config/nvim/vim-flux.vim
source ~/.config/nvim/gruvbox.vim
