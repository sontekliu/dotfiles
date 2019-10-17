#!/bin/bash

git config --global user.name "sontek"
git config --global user.email "sontek@yeah.net"

git config --global color.diff auto
git config --global color.ui  true      
git config --global color.status auto
git config --global color.branch auto

git config --global core.editor vim
git config --global merge.tool vimdiff

git config --global alias.ci commit    
git config --global alias.br branch    
git config --global alias.st status    
git config --global alias.co checkout

