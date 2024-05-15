#!/bin/bash
if [ ! -d "myansible" ]; then
    sudo apt update
    sudo apt install -y python3-minimal python3-virtualenv python3-dev build-essential
    virtualenv myansible
    pip3 install ansible
fi

source myansible/bin/activate

chmod -R 700 ./

chmod 400 *.pem

eval $(ssh-agent)

ssh-add *.pem
