#!/bin/sh

# configure git
git config --global user.name "hpnzm"
git config --global user.email "theweedsmokers69@gmail.com"

# create SSH key
mkdir ../ssh
ssh-keygen -t ed25519 -C "theweedsmokers69@gmail.com" -f ../ssh/sshkey -N ""
chmod 400 ../ssh/sshkey
echo -e "\nHere's your SSH key 😆:"
cat ../ssh/sshkey.pub
echo "Add your SSH key to GitHub: https://github.com/settings/ssh/new"

# functions
add_ssh () {
  eval $(ssh-agent)
  ssh-add ../ssh/sshkey
}
