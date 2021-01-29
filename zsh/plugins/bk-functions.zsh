# Custom functions

## custom functions

# open a webpage to create a pull request form the current branch
gpr() {
  if [ $? -eq 0 ]; then
    github_url=`git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#http://#' -e 's@com:@com/@' -e 's%\.git$%%'`;
    branch_name=`git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3`;
    pr_url=$github_url"/compare/master..."$branch_name
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
  cd ~/Projects/Private/dotfiles
  vim
}
