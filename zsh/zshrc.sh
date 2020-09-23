# Vars
  # Path to your oh-my-zsh installation.
  export ZSH=$HOME/dotfiles/zsh/plugins/oh-my-zsh

  # Set name of the theme to load.
  # Look in ~/.oh-my-zsh/themes/
  # Optionally, if you set this to "random", it'll load a random theme each
  # time that oh-my-zsh is loaded.
  ZSH_THEME="ys"

  HISTFILE=~/.zsh_history
  SAVEHIST=100000
  setopt inc_append_history # To save every command before it is executed 
  setopt share_history # setopt inc_append_history

  git config --global push.default current

# Aliases
  alias v="vim -p"
  mkdir -p /tmp/log
  
  # This is currently causing problems (fails when you run it anywhere that isn't a git project's root directory)
  # alias vs="v `git status --porcelain | sed -ne 's/^ M //p'`"

# Settings
  export VISUAL=vim
  export EDITOR=$VISUAL
  
  export PATH=/usr/bin:$PATH
  export PATH=~/.local/bin:$PATH
  export PATH=/usr/local/go/bin:$PATH

  # Settings for GO
  export GOROOT=/usr/local/go
  export GOPATH=~/projects

  source ~/dotfiles/zsh/plugins/fixls.zsh
  # enable fuzzy finder
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
  export FZF_DEFAULT_OPS="--extended"
  export FZF_DEFAULT_COMMAND="fd --type f"
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_OPS"

#Functions
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

# Custom cd
#chpwd() ls -l

# For vim mappings: 
  stty -ixon

# Completions
# These are all the plugin options available: https://github.com/robbyrussell/oh-my-zsh/tree/291e96dcd034750fbe7473482508c08833b168e3/plugins
#
# Edit the array below, or relocate it to ~/.zshrc before anything is sourced
# For help create an issue at github.com/parth/dotfiles

autoload -U compinit

plugins=(
  docker
  aws
  git
  tmux
  history
  zsh-autosuggestions
  terraform
  kubectl
  encode64
)

for plugin ($plugins); do
  fpath=(~/dotfiles/zsh/plugins/oh-my-zsh/plugins/$plugin $fpath)
done

compinit

# initialize defualt oh-my-zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/oh-my-zsh.sh

# initialize custom plugins
source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/history.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/key-bindings.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/lib/completion.zsh
#source ~/dotfiles/zsh/plugins/vi-mode.plugin.zsh # this disables some features from regular terminal movement
source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh/keybindings.sh 
source ~/dotfiles/zsh/plugins/bk-alias.zsh
source ~/dotfiles/zsh/plugins/helm.zsh
source ~/.local/bin/aws_zsh_completer.sh
source ~/dotfiles/zsh/plugins/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/plugins/docker/_docker
source ~/dotfiles/zsh/plugins/oh-my-zsh/plugins/git/git.plugin.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/plugins/tmux/tmux.plugin.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/plugins/history/history.plugin.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/plugins/terraform/_terraform
source ~/dotfiles/zsh/plugins/oh-my-zsh/plugins/kubectl/kubectl.plugin.zsh
source ~/dotfiles/zsh/plugins/oh-my-zsh/plugins/encode64/encode64.plugin.zsh


# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
  autoload -U up-line-or-beginning-search
  zle -N up-line-or-beginning-search
  bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
  autoload -U down-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

# this file will set the custom theme which can't be changed by the theme setting 
# source ~/dotfiles/zsh/prompt.sh
export PATH=$PATH:$HOME/dotfiles/utils
