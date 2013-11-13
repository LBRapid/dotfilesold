let g:syntastic_quiet_warnings = 1
let g:syntastic_ruby_checkers = ['rubylint']

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'passive_filetypes': ['ruby'] }

nnoremap <leader>c :SyntasticCheck<CR>
