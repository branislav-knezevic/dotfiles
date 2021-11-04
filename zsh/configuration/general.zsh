# general zsh settings

# Vars
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/zsh/plugins/oh-my-zsh

# THIS MAY NEED TO GO TO THE END OF THE FILE???
# this file will set the custom theme which can't be changed by the theme setting 
# source ~/.dotfiles/zsh/prompt.sh
export PATH=$PATH:$HOME/.dotfiles/utils

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bungee"

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt inc_append_history # To save every command before it is executed 
setopt share_history # setopt inc_append_history

git config --global push.default current

# enable fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_OPTS='--preview="bat --style=numbers --color=always --line-range :500 {}"'
# export FZF_CTRL_T_OPTS='--preview="bat --color=always {}"'
export FZF_CTRL_T_COMMAND='fd --hidden --type f'

# Functions
# Loop a command and show the output in vim
loop() {
  echo ":cq to quit\n" > /tmp/log/output 
  fc -ln -1 > /tmp/log/program
  while true; do
    cat /tmp/log/program >> /tmp/log/output ;
    $(cat /tmp/log/program) |& tee -a /tmp/log/output ;
    echo '\n' >> /tmp/log/output
    vim + /tmp/log/output || break;
    rm -rf /tmp/log/output
  done;
}

# Fix to get rid of "tk-WARNING **: Locale not supported by C library" error on a Mac
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Custom cd
#chpwd() ls -l

# For vim mappings: 
  stty -ixon

# Completions
# These are all the plugin options available: https://github.com/robbyrussell/oh-my-zsh/tree/291e96dcd034750fbe7473482508c08833b168e3/plugins
#
# Edit the array below, or relocate it to ~/.zshrc before anything is sourced
# For help create an issue at github.com/parth/dotfiles

# Basic auto/tab complete:
  autoload -U compinit
  zstyle ':completion:*' menu select
  zmodload zsh/complist
  compinit
  _comp_options+=(globdots)		# Include hidden fil
