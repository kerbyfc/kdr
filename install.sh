#!/bin/sh

if [ ! -d "$HOME/.kdr" ]; then
    echo "Installing KDR for the first time"
    git clone https://github.com/kerbyfc/kdr.git "$HOME/.kdr"
    cd "$HOME/.kdr"
    [ "$1" == "ask" ] && export ASK="true"
    rake install
else
    echo "KDR is already installed"
fi
