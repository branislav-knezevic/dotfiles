
# Following plugins will be added to zsh

plugins=(
  git
  git-flow
  docker
  docker-compose
  tmux
  history
  zsh-autosuggestions
  terraform
  kubectl
  encode64
  common-aliases
  copydir
  copyfile
  fzf
)

for plugin ($plugins); do
  fpath=(~/.dotfiles/zsh/plugins/oh-my-zsh/plugins/$plugin $fpath)
done

compinit

# initialize defualt oh-my-zsh
source ~/.dotfiles/zsh/plugins/oh-my-zsh/oh-my-zsh.sh

# initialize custom plugins which are not in the default plugins dir
source ~/.dotfiles/zsh/plugins/fixls.zsh
source ~/.dotfiles/zsh/plugins/oh-my-zsh/lib/key-bindings.zsh
source ~/.dotfiles/zsh/plugins/oh-my-zsh/lib/completion.zsh
#source ~/.dotfiles/zsh/plugins/vi-mode.plugin.zsh # this disables some features from regular terminal movement
source ~/.dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.dotfiles/zsh/plugins/keybindings.sh 
source ~/.dotfiles/zsh/plugins/helm.zsh
source ~/.dotfiles/zsh/plugins/aws_complete.zsh
