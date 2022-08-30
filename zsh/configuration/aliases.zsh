# custom aliases 

# Vim
alias v="vim -p"

# Shortcut to access frequent directories
alias ..="cd .."
alias cdt="cd /tmp"
alias cdp="cd ~/Projects/git-symphony/Platoon/"
alias cdpd="cd ~/Projects/git-symphony/Platoon/platoon-devops-scripts/"
alias cdd="cd ~/Projects/Private/dotfiles/"

# abbrevations for apps 
alias vimf="vifm"
alias terrafrom="terraform"

# k8s customizations
if [ /snap/bin/kubectl ]; then 
  source <(kubectl completion zsh); 
fi
alias ksys='kubectl -n kube-system'
alias kpd="kubectl --context arn:aws:eks:eu-west-1:415333511749:cluster/develop-cluster -n develop"
alias kps="kubectl --context arn:aws:eks:eu-west-1:415333511749:cluster/stage-cluster -n stage"
alias kpt="kubectl --context arn:aws:eks:eu-west-1:415333511749:cluster/test-cluster -n test"
alias kpu="kubectl --context arn:aws:eks:eu-west-1:415333511749:cluster/uat-cluster -n uat"
alias kpp="kubectl --context arn:aws:eks:eu-west-1:415333511749:cluster/prod-cluster -n prod"
alias -g yl="-o yaml | less"
alias -g y="-o yaml"

# terraform
alias tf="terraform"
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfo="terraform output"
alias tfs="terraform state list"

# terragrunt
alias tg="terragrunt"
alias tgi="terragrunt init"
alias tgp="terragrunt plan"
alias tga="terragrunt apply"
alias tgd="terragrunt destroy"
alias tgo="terragrunt output"

# xsel - yank output
alias -g Y='| xsel -ib'

# keeper
#alias kpr="keeper --config=/home/bungee/.keeper/config.json"

# git custom
gdtl='git difftool -y'
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias gcorb='gco --track $(git branch -r | fzf)'
alias gcob='gco $(git branch | fzf)'

# fuzzy commands with fzf
alias fz="fzf --bind 'f1:execute(less -f {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort' --preview '[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null | head -500'"
alias vfz='vim $(fz)'
alias preview="fzf --preview 'bat --color \"always\" --line-range 0:30 {}'"

# various
alias myip="curl http://ipecho.net/plain; echo"
alias dirs='dirs -v | head -10'
alias usage='du -h -d1'

# Symphony specific
alias plt-login="/Users/bungee/Projects/git-symphony/Platoon/p4a/platoon-gateway-service/environment/scripts/aws-login.sh branislav.knezevic@symphony.is"
