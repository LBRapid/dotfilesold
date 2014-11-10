" FUNCTIONS {{{
" }}}

" SETTINGS {{{
  " do not display mapping message
  let g:ag_mapping_message=0
" }}}

" MAPPINGS {{{
  " Search all text and add results tp location-list window
  nnoremap <leader>a :Ag!<space>
  " append search to existing location-list
  nnoremap <leader>aa :AgAdd<space>
  " Search help files and add results to location-list window
  nnoremap <leader>ah :AgHelp!<space>
" }}}
