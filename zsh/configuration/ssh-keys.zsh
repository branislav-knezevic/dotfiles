#!/bin/bash

# add following ssh keys on zsh start
ssh-add ~/.ssh/git-symphony/bungee-symphony-pem > /dev/null 2>&1
ssh-add ~/.ssh/git-symphony/bungee-symphony > /dev/null 2>&1
ssh-add ~/.ssh/platoon/bk-platoon-aws.pem > /dev/null 2>&1
# ssh-add ~/.ssh/platoon/bungee-platoon-aws > /dev/null 2>&1
ssh-add ~/.ssh/platoon/jenkins-agent > /dev/null 2>&1
