" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Bundle 'VundleVim/Vundle.vim'
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
Bundle 'tpope/vim-fireplace'
Bundle 'kchmck/vim-coffee-script'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/greplace.vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'godlygeek/tabular'
Bundle 'ervandew/supertab'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'thoughtbot/vim-rspec'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/syntastic'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'majutsushi/tagbar'
Bundle 'justinmk/vim-sneak'
Bundle 'mattn/emmet-vim'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'wellle/targets.vim'
Bundle 'mtth/scratch.vim'
Bundle 'gcmt/wildfire.vim'
Bundle 'itspriddle/vim-marked'
Bundle 'christoomey/vim-system-copy'
Bundle 'airblade/vim-gitgutter'
Bundle 'elixir-lang/vim-elixir'
Bundle 'junegunn/fzf.vim'
Bundle 'sjl/badwolf'

Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/neomru.vim'
Bundle 'Shougo/deoplete.nvim'

call vundle#end()
"Filetype plugin indent on is required by vundle
filetype plugin indent on
