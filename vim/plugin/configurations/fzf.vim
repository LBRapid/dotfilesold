nnoremap <C-p> :FZF<cr>

" Open files in horizontal split
nnoremap <silent> <Leader>fs :call fzf#run({
\   'tmux_height': '40%',
\   'sink':        'botright split' })<CR>

" Open files in vertical horizontal split
nnoremap <silent> <Leader>fv :call fzf#run({
\   'tmux_width': winwidth('.') / 2,
\   'sink':       'vertical botright split' })<CR>

" Open files in new tab
nnoremap <silent> <Leader>ft :call fzf#run({
\   'tmux_height': '40%',
\   'sink':        'tabe' })<CR>
