" Custom configration for vifm

" set regualar and relative number for faster movement
set number
set relativenumber

" show syntax in preview
fileviewer *.[ch],*.[ch]pp highlight -O xterm256 -s dante --syntax c %c
" fileviewer *.bash highlight -O xterm256 -s dante --syntax c %c
fileviewer * preview


" ------------------------------------------------------------------------------

" Mappings

" Interaction with system clipboard
if has('win')
    " Yank current directory path to Windows clipboard with forward slashes
    nnoremap yp :!echo %"d:gs!\!/! %i | clip<cr>
    " Yank path to current file to Windows clipboard with forward slashes
    nnoremap yf :!echo %"c:gs!\!/! %i | clip<cr>
elseif executable('xclip')
    " Yank current directory path into the clipboard
    nnoremap yd :!echo %d | xclip %i<cr>
    " Yank current file path into the clipboard
    nnoremap yf :!echo %c:p | xclip %i<cr>
elseif executable('xsel')
    " Yank current directory path into primary and selection clipboards
    nnoremap yd :!echo -n %d | xsel --input --primary %i &&
                \ echo -n %d | xsel --clipboard --input %i<cr>
    " Yank current file path into into primary and selection clipboards
    nnoremap yf :!echo -n %c:p | xsel --input --primary %i &&
                \ echo -n %c:p | xsel --clipboard --input %i<cr>
endif

" Manage splits
nnoremap o :only<cr>
nnoremap \ :vsplit<cr>
nnoremap - :split<cr>

" Display sorting dialog
nnoremap S :sort<cr>

" Mappings for faster renaming
nnoremap r cw<c-a>

" File operators
nnoremap mf :touch<space>
nnoremap md :mkdir<space>

" Vimf window
nnoremap q :q<cr>
nnoremap x :wq<cr>
nnoremap V :!less %f<cr>

" select like in totalcmd
nnoremap <space> :select<cr>

" directory shortcuts
nnoremap gh :cd<cr>
nnoremap gt :cd /tmp<cr>

nnoremap gp :cd ~/Projects<cr>
nnoremap gpa :cd ~/Projects/acronis<cr>
nnoremap gpg :cd ~/Projects/git<cr>
nnoremap gpp :cd ~/Projects/Private<cr>
nnoremap gpt :cd ~/Projects/Testing<cr>
nnoremap gpv :cd ~/Projects/vsts<cr>
