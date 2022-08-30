" Config for easymotion vim plugin

" set easymotion to work with <leader>m
map <leader>m <Plug>(easymotion-prefix)

" let g:EasyMotion_do_mapping = 0 " Disable default mappings

" " Jump to anywhere you want with minimal keystrokes, with just one key binding.
" " `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" " or
" " `s{char}{char}{label}`
" " Need one more keystroke, but on average, it may be more comfortable.
nmap ss <Plug>(easymotion-overwin-f2)

" " Turn on case-insensitive feature
" let g:EasyMotion_smartcase = 1
