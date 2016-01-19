set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'
Bundle 'rking/ag.vim.git'


" VIM PLUGINS HERE

" Tools

Bundle 'bling/vim-airline.git'
Bundle 'tpope/vim-fugitive'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'Townk/vim-autoclose.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'godlygeek/tabular.git'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'szw/vim-tags'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-dispatch'

" Languages
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rvm'
Bundle 'fatih/vim-go'
Bundle 'kchmck/vim-coffee-script'
Bundle 'lervag/vim-latex'
Bundle 'neo4j-contrib/cypher-vim-syntax'

" Colors
Bundle 'altercation/vim-colors-solarized'




" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
