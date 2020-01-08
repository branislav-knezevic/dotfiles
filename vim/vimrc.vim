" Make sure that plugin manager is installed
	if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif	

" Plugin install
	call plug#begin('~/.vim/autoload')

	"Plug 'phanviet/vim-monokai-pro'
	Plug 'doums/darcula'
	Plug 'sheerun/vim-polyglot'

	call plug#end()

" General Vim settings
        set background=dark
	set t_Co=256
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" " This is only necessary if you use 'set termguicolors'.
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" " This is only necessary if you use 'set termguicolors'.
	set termguicolors
	colorscheme darcula


	syntax on             " enable code syntax
	let mapleader=","      
	set autoindent        " Auto-indent new lines
        set smartindent       " Enable smart indent
        set smarttab          " Enable smart tab
	set tabstop=2         " Not sure what this does
	set shiftwidth=2      " Number of auto-indent spaces
        set expandtab         " Use spaces instead of tabs
	set dir=/tmp/
	set relativenumber    " Use relative line numbers for easier navigation
	set number            " Show the absolute line number of the current line
        set linebreak         " Break lines at work (requires Wrap lines)
        set showbreak=+++     " Wrap broken lines prefix
        set showmatch         " Highlight matching braces
        set visualbell        " Use visual bell (no beeping)

	autocmd Filetype html setlocal sw=2 expandtab
	autocmd Filetype javascript setlocal sw=4 expandtab

	set hlsearch          " Highlight all search results
        set smartcase         " Use smartcase search
        set ignorecase        " Always ignore-case when doing search
        set incsearch         " Searches for strings incrementally
	nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
	nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>
	nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>

	nnoremap n nzzzv
	nnoremap N Nzzzv

	nnoremap H 0
	nnoremap L $
	nnoremap J G
	nnoremap K gg

	map <tab> %

	set backspace=indent,eol,start

	nnoremap <Space> za
	nnoremap <leader>z zMzvzz

	nnoremap vv 0v$

	set listchars=tab:\|\ 
	nnoremap <leader><tab> :set list!<cr>
	set pastetoggle=<F2>
	"set mouse=a
	set incsearch
        set path+=**          " enable recursive search for file opening within vim

" Language Specific
	" Tabs
		so ~/dotfiles/vim/sleuth.vim

	" Typescript
		autocmd BufNewFile,BufRead *.ts set syntax=javascript
		autocmd BufNewFile,BufRead *.tsx set syntax=javascript

	" Markup
		inoremap <leader>< <esc>I<<esc>A><esc>yypa/<esc>O<tab>


" File and Window Management 
	inoremap <leader>w <Esc>:w<CR>
	nnoremap <leader>w :w<CR>

	inoremap <leader>q <ESC>:q<CR>
	nnoremap <leader>q :q<CR>

	inoremap <leader>x <ESC>:x<CR>
	nnoremap <leader>x :x<CR>

	nnoremap <leader>e :Ex<CR>
	nnoremap <leader>t :tabnew<CR>:Ex<CR>
	nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
	nnoremap <leader>s :split<CR>:w<CR>:Ex<CR>

" Return to the same line you left off at
	augroup line_return
		au!
		au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\	execute 'normal! g`"zvzz' |
			\ endif
	augroup END

" Auto load
	" Triger `autoread` when files changes on disk
	" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
	" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
	autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
	set autoread 
	" Notification after file change
	" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
	autocmd FileChangedShellPost *
	  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Future stuff
	"Swap line
	"Insert blank below and above

" Fix for: https://github.com/fatih/vim-go/issues/1509

filetype plugin indent on

