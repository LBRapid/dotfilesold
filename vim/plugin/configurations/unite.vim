let g:unite_source_history_yank_enable = 1
let g:unite_source_grep_command = "ag"
let g:unite_prompt = ">>"
let g:cursor_line_highlight = 'ashen'

call unite#filters#matcher_default#use(['matcher_fuzzy'])

nnoremap <leader>fr :<C-u>Unite -no-split -buffer-name=mru  -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -quick-match -buffer-name=buffer buffer<cr>
nnoremap <leader>/ :<C-u>Unite -buffer-name=grep  grep:.<cr>
nnoremap <leader>ff :<C-u>Unite file_rec/async -no-split -start-insert<cr>
nnoremap <leader>ft :<C-u>Unite file_rec/async -default-action=tabopen -start-insert<cr>
nnoremap <leader>fs :<C-u>Unite file_rec/async -default-action=split -start-insert<cr>
nnoremap <leader>fv :<C-u>Unite file_rec/async -default-action=vsplit -start-insert<cr>
nnoremap <leader>fl :<C-u>UniteResume<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  nmap <buffer> <esc> <plug>(unite_exit)
  imap <buffer> <esc> <plug>(unite_exit)
  hi PmenuSel   ctermfg=White   ctermbg=Magenta cterm=Bold guifg=White guibg=Magenta gui=Bold
endfunction
autocmd FileType unite call s:unite_settings()
