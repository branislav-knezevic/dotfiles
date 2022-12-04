" Appearance 

syntax on " enable code syntax
set number " show line numbers
set relativenumber " show relative numbers for easier movement between the lines
set wrap " turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak=+++ " wrap broken lines with previh
set autoindent " automatically set indent of new line
set ttyfast " faster redrawing
set laststatus=2 " show the status line all the time
set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set showcmd " show incomplete commands
set noshowmode " don't show which mode disabled for PowerLine
set wildmode=list:longest " complete files like a shell
set shell=$SHELL
set cmdheight=1 " command bar height
set title " set terminal title
set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink
set updatetime=300
set signcolumn=yes
set shortmess+=c

" Autocomplete
set complete+=kspell " needed for autocomplete popup
set completeopt=menuone,longest " needed for autocomplete
set shortmess+=c " related to autocomplete, disables the menu which shows how many matchings are there

" Tab control
" so ~/.dotfiles/vim/sleuth.vim " for some reason this was here and not as tpope/sleuth plugin
" set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2 " the visible width of tabs
set softtabstop=0 " edit as if the tabs are 4 characters wide
set shiftwidth=2 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set expandtab " expand tabs to space
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab " set two spaces for yaml files

" code folding settings
set foldmethod=syntax " fold based on indent
set foldlevelstart=99
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

" Change coursor based on mode
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[2 q"
let &t_EI = "\<esc>[1 q"

" toggle invisible characters
"set list
"set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
"set showbreak=↪

set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors

if &term =~ '256color'
  " disable background color erase
  set t_ut=
endif

" enable 24 bit color support if supported
if (has("termguicolors"))
  if (!(has("nvim")))
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif
  set termguicolors
endif

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" highlight where the coursor is
set cursorline
set cursorcolumn
