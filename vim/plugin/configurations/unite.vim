let g:unite_source_history_yank_enable = 1
let g:unite_source_grep_command = "ag"
let g:unite_prompt = ">>"
let g:unite_winheight = 10

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ ], '\|'))

nnoremap <leader>fr :<C-u>Unite -no-split -buffer-name=mru  -start-insert file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -quick-match -buffer-name=buffer buffer<cr>
nnoremap <leader>/ :<C-u>Unite -buffer-name=grep  grep:.<cr>
nnoremap <leader>ff :<C-u>Unite file_rec/async -no-split -start-insert<cr>
nnoremap <leader>ft :<C-u>Unite file_rec/async -default-action=tabopen -start-insert<cr>
nnoremap <leader>fs :<C-u>Unite file_rec/async -default-action=split -start-insert<cr>
nnoremap <leader>fv :<C-u>Unite file_rec/async -default-action=vsplit -start-insert<cr>
nnoremap <leader>fl :<C-u>UniteResume<cr>
nnoremap <C-P> :<C-u>Unite file_rec/async:!  -buffer-name=files  -start-insert<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  " CtrlP style controls
  map <silent><buffer><expr> <C-x> unite#do_action('split')
  map <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  map <silent><buffer><expr> <C-t> unite#do_action('tabopen')
  " Close unite buffer with ESC
  nmap <buffer> <esc> <plug>(unite_exit)
  imap <buffer> <esc> <plug>(unite_exit)
  hi PmenuSel   ctermfg=White   ctermbg=31 cterm=Bold guifg=White guibg=#0087AF gui=Bold
endfunction
autocmd FileType unite call s:unite_settings()
