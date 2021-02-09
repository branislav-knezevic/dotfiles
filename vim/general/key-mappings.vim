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
" nnoremap H 0
" nnoremap L $
" nnoremap J G
" nnoremap K gg

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
inoremap <leader>w <Esc>:w<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>, :w<CR>

inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>

inoremap <leader>q! <ESC>:q!<CR>
nnoremap <leader>q! :q!<CR>

inoremap <leader>x <ESC>:x<CR>
nnoremap <leader>x :x<CR>

" Tabs
nnoremap <C-Tab> :tabnew<CR> 
nnoremap <Tab> :tabnext<CR> 
nnoremap <S-Tab> :tabprevious<CR> 
nnoremap <leader>1 :tabmove -<CR>
nnoremap <leader>2 :tabmove +<CR>

" Buffers
" switch between current and last buffer
nmap <leader>. <c-^>
" go to next buffer
nmap <leader>a :bp<CR>
" go to previous buffer
nmap <leader>s :bn<CR>
" don't close the split when buffer is closed
command Bd bp | sp | bn | bd
nnoremap <leader>Q :Bd<CR>

" Splits
nnoremap <leader>\ :vsplit<CR>
nnoremap <leader>- :split<CR>
" split movement
map <silent> <C-h> <Plug>WinMoveLeft
map <silent> <C-j> <Plug>WinMoveDown
map <silent> <C-k> <Plug>WinMoveUp
map <silent> <C-l> <Plug>WinMoveRight
" split resize
nnoremap <leader>h :vertical resize -5<CR>
nnoremap <leader>j :res -5<CR>
nnoremap <leader>k :res +5<CR>
nnoremap <leader>l :vertical resize +5<CR>

nmap <silent> <C-z> <Plug>Zoom
" nmap <leader>z <Plug>Zoom

" Create line text object
" commented out as it is done via plugin
" xnoremap il g_o^
" onoremap il :normal vil<CR>
" xnoremap al $o^
" onoremap al :normal val<CR>

" crude buffer text object
xnoremap i% GoggV
onoremap i% :normal vi%<CR>

" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>
nmap <leader><space><space> :%s/\n\{2,}/\r\r/g<cr>

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
inoremap <expr> <Tab> pumvisible() ? "<C-y>" :"<Tab>"
" cancel - it won't work with ctrl-h
" inoremap <expr> <C-h> pumvisible() ? "<C-e>" :"<C-h>"

" these below were the old mappings which jused just j/k
" inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
" inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))


