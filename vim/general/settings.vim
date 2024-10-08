" General settings


" Abbreviations
abbr funciton function
abbr teh the
abbr tempalte template
abbr fitler filter
abbr cosnt const
abbr attribtue attribute
abbr attribuet attribute

set autoread " detect when a file is changed

set history=1000 " change history to 1000
set textwidth=0 " set after how many characters will Vim automatically move to new line 

" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set backspace=indent,eol,start " make backspace behave in a sane manner

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " highlight search results
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

" set vim to use OS clipboard
set clipboard=unnamed

" set splits to behave as espected
set splitright
set splitbelow

" increased redrawtime to fix syntax highlighting 
set redrawtime=10000
