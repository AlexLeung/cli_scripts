#!/bin/bash

echo $1

if [ -d "~/.daedalus" ]
then
    chmod -R +w ~/.daedalus
    rm -rf ~/.local/bin/daedalus* ~/.daedalus
    rm -f ~/.local/share/applications/Daedalus*.desktop
fi

# Install
mkdir ~/.daedalus
sudo chmod -R 757 ~/.daedalus

sudo bash $1
