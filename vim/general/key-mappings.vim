" Key mappings

" set the map leader for more key combos
let mapleader = ','

" remap esc
inoremap jk <esc>

" ctrl-l to clear search highlighting
nnoremap <space> :nohl<CR><C-l>:echo "Search Cleared"<CR>¬

" ctll-c to clear line numbers
nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>

" ctrl-n to show line number and relativeline number
nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>¬

" Easier line movement
nnoremap H 0
nnoremap L $
nnoremap J G
nnoremap K gg
" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" select whole line
nnoremap vv 0v$

" set paste toggle
set pastetoggle=<leader>v

" set list
nnoremap <leader>l :set list!<cr>

" File and Window Mnagement
inoremap <leader>w <Esc>:w<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>, :w<CR>

inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>

inoremap <leader>q! <ESC>:q!<CR>
nnoremap <leader>q! :q!<CR>

inoremap <leader>x <ESC>:x<CR>
nnoremap <leader>x :x<CR>

" nnoremap <leader>t :tabnew<CR> 
nnoremap <leader>\ :vsplit
nnoremap <leader>- :split
" movement within splits
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" Create line text object
xnoremap il g_o^
onoremap il :normal vil<CR>
xnoremap al $o^
onoremap al :normal val<CR>
" crude buffer text object
xnoremap i% GoggV
onoremap i% :normal vi%<CR>

" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>
nmap <leader><space><space> :%s/\n\{2,}/\r\r/g<cr>

" switch between current and last buffer
nmap <leader>. <c-^>

" enable . command in visual mode
vnoremap . :normal .<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
