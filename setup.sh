#!/bin/bash
cp -r .vim ~
if [ ! $(cmp --silent .vimrc ~/.vimrc) ];then
    cp .vimrc ~
fi
home_dir=$(echo ~)
vimrc="$home_dir/.vimrc"
cd ~/.vim/bundle
if [ -z "$(ls -A ~/.vim/bundle/pydiction)" ]; then
    git clone https://github.com/rkulla/pydiction.git 
fi
if [ -f $vimrc ];then 
    sed -i 's~/home/quy~'$home_dir'~g' $vimrc
fi
if [ -d '~/.vim/bundle/nerdcommenter' ];then 
    git clone https://github.com/scrooloose/nerdcommenter.git
fi



