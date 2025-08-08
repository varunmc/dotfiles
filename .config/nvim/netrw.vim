""
" References:
"   https://thevaluable.dev/vim-browsing-remote-netrw
"   https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer
""

"" Automation
augroup Netrw
  autocmd!
    " disable unnamed buffers
    " https://www.reddit.com/r/neovim/comments/lovv9i/how_can_i_stop_netrw_creating_no_name_buffers_on
    autocmd FileType netrw setlocal bufhidden=wipe
augroup END

"" Environment
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4

"" Maps
nnoremap <Leader>e :Lexplore<CR>:vertical resize 30<CR>
