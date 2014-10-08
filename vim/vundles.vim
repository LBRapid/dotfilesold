" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'vim-ruby/vim-ruby'
Bundle 'xenoterracide/html.vim'
Bundle 'othree/html5.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-rbenv'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-vinegar'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/greplace.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'godlygeek/tabular'
Bundle 'ervandew/supertab'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'bling/vim-airline'
Bundle 'thoughtbot/vim-rspec'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/syntastic'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'majutsushi/tagbar'
Bundle 'goldfeld/vim-seek'
Bundle 'mattn/emmet-vim'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'wellle/targets.vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'mtth/scratch.vim'
Bundle 'altercation/vim-colors-solarized'

Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/neomru.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Shougo/unite.vim'

"Filetype plugin indent on is required by vundle
filetype plugin indent on
