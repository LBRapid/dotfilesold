" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'
" My Plugins here:
"
" original repos on github
Plugin 'sheerun/vim-polyglot'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-fireplace'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-scripts/ctags.vim'
Plugin 'vim-scripts/greplace.vim'
Plugin 'vim-scripts/ZoomWin'
Plugin 'godlygeek/tabular'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'thoughtbot/vim-rspec'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'majutsushi/tagbar'
Plugin 'justinmk/vim-sneak'
Plugin 'mattn/emmet-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'wellle/targets.vim'
Plugin 'mtth/scratch.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'itspriddle/vim-marked'
Plugin 'christoomey/vim-system-copy'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf.vim'
Plugin 'sjl/badwolf'
Plugin 'joshdick/onedark.vim'
Plugin 'sbdchd/neoformat'

Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'honza/vim-snippets'

call vundle#end()
"Filetype plugin indent on is required by vundle
filetype plugin indent on
