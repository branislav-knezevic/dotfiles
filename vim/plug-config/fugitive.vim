" fugitive plug config

nmap <leader>g :G<CR><C-w>15-
nmap <leader>gs :G<CR><C-w>15-
nmap <leader>gp :G push<CR>
nmap <leader>gl :G pull<CR>
nnoremap <leader>gc :G checkout<CR>

" merging pull requests
nmap <leader>gh :diffget //2<CR>
nmap <leader>g; :diffget //3<CR>

" set commit not to show confirmation message when using it as cc
function! s:ftplugin_fugitive() abort
  nnoremap <buffer> <silent> cc :Git commit --quiet<CR>
  nnoremap <buffer> <silent> ca :Git commit --quiet --amend<CR>
  nnoremap <buffer> <silent> ce :Git commit --quiet --amend --no-edit<CR>
endfunction
augroup nhooyr_fugitive
  autocmd!
  autocmd FileType fugitive call s:ftplugin_fugitive()
augroup END
