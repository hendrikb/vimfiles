filetype plugin on

" OPTIONAL: This enables automatic indentation as you type.
filetype plugin indent on

let mapleader = ","
let g:mapleader = ","

set encoding=utf-8
set number
set splitbelow splitright
set showcmd


set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set nowrap
set textwidth=79
set formatoptions=n
set colorcolumn=80

set listchars=tab:>-,trail:·,extends:…,precedes:<,nbsp:¬
set list

set backspace=indent,eol,start

"  ---------------------------------------------------------------------------
"  Mappings
"  ---------------------------------------------------------------------------

" Searching / moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch

" Switch, close buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>c :Bclose<CR>

" move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" indent file and return cursor and center cursor
map   <silent> <F6> mmgg=G`m^zz
imap  <silent> <F6> <Esc> mmgg=G`m^zz

" binding.pry mappings
noremap <leader>d orequire 'pry'; binding.pry<ESC>
noremap <leader>D Orequire 'pry'; binding.pry<ESC><Paste>

" Ignore some binary, versioning and backup files when auto-completing
set wildignore=.svn,CVS,.git,*.swp,*.jpg,*.png,*.gif,*.pdf,*.bak
set backupdir=~/tmp,/tmp
set undodir=~/.vim/.tmp,~/tmp,~/.tmp,/tmp
set dir=/tmp



"  ---------------------------------------------------------------------------
" Syntax
"  ---------------------------------------------------------------------------

syntax on
set hlsearch

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.tex set wrap linebreak nolist
autocmd BufRead,BufNewFile Rakefile,Thorfile,config.ru,[Vv]agrantfile,Guardfile,Capfile set filetype=ruby

autocmd Filetype Gemfile set syntax=ruby
autocmd BufRead,BufNewFile Gemfile set filetype=Gemfile
autocmd FileType text setlocal textwidth=78



" Plugins:
" https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-ruby/vim-ruby'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tomtom/tcomment_vim'
Plug 'Townk/vim-autoclose'
call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Use TComment
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" AutoClose
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}
let g:AutoCloseProtectedRegions = ["Character"]
