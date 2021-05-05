#!/bin/sh
#
# nvm
#
# This installs node manader and latest node LTS version
export NVM_DIR=${HOME}/.nvm

if ! [ -d ${NVM_DIR}/.git ]; then 
  git clone https://github.com/creationix/nvm.git ${NVM_DIR}; 
fi

. ${NVM_DIR}/nvm.sh; nvm install --lts