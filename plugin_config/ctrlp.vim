nmap <leader>f :CtrlP<cr>
" let g:ctrlp_custom_ignore = '\v(public/assets/|tmp/cache/assets/)'

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
