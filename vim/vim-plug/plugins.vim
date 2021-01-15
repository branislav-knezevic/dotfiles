" Plugins

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
Plug 'morhetz/gruvbox'
" Plug 'phanviet/vim-monokai-pro'
" Plug 'joshdick/onedark.vim'

" yaml syntax
Plug 'mrk21/yaml-vim'
"Plug 'stephpy/vim-yaml'

" Syntax
"Plug 'sheerun/vim-polyglot'

" Linting
Plug 'dense-analysis/ale'

" integrate vim with git
Plug 'tpope/vim-fugitive'

" Visual
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

"improved motions in vim
Plug 'easymotion/vim-easymotion'

" endings for html, xml, etc. - ehances surround
"Plug 'tpope/vim-ragtag'

" mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
Plug 'tpope/vim-surround'

" tmux integration for vim
Plug 'benmills/vimux'

" folding
Plug 'pedrohdz/vim-yaml-folds'
Plug 'masukomi/vim-markdown-folding'

" this is needed for the three below plugins
Plug 'kana/vim-textobj-user'
" line as text object
Plug 'kana/vim-textobj-line'
" indent as text object
Plug 'kana/vim-textobj-indent'
" entire as text object
Plug 'kana/vim-textobj-entire'

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

" JSON 
Plug 'elzr/vim-json', { 'for': 'json' }

" Dockerfile syntax
Plug 'ekalinin/Dockerfile.vim'

" NERDTree 
Plug 'AndrewRadev/andrews_nerdtree.vim'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" FZF/FuzzyFinder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

call plug#end()
