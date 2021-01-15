#!/bin/bash

# install Powerline fonts

export POWERLINEDIR=~/src/github.com/powerline

mkdir -p ${POWERLINEDIR}
rm -rf ${POWERLINEDIR}/fonts
git clone git@github.com:powerline/fonts.git ${POWERLINEDIR}
bash ${POWERLINEDIR}/fonts/install.sh

