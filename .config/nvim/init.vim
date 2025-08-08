"" Where editing magic is configured.
" References:
"   https://codeinthehole.com/tips/vim-lists
""

" auto-install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl --create-dirs --fail --location --output '.data_dir.'/autoload/plug.vim --url https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" declare plugins
call plug#begin('~/.local/share/nvim/site/plugged')
  Plug 'airblade/vim-rooter'
  Plug 'morhetz/gruvbox'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-sensible'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

" configure ide
source ~/.config/nvim/editor.vim
source ~/.config/nvim/gruvbox.vim
source ~/.config/nvim/netrw.vim
source ~/.config/nvim/system.vim
source ~/.config/nvim/terminal.vim
source ~/.config/nvim/vim-airline.vim
source ~/.config/nvim/vim-fugitive.vim
