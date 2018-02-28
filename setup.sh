#!/bin/bash
cp -r .vim ~
cp .vimrc ~
home_dir=$(echo ~)
vimrc="$home_dir/.vimrc"
cd ~/.vim/bundle
if [ -z "$(ls -A ~/.vim/bundle/pydiction)" ]; then
    cd ~/.vim/bundle/
    git clone https://github.com/rkulla/pydiction.git 
fi
if [ -f $vimrc ];then 
    sed -i 's~/home/quy~'$home_dir'~g' $vimrc
fi


