#!/bin/bash

# add following ssh keys on zsh start
ssh-add ~/.ssh/laptop_migration/mig_key > /dev/null 2>&1
ssh-add ~/.ssh/devtech_keys/id_rsa_devtech > /dev/null 2>&1
