

# open a webpage to create a pull request form the current branch
gpr() {
  if [ $? -eq 0 ]; then
    github_url=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#http://#' -e 's@com:@com/@' -e 's%\.git$%%'`;
    branch_name=`git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3`;
    pr_url=$github_url"/compare/develop..."$branch_name
    open $pr_url;
  else
    echo 'failed to open a pull request.';
  fi
}
 
commands() {
  awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'
}

# create new dir and go into it
mdc(){
  mkdir $1 && cd $_
}

# edit dotfiles
dotfiles(){
  cd ~/Projects/git/dotfiles/
  vim
}

# for editing and searching notes
notes(){
  cd ~/Projects/git/various_notes
  vim
}

# for staff eng things
people(){
  cd ~/Projects/git-symphony/people/
  vim
}

oldhist(){
  less ~/.zsh_history_thinkpad | fzf
}

weather(){
  curl https://wttr.in/Petrovaradin
}

# show listening ports on Mac
# eg listening <app_name> or listening <port>
listening() {
  if [ $# -eq 0 ]; then
    sudo lsof -iTCP -sTCP:LISTEN -n -P
  elif [ $# -eq 1 ]; then
    sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
  else
    echo "Usage: listening [pattern]"
  fi
}

