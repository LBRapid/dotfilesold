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
vmap <d-[> <gv
vmap <d-]> >gv

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
nnoremap <leader>k \\\

" Make the dot key functional in visual mode
:vnoremap . :norm.<CR>

" xmpfilter Gvim
nmap <buffer> <leader>r <Plug>(xmpfilter-run)
xmap <buffer> <leader>r <Plug>(xmpfilter-run)

nmap <buffer> <leader>m <Plug>(xmpfilter-mark)
xmap <buffer> <leader>m <Plug>(xmpfilter-mark)

" Map clipboard paste to ,v
nmap ,v "*p

" ,s to Save
nnoremap ,s :w<cr>

" haste paste
nnoremap <silent> <leader>h :%w ! haste \| pbcopy<CR>
vmap <silent> <leader>h :w ! haste \| pbcopy<CR>
