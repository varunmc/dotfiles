"" Automation
augroup Editor
  autocmd!
    " trigger autoread on changed files
    " https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
    " https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
    autocmd BufEnter,CursorHold,CursorHoldI,FocusGained * if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif
    " notify on file change
    autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
    " highlight text on yank
    " https://neovim.io/doc/user/lua.html#vim.highlight
    autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup='Visual', timeout=250}
augroup END

"" Functions
" toggles a tab focused on the current buffer
let s:fullscreen = 0
function! ToggleFullscreen()
  if s:fullscreen
    tabclose
    let s:fullscreen = 0
  else
    tabnew %
    let s:fullscreen = 1
  endif
endfunction

"" Environment
filetype plugin on
filetype plugin indent on
syntax on
" indent wrapped lines
set breakindent
" highlight the current line
set cursorline
" convert tabs to whitespace
set expandtab
" highlight search matches
set hlsearch
" search case-insensitive by default
set ignorecase
" display non-printable characters
set list
" set characters for list mode
set listchars=extends:›,nbsp:␣,precedes:‹,tab:»\ ,trail:•
" display absolute line numbers
set number
" display relative line numbers
set relativenumber
" reserve lines above/below the cursor
set scrolloff=10
" indicate a wrapped line
set showbreak=↪\ 
" display the sign column
set signcolumn=yes
" search case-sensitive when using uppercase
set smartcase
" create horizontal splits below
set splitbelow
" create vertical splits to the right
set splitright
" size of a tab
set tabstop=2

"" Maps
" clear highlights
nnoremap <Esc> <Esc>:nohlsearch<CR>
inoremap <Esc> <Esc>:nohlsearch<CR>
tnoremap <ESC> <C-\><C-n>:nohlsearch<CR>
" goto previous/next buffer
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab>   :bnext<CR>
" goto left/right split
nnoremap <C-h> <C-w>h
tnoremap <C-h> <C-\><C-n><C-w>h
nnoremap <C-l> <C-w>l
tnoremap <C-l> <C-\><C-n><C-w>l
" goto above/below split
nnoremap <C-k> <C-w>k
tnoremap <C-k> <C-\><C-n><C-w>k
nnoremap <C-j> <C-w>j
tnoremap <C-j> <C-\><C-n><C-w>j
" change height/width
"nnoremap <

" toggle fullscreen
"nnoremap <Leader>f :call ToggleFullscreen()<CR>
"tnoremap <Leader>f <C-\><C-n>:call ToggleFullscreen()<CR> \| :startinsert<CR>
" close buffer(s)
nnoremap <Leader>w     :bdelete<CR>
tnoremap <Leader>w     exit<CR>
nnoremap <Leader><S-w> :%bdelete<CR>
