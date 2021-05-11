#!/usr/bin/bash
sudo apt clean
sudo apt update --fix-missing
echo "RUNNING: sudo apt update --fix-missing"
echo "COMPLETED: Updates"

sudo apt dist-upgrade -y
echo "sudo apt dist-upgrade -y"
sudo apt full-upgrade -y
echo "sudo apt full-upgrade -y"
echo "COMPLETED: Upgrades"

sudo apt autoremove -y
echo "sudo apt autoremove -y"
echo "COMPLETED: Autoremove cleanup"
echo "Exiting BasherUpdate..."
