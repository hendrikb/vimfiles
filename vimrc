silent! runtime bundles.vim

let mapleader = ","
let g:mapleader = ","

set nocompatible

" Disable F1 Key in Insert Mode
inoremap <F1> <Esc>
noremap <F1> :call MapF1()<CR>

function! MapF1()
  if &buftype == "help"
    exec 'quit'
  else
    exec 'help'
  endif
endfunction

"  ---------------------------------------------------------------------------
"  UI
"  ---------------------------------------------------------------------------

set title
set encoding=utf-8
set number
set relativenumber
set splitbelow splitright

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------

set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab

set nowrap
set textwidth=79
set formatoptions=n
set colorcolumn=80

set listchars=tab:>-,trail:·,extends:>,precedes:<,nbsp:❌
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
noremap <leader>D Orequire 'pry'; binding.pry<ESC>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Ignore some binary, versioning and backup files when auto-completing
set wildignore=,.git,*.swp,*.jpg,*.png,*.gif,*.pdf,*.bak,*.tmp,*/doc/*,*/coverage/*,*.run.xml,*.bcf,*.bbl,*.blg,*.aux,*.out
set backupdir=~/tmp,/tmp
set undodir=~/.vim/.tmp,~/tmp,~/.tmp,/tmp
set dir=/tmp


"  ---------------------------------------------------------------------------
"  Write to write-only files with :sudow
"  ---------------------------------------------------------------------------
cnoremap sudow w !sudo tee % >/dev/null

"  ---------------------------------------------------------------------------
" Plugins
"  ---------------------------------------------------------------------------

runtime! plugin_config/*.vim


"  ---------------------------------------------------------------------------
" Syntax
"  ---------------------------------------------------------------------------

syntax enable
set hlsearch

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.tex set wrap linebreak nolist
autocmd BufRead,BufNewFile Gemfile,Rakefile,Thorfile,config.ru,[Vv]agrantfile,Guardfile,Capfile set filetype=ruby
