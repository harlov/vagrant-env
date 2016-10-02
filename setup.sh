#!/bin/bash

if [ "$EUID" -ne 0 ]
then echo "Please run as root! (sudo ./setup.sh)"
    exit
fi

dnf install -y ansible python2-dnf
cd ansible/
ansible-playbook install.yml
