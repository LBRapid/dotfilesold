call pathogen#infect()
set t_Co=256
set exrc

set nocompatible                  " Must come first because it changes other options.

let mapleader = " "

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
set hlsearch                      " Highlight matches.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set noswapfile                    " No swap files
set nowritebackup                 " And again.

set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs
set autoindent

set nrformats=alpha              " Decimal arithmetic

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set tags=./tags,tags

set timeoutlen=1000 ttimeoutlen=0

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'tmp'

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/greplace.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'xenoterracide/html.vim'
Bundle 'mattn/gist-vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'godlygeek/tabular'
Bundle 'vim-scripts/closetag.vim'
Bundle 'mattn/webapi-vim'

" Map clipboard paste to ,v
nmap ,v "*p

"This unsets the "last search pattern" register by hitting ctrl-space
nnoremap <C-Space> :noh<CR><CR>

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

" Indent rules for python files
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

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
  autocmd BufWritePre *.rb,*.js,*.html,*.css,*.py :call <SID>StripTrailingWhitespaces()
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
map ,t :w<CR>:!./script/test %:p<CR>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Use Ag (https://github.com/ggreer/the_silver_searcher) instead of Grep when
" available
if executable("ag")
  set grepprg=ag\ --noheading\ --nogroup\ --nocolor
endif
