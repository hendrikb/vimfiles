" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
setlocal sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
setlocal iskeyword+=:

" Run vim's :make command when saving any tex file (requires
" tpope/vim-dispatch) - turned off, breaks my evince upon compiling the pdf
" multiple times at once
" autocmd BufWritePost *.tex :Make!

" Non tpope/vim-dispatch version
" autocmd BufWritePost *.tex :Make!
