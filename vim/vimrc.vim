9450" The following configuration is used by  BK

" Plugins {{{
   " Make sure that plugin manager is installed and loaded
   if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
         \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
   endif

   "The following plugins will be installed
   call plug#begin('~/.vim/autoload')

   " Coloschemes
   Plug 'doums/darcula'
   " Plug 'phanviet/vim-monokai-pro'
   " Plug 'joshdick/onedark.vim'

   " yaml syntax
   Plug 'mrk21/yaml-vim'
   "Plug 'stephpy/vim-yaml'

   " Syntax
   "Plug 'sheerun/vim-polyglot'
   
   " Linting
   Plug 'dense-analysis/ale'
   let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
   let g:ale_sign_error = '✘'
   let g:ale_sign_warning = '⚠'
   let g:ale_lint_on_text_changed = 'never'

   " integrate vim with git
   Plug 'tpope/vim-fugitive'

   " Visual
   Plug 'preservim/nerdtree'
   " LOAD POWERLINE OR AIRLINE PLUGIN
   Plug 'vim-airline/vim-airline'
   Plug 'vim-airline/vim-airline-themes'

   " better terminal integration
   " substitute, search, and abbreviate multiple variants of a word
   Plug 'tpope/vim-abolish'

   " Mark indentation
   Plug 'Yggdroot/indentLine'

   " easy commenting motions
   Plug 'tpope/vim-commentary'

   " mappings which are simply short normal mode aliases for commonly used ex commands
   Plug 'tpope/vim-unimpaired'

   " endings for html, xml, etc. - ehances surround
   "Plug 'tpope/vim-ragtag'

   " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
   Plug 'tpope/vim-surround'

   " tmux integration for vim
   Plug 'benmills/vimux'

   " folding
   Plug 'pedrohdz/vim-yaml-folds'
   Plug 'masukomi/vim-markdown-folding'

   " enables repeating other supported plugins with the . command
   Plug 'tpope/vim-repeat'

   " .editorconfig support
   Plug 'editorconfig/editorconfig-vim'

   " single/multi line code handler: gS - split one line into multiple, gJ - combine multiple lines into one
   Plug 'AndrewRadev/splitjoin.vim'

   " add end, endif, etc. automatically
   Plug 'tpope/vim-endwise'

   " detect indent style (tabs vs. spaces)
   Plug 'tpope/vim-sleuth'

   " copy text from vim to system clipboard
   Plug 'christoomey/vim-system-copy'

   " NERDTree {{{
      Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
      Plug 'Xuyuanp/nerdtree-git-plugin'
      Plug 'ryanoasis/vim-devicons'
      Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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
      nmap <silent> <leader>y :NERDTreeFind<cr>

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
   " }}}

   " FZF {{{
      Plug '/usr/local/opt/fzf'
      Plug 'junegunn/fzf.vim'
      let g:fzf_layout = { 'down': '~25%' }

      if isdirectory(".git")
         " if in a git project, use :GFiles
         nmap <silent> <leader>t :GitFiles --cached --others --exclude-standard<cr>
      else
         " otherwise, use :FZF
         nmap <silent> <leader>t :FZF<cr>
      endif

      nmap <silent> <leader>s :GFiles?<cr>

      nmap <silent> <leader>r :Buffers<cr>
      nmap <silent> <leader>e :FZF<cr>
      nmap <leader><tab> <plug>(fzf-maps-n)
      xmap <leader><tab> <plug>(fzf-maps-x)
      omap <leader><tab> <plug>(fzf-maps-o)

      " Insert mode completion
      imap <c-x><c-k> <plug>(fzf-complete-word)
      imap <c-x><c-f> <plug>(fzf-complete-path)
      imap <c-x><c-j> <plug>(fzf-complete-file-ag)
      imap <c-x><c-l> <plug>(fzf-complete-line)

      nnoremap <silent> <Leader>C :call fzf#run({
      \   'source':
      \     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
      \         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
      \   'sink':    'colo',
      \   'options': '+m',
      \   'left':    30
      \ })<CR>

      command! FZFMru call fzf#run({
      \  'source':  v:oldfiles,
      \  'sink':    'e',
      \  'options': '-m -x +s',
      \  'down':    '40%'})

      command! -bang -nargs=* Find call fzf#vim#grep(
         \ 'rg --column --line-number --no-heading --follow --color=always '.<q-args>, 1,
         \ <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'), <bang>0)
      command! -bang -nargs=? -complete=dir Files
         \ call fzf#vim#files(<q-args>, fzf#vim#with_preview('right:50%', '?'), <bang>0)
      command! -bang -nargs=? -complete=dir GitFiles
         \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview('right:50%', '?'), <bang>0)
   " }}}

   " JSON {{{
      Plug 'elzr/vim-json', { 'for': 'json' }
      let g:vim_json_syntax_conceal = 0
   " }}}

   " Dockerfile syntax
   Plug 'ekalinin/Dockerfile.vim'

   call plug#end()
" }}}

" General {{{
   syntax on " enable code syntax

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
   set textwidth=120

   set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
   set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

   set backspace=indent,eol,start " make backspace behave in a sane manner
   set clipboard=unnamed

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

" }}}

" Appearance {{{
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

   " Tab control
   so ~/dotfiles/vim/sleuth.vim
   "set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
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

   set runtimepath^=~/.vim/bundle/ctrlp.vim " Use ctrlp plugin which needs to be downloaded from git and saved to ~/.vim/bundle

" }}}

" Key mappings {{{
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

   nnoremap <leader>t :tabnew<CR> 
   nnoremap <leader>\ :vsplit
   nnoremap <leader>- :split

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
" }}}

" Theme {{{
   colorscheme darcula
   let g:airline_theme='jellybeans'
   let g:airline_powerline_fonts = 1
" }}}
