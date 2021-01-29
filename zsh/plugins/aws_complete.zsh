# set completer for aws cli.v2

export PATH=/usr/local/bin:$PATH
autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws
