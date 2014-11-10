" FUNCTIONS {{{
" }}}

" SETTINGS {{{
" }}}

" MAPPINGS {{{
  " Copy to system clipboard
  vnoremap <leader>y "*y
  nnoremap <leader>y "*y
  " Paste from the system clipboard using paste mode
  noremap <leader>p :set paste<cr>"*p<cr>:set nopaste<cr>
  vnoremap <leader>p d:set paste<cr>"*p<cr>:set nopaste<cr>
" }}}
