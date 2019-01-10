#!/bin/bash
#add fix to exercise5-server2 here
sudo apt-get install -y sshpass
su  - vagrant -c "ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''"
su - vagrant -c "ssh-keyscan -H server1 >> ~/.ssh/known_hosts"
su - vagrant -c "sshpass -p `echo dmFncmFudAo= |base64 -d ` ssh-copy-id   vagrant@server1"
su - vagrant -c ssh server1 ~/setSshNoPass.sh
su vagrant -c "ssh -t server1 sh -xv ~/setSshNoPass.sh "