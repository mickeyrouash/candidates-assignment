#!/bin/bash
#add fix to exercise5-server1 here
sudo apt-get install -y sshpass
su  - vagrant -c "ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''"
su  - vagrant -c  "echo 'ssh-keyscan -H server2 >> ~/.ssh/known_hosts && sshpass -p `echo dmFncmFudAo= |base64 -d` ssh-copy-id   vagrant@server2' >> ~vagrant/setSshNoPass.sh"
echo  'exit 0' >> /etc/rc.local