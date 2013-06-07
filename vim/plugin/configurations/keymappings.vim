" -----------------------------------------------------------
"  TABS
" -----------------------------------------------------------
"

" CMD-# switches to tab
nmap <d-1> 1gt
nmap <d-2> 2gt
nmap <d-3> 3gt
nmap <d-4> 4gt
nmap <d-5> 5gt
nmap <d-6> 6gt
nmap <d-7> 7gt
nmap <d-8> 8gt
nmap <d-9> 9gt

" changing tabs with number keys
map <leader>1 1gt
map <leader>2 2gt
map <leader>3 3gt
map <leader>4 4gt
map <leader>5 5gt
map <leader>6 6gt
map <leader>7 7gt
map <leader>8 8gt
map <leader>9 9gt
map <leader>[ gT
map <leader>] gt
map <leader>0 :tablast<CR>

" Custom Indent Mappings
nmap <d-[> <<
nmap <d-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" -----------------------------------------------------------
"  MISC SETTINGS
" -----------------------------------------------------------
"

" Commentary mappings
map <d-k> \\\
imap <d-k> \\\

" Make the dot key functional in visual mode
:vnoremap . :normal .<CR>

" Run RSpec for the current file
map <leader>s :w\|:!bundle exec rspec --color %<cr>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" xmpfilter Gvim
nmap <buffer> <leader>r <Plug>(xmpfilter-run)
xmap <buffer> <leader>r <Plug>(xmpfilter-run)

nmap <buffer> <leader>m <Plug>(xmpfilter-mark)
xmap <buffer> <leader>m <Plug>(xmpfilter-mark)

" Map clipboard paste to ,v
nmap ,v "*p

" ,s to Save
nnoremap ,s :w<cr>
