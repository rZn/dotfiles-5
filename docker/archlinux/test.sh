#!/bin/bash
if grep 'failed=1' ~/dotfiles/ansible.log
then
    exit 1
fi
