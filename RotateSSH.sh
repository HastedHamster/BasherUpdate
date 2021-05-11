sudo mkdir /etc/ssh/default_keys
sudo mv /etc/ssh/ssh_host_* /etc/ssh/default_kkeys/
sudo dpkg-reconfigure openssh-server
sudo md5sum /etc/ssh/ssh_host_* && sudo md5sum /etc/ssh/default_keys/*
