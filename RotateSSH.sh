sudo mkdir /etc/ssh/old_keys
sudo mv /etc/ssh/ssh_host_* /etc/ssh/old_keys/
echo "Generating new keys..."

sudo dpkg-reconfigure openssh-server
echo "New Keys:"
sudo md5sum /etc/ssh/ssh_host_* 
echo "Old Keys:"
sudo md5sum /etc/ssh/old_keys/*

echo "Switching SSH to port 45643/tcp"
sudo sed 's/#Port 22/Port 45643/g' /etc/ssh/sshd_config -i

echo "Turning off ssh as root"
sudo sed 's/#PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config -i

echo "Restricting access to SSH configs to ROOT"
chown root:root /etc/ssh/sshd_config
chmod 600 /etc/ssh/sshd_config

echo "Restarting SSH service..."
sudo systemctl restart ssh && sudo systemctl status ssh
sudo netstat -tulpn

echo "Exiting script..."
