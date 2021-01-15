" Configuration for NerdTree plugin

let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let NERDTreeDirArrowExpandable = "\u00a0" " make arrows invisible
let NERDTreeDirArrowCollapsible = "\u00a0" " make arrows invisible
let NERDTreeNodeDelimiter = "\u263a" " smiley face

augroup nerdtree
		autocmd!
		autocmd FileType nerdtree setlocal nolist " turn off whitespace characters
		autocmd FileType nerdtree setlocal nocursorline " turn off line highlighting for performance
augroup END

" Toggle NERDTree
function! ToggleNerdTree()
		if @% != "" && @% !~ "Startify" && (!exists("g:NERDTree") || (g:NERDTree.ExistsForTab() && !g:NERDTree.IsOpen()))
			:NERDTreeFind
		else
			:NERDTreeToggle
		endif
endfunction
" toggle nerd tree
nmap <silent> <leader>n :call ToggleNerdTree()<cr>
" find the current file in nerdtree without needing to reload the drawer
nmap <silent> <leader>z :NERDTreeFind<cr>
" toggle only Git edited files
nmap <silent> gm :NERDTreeGitFilterToggle<CR>

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

let NERDTreeShowHidden=1
" let NERDTreeDirArrowExpandable = '▷'
" let NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeIndicatorMapCustom = {
\ "Modified"  : "✹",
\ "Staged"    : "✚",
\ "Untracked" : "✭",
\ "Renamed"   : "➜",
\ "Unmerged"  : "═",
\ "Deleted"   : "✖",
\ "Dirty"     : "✗",
\ "Clean"     : "✔︎",
\ 'Ignored'   : '☒',
\ "Unknown"   : "?"
\ }

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
