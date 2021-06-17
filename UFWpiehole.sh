#!/usr/bin/bash
##### REFERENCE: https://discourse.pi-hole.net/t/harden-my-pi-running-pihole-install-ufw/5642/9

##### Install and enable ufw #####
sudo apt install ufw gufw
sudo ufw enable

##### DENY all incomming by default #####
sudo ufw default deny incoming
##### ALLOW all outgoing by default #####
sudo ufw default allow outgoing

##### Open SSH port to the local network only #####
sudo ufw allow from 192.168.1.0/24 to any port 45643 tcp
##### Open Port 4711 for Pi-Hole's FTL (from localhost only) #####
sudo ufw allow from 192.168.1.0/24 to any port 4711 proto tcp
##### Open Pi-Hole's DNS (Port 53) to the local network only #####
sudo ufw allow from 192.168.1.0/24 to any port 53 proto
##### Open Pi-Hole's Web Dashboard (Port 80 by default) to the local network only #####
sudo ufw allow from 192.168.1.0/24 to any port 80 proto

##### Reload ufw and display status #####
sudo ufw reload
sudo ufw status
##### Display IP #####
sudo ifconfig
exit 0
