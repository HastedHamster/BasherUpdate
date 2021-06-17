#!/usr/bin/bash
sudo apt install ufw gufw
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow from 192.168.1.0/24 to any port 45643/tcp
sudo ufw deny 22/tcp
sudo ufw status numbered verbose
sudo ifconfig
exit 0
