" Key mappings

" set the map leader for more key combos
let mapleader = " "

" remap esc
inoremap jk <esc>

" clear search highlighting
nnoremap <leader>c :nohl<CR><C-l>:echo "Search Cleared"<CR>¬

" ctll-c to clear line numbers
nnoremap <C-m> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>

" ctrl-n to show line number and relativeline number
nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>¬

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
" nnoremap <leader>l :set list!<cr>

" relaod vim cofiguration
nnoremap <leader>r :source ~/.vimrc<CR>

" File and Window Mnagement
" inoremap <leader><space>w <Esc>:w<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader><space> :w<CR>

" inoremap <leader><space>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>

" inoremap <leader><space>q! <ESC>:q!<CR>
nnoremap <leader>q! :q!<CR>

" inoremap <leader><space>x <ESC>:x<CR>
nnoremap <leader>x :x<CR>

" change current word to UPPERCASE
nnoremap <leader>u gUiw
" change current word to lowercase
nnoremap <leader>i guiw

" Tabs
" for some reason alt or ctrl mapping doesn't work
nnoremap <leader>t :tabnew<CR> 
nnoremap <leader>2 :tabnext<CR>
nnoremap <leader>1 :tabprevious<CR>

" Buffers
" switch between current and last buffer
nmap <leader>. <c-^>
" go to next buffer
" nmap <leader>a :bp<CR>
" go to previous buffer
" nmap <leader>s :bn<CR>
" don't close the split when buffer is closed
command Bd bp | sp | bn | bd
nnoremap <leader>Q :Bd<CR>

" Splits
" split movement
map <leader>h <Plug>WinMoveLeft
map <leader>j <Plug>WinMoveDown
map <leader>k <Plug>WinMoveUp
map <leader>l <Plug>WinMoveRight
" split resize
map <silent> <C-h> :vertical resize -5<CR>
map <silent> <C-j> :resize -5<CR>
map <silent> <C-k> :resize +5<CR>
map <silent> <C-l> :vertical resize +5<CR>
" split zoom
map <leader>z <Plug>Zoom

" crude buffer text object
xnoremap i% GoggV
onoremap i% :normal vi%<CR>

" remove extra whitespace
" nmap <leader>c :%s/\s\+$<cr>
" nmap <leader><space><space> :%s/\n\{2,}/\r\r/g<cr>

" enable . command in visual mode
vnoremap . :normal .<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" set autocomlete movement to ctrl+h/j/k/l
" down
inoremap <expr> <C-j> pumvisible() ? "<C-n>" :"<C-j>"
" up
inoremap <expr> <C-k> pumvisible() ? "<C-p>" :"<C-k>"
" select
inoremap <expr> <C-l> pumvisible() ? "<C-y>" :"<C-l>"
" inoremap <expr> <Tab> pumvisible() ? "<C-y>" :"<Tab>"
" cancel - it won't work with ctrl-h
" inoremap <expr> <C-h> pumvisible() ? "<C-e>" :"<C-h>"

" make Y behave like C or D
nnoremap Y y$

" Set search to always keep the text in the middle of the screen
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Adding breakpoints for undo
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Improving jumping
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" moving lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>[ :m .-2<CR>==
nnoremap <leader>] :m .+1<CR>==
