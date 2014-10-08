" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set exrc

" ================ General Config ====================
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set backspace=indent,eol,start    " Intuitive backspacing.
set history=1000                  " Store lots of :cmdline history.
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set visualbell                    " No beeping.
set gcr=a:blinkon0                " Disable cursor blink.
set autoread                      " Reload files changed outside vim.
set title                         " Set the terminal's title.
set nrformats=alpha               " Decimal arithmetic.
if $TMUX == ''
  set clipboard=unnamed             " Use native clipboard.
endif
set timeoutlen=1000 ttimeoutlen=0
set textwidth=79                         " Max line length is 80 columns
set wrap
set linebreak
set formatoptions+=w
set ignorecase
set infercase

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Turn on syntax highlighting.
syntax on
syntax enable

" Change leader to a space because the backslash is too far away
" That means all \x commands turn into <space>x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader = " "

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundle.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" ================ Turn Off Swap Files ==============
set nobackup                      " Don't make a backup before overwriting a file.
set noswapfile                    " No swap files
set nowritebackup                 " And again.

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" ================ Folds ============================
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================
set wildmode=list:longest         " Complete files like a shell.
set wildmenu                      " Enhanced command line completion.

" ================ Scrolling ========================
set scrolloff=5                   " Start scrolling when we're 5 lines away from margins
set sidescrolloff=15
set sidescroll=1

au BufNewFile,BufRead *.md set filetype=markdown
au BufRead,BufNewFile *.scss set filetype=scss

" Indent rules for python files
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Show trailing spaces
set listchars=tab:>-,trail:·
nmap <silent> <leader>s :set nolist!<CR>

" Copy gist link to clipboard
let g:gist_clip_command = 'pbcopy'

" Enable matchit.vim (comes with vim these days)
runtime macros/matchit.vim
