#!/bin/bash
#add fix to exercise4-server1 here
sudo sed  -i  '/server1/d'  /etc/hosts
echo '192.168.100.11 server2' >> /etc/hosts
echo '192.168.100.10 server1' >> /etc/hosts
