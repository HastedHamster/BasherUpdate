sudo mkdir /etc/ssh/old_keys
sudo mv /etc/ssh/ssh_host_* /etc/ssh/old_keys/
echo "Generating new keys..."
sudo dpkg-reconfigure openssh-server
echo "New Keys:"
sudo md5sum /etc/ssh/ssh_host_* 
echo "Old Keys:"
sudo md5sum /etc/ssh/old_keys/*
echo "Restarting SSH service..."
sudo systemctl restart ssh && sudo systemctl status ssh
echo "Exiting script..."
