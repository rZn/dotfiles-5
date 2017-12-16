#!bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

# Install Ansible
if [[ ! -f /usr/bin/ansible ]]
then
    pip install ansible
fi

if [[ -z ${1+x} ]]
then
    echo "Please choose a tag to install as param:"
    ansible-playbook -i "localhost," -c local install.yml --list-tags
    exit 1
fi

ansible-playbook -i "localhost," -c local install.yml --ask-become-pass -CD -t $1
