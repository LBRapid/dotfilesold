let g:unite_source_history_yank_enable = 1
let g:unite_source_file_rec_async_command='ag -l --nocolor --nogroup -g ""'
let g:unite_prompt = ">>"
let g:unite_winheight = 10
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--column --nogroup --nogroup -g ""'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_rec_unit = 2000

let g:unite_source_rec_max_cache_files = 50000
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file_rec/async', 'converters', [])
call unite#custom#source('file_rec/async', 'sorters', [])

nnoremap <leader>fr :<C-u>Unite -no-split -buffer-name=mru  -start-insert file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -quick-match -buffer-name=buffer buffer<cr>
nnoremap <leader>/ :<C-u>Unite -buffer-name=grep  grep:.<cr>
nnoremap <leader>fl :<C-u>UniteResume<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  " CtrlP style controls
  map <silent><buffer><expr> <C-t> unite#do_action('tabopen')
  " Close unite buffer with ESC
  nmap <buffer> <esc> <plug>(unite_exit)
  imap <buffer> <esc> <plug>(unite_exit)
  hi PmenuSel   ctermfg=White   ctermbg=31 cterm=Bold guifg=White guibg=#0087AF gui=Bold
endfunction
autocmd FileType unite call s:unite_settings()
