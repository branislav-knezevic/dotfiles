# custom aliases by me

# Shortcut to access frequent directories
alias ..="cd .."
# alias cdv="cd ~/Projects/git/Virgin/"
# alias cdvr="cd ~/Projects/git/Virgin/Repositories/"
# alias cdvi="cd ~/Projects/git/Virgin/Repositories/Infrastructure/"
# alias cdvt="cd ~/Projects/git/Virgin/Repositories/Infrastructure/terraform/"
# alias cdvm="cd ~/Projects/git/Virgin/Repositories/Manifests/"
alias cdp="cd ~/Projects"
alias cda="cd ~/Projects/vsts/Acronis/"
alias cdad="cd ~/Projects/vsts/Acronis/Acronis.Kaseya.DevOpsConfigs/"
alias cdab="cd ~/Projects/vsts/Acronis/Acronis.Kaseya.BaseWebApp/"
alias cdau="cd ~/Projects/vsts/Acronis/Acronis.Kaseya.UI/"
alias cdah="cd ~/Projects/vsts/Acronis/helper_files/"
alias cdak="cd ~/Projects/acronis/ci-kaseya-bk/"
alias cdt="cd /tmp"

# abbrevations for apps 
alias vimf="vifm"
alias terrafrom="terraform"

# k8s customizations
if [ /snap/bin/kubectl ]; then 
  source <(kubectl completion zsh); 
fi
alias ksys='kubectl -n kube-system'
#alias ki="kubectl --context test -n integration"
#alias ks="kubectl --context test -n staging"
#alias kp="kubectl --context prod -n prod"
#alias kti="kubectl -n ticketclever-int"
#alias kts="kubectl -n ticketclever-stg"
#alias ktp="kubectl -n ticketclever-prd"
alias kad="kubectl --context acronis -n dev"
alias kas="kubectl --context acronis -n staging"
alias kap="kubectl --context acronis -n production"
alias kam="kubectl --context acronis -n monitoring"
alias kat="kubectl --context acronis -n test"
alias kau="kubectl --context acronis -n uat"
alias kaa="kubectl --kubeconfig ~/.kube/config_acronis -n kaseya-internal"
alias -g yl="-o yaml | less"
alias -g y="-o yaml"

# terraform
alias tf="terraform"
alias tfp="terraform plan"
alias tfa="terraform apply"

# xsel
alias -g Y='| xsel -ib'

# keeper
#alias kpr="keeper --config=/home/bungee/.keeper/config.json"

# git custom
gdtl='git difftool -y'
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"

# fuzzy commands with fzf
alias gcorb='gco --track $(git branch -r | fzf)'
alias gcob='gco $(git branch | fzf)'
alias fz="fzf --bind 'f1:execute(less -f {}),ctrl-y:execute-silent(echo {} | pbcopy)+abort' --preview '[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null | head -500'"
alias vfz='vim $(fz)'
alias preview="fzf --preview 'bat --color \"always\" --line-range 0:30 {}'"

# various
alias myip="curl http://ipecho.net/plain; echo"
alias dirs='dirs -v | head -10'
alias usage='du -h -d1'
