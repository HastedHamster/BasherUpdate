#!/usr/bin/bash
	RED='\033[0;31m'
	GREEN='\033[0;32m'
	PURPLE='\033[0;35m'
	NC='\033[0m' # No Color

#REGION
echo -n "${PURPLE}RUNNING: SSH Updates${NC}\n"
	sudo mkdir /etc/ssh/old_keys
	sudo mv /etc/ssh/ssh_host_* /etc/ssh/old_keys/
echo -n "${PURPLE}Generating new keys..."
	sudo dpkg-reconfigure openssh-server
	echo "New Keys:"
	sudo md5sum /etc/ssh/ssh_host_* 
	echo "Old Keys:"
	sudo md5sum /etc/ssh/old_keys/*

#REGION
echo -n "${PURPLE}Switching SSH to port 45643/tcp${NC}\n"
	sudo sed 's/#Port 22/Port 45643/g' /etc/ssh/sshd_config -i
echo -n "${PURPLE}Turning off ssh as root"
	sudo sed 's/#PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config -i

echo -n "${PURPLE}Restricting access to SSH configs to ROOT${NC}\n"
	chown root:root /etc/ssh/sshd_config
	chmod 600 /etc/ssh/sshd_config

echo -n "${PURPLE}Restarting SSH service...${NC}\n"
	sudo systemctl restart ssh
	sudo systemctl status ssh
	sudo netstat -tulpn

echo -n "${PURPLE}Exiting script...${NC}\n"
exit 0