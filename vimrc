call pathogen#infect()
set t_Co=256
set exrc

set nocompatible                  " Must come first because it changes other options.

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set incsearch                     " Highlight matches as you type.
"set hlsearch                      " Highlight matches.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set textwidth=80                  " Hard linebreak at 80 characters width
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp      " Keep swap files in one location

set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set autoindent

set nrformats=alpha              " Decimal arithmetic

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set tags=./tags,tags

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 0

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Ctrl-S to save
map <C-s> :w<cr>
imap <C-s> <Esc>:w<cr>i

" Delete blank lines is Ctrl-L
map <C-L> :g/^$/d
imap <C-L> :g/^$/d

" Visual Options
color molokai
colorscheme molokai

" Show trailing spaces
set listchars=tab:>-,trail:·
nmap <silent> <leader>s :set nolist!<CR>

au BufNewFile,BufRead *.md set filetype=mkd
au BufRead,BufNewFile *.scss set filetype=scss

" Copy gist link to clipboard
let g:gist_clip_command = 'pbcopy'

" -----------------------------------------------------------
"  TIDY UP WHITESPACE
" -----------------------------------------------------------
"
function! <SID>StripTrailingWhitespaces()
  " Preperation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Map to F5
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" Run StripTrailingWhitespaces on save
if has("autocmd")
  autocmd BufWritePre *.rb,*.js,*.html,*.css :call <SID>StripTrailingWhitespaces()
endif

" -----------------------------------------------------------
"  TABS
" -----------------------------------------------------------
"
set guitablabel=%N\ %t\ %m

" C-TAB and C-SHIFT-TAB cycle tabs forward and backward
nmap <c-tab> :tabnext<cr>
imap <c-tab> <c-o>:tabnext<cr>
vmap <c-tab> <c-o>:tabnext<cr>
nmap <c-s-tab> :tabprevious<cr>
imap <c-s-tab> <c-o>:tabprevious<cr>
vmap <c-s-tab> <c-o>:tabprevious<cr>

" C-# switches to tab
nmap <d-1> 1gt
nmap <d-2> 2gt
nmap <d-3> 3gt
nmap <d-4> 4gt
nmap <d-5> 5gt
nmap <d-6> 6gt
nmap <d-7> 7gt
nmap <d-8> 8gt
nmap <d-9> 9gt

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

" Clear search highlights
noremap <silent><Leader><space> :nohls<CR>

" Swap files in VIM Splits while retaining split sizes and positions
function! MarkWindowSwap()
  let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
  "Mark destination
  let curNum = winnr()
  let curBuf = bufnr( "%" )
  exe g:markedWinNum . "wincmd w"
  "Switch to source and shuffle dest->source
  let markedBuf = bufnr( "%" )
  "Hide and open so that we aren't prompted and keep history
  exe 'hide buf' curBuf
  "Switch to dest and shuffle source->dest
  exe curNum . "wincmd w"
  "Hide and open so that we aren't prompted and keep history
  exe 'hide buf' markedBuf 
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>

" NerdCommenter mapping
map <d-/> <plug>NERDCommenterToggle<CR>
imap <d-/> <Esc><plug>NERDCommenterToggle<CR>i

" Run RSpec for the current file
map ,t :w<CR>:!./script/test %:p<CR>
