#!/bin/bash

cp -r .vim ~
cp .vimrc ~
home_dir=$(echo ~)
vimrc="$home_dir/.vimrc"
if [ -f $vimrc ];then 
    sed "s/home\/quy/$home_dir/g" $.vimrc
fi


