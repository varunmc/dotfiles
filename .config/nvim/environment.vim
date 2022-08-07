" Look & Feel
""

filetype indent on

let mapleader = '\'
let g:netrw_fastbrowse = 0

set autoindent              " copy indent to a new line
set autoread                " reload a file if changed on disk
set clipboard+=unnamedplus  " integration with system clipboard
set expandtab               " convert tabs to spaces
set hidden                  " hide unsaved buffers
set number                  " show absolute line numbers
set relativenumber          " show relative line numbers
set scrolloff=999           " center cursor line vertically
set shiftwidth=2            " indent length in spaces
set smartcase
set smartindent             " autoindent when starting a new line
set smarttab
set softtabstop=2
set splitbelow              " horizontal split below active buffer
set splitright              " vertical split right of active buffer
set tabstop=2               " tab length in spaces
set wildignore+=*.class

syntax enable
