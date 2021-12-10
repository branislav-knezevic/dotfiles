" Plugins

" Make sure that plugin manager is installed and loaded
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"The following plugins will be installed
call plug#begin('~/.vim/autoload')

" =================================
" visual
" =================================

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

" Dockerfile syntax
Plug 'ekalinin/Dockerfile.vim'

" Automatically show Vim's complete menu while typing
Plug 'vim-scripts/AutoComplPop'

" Linting
" Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Mark indentation
Plug 'Yggdroot/indentLine'

" LOAD POWERLINE OR AIRLINE PLUGIN
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Auto close brackets
Plug 'jiangmiao/auto-pairs'


" =================================
" integration
" =================================

" substitute, search, and abbreviate multiple variants of a word
Plug 'tpope/vim-abolish'

" easy commenting motions
Plug 'tpope/vim-commentary'

" integrate vim with git
Plug 'tpope/vim-fugitive'

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

" Markdown Table of contents
Plug 'mzlogin/vim-markdown-toc'

" adding new line/indent/document objects
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

" All HashiCorp tools - terraform, packer, vault...
Plug 'hashivim/vim-hashicorp-tools'

" Terraform
" Plug 'hashivim/vim-terraform'

" Terragrunt
Plug 'yorinasub17/vim-terragrunt'

" Powershell
Plug 'zigford/vim-powershell'

" Vifm
Plug 'vifm/vifm'

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
Plug 'stsewd/fzf-checkout.vim'

call plug#end()
