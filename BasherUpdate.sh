#!/usr/bin/bash

echo "RUNNING: sudo apt update --fix-missing"
sudo apt clean
sudo apt update --fix-missing
echo "COMPLETED: Updates"

echo "RUNNING: sudo apt dist-upgrade -y"
sudo apt dist-upgrade -y
echo "RUNNING: sudo apt full-upgrade -y"
sudo apt full-upgrade -y
echo "COMPLETED: Upgrades"

echo "RUNNING: sudo apt autoremove -y"
sudo apt autoremove -y
echo "COMPLETED: Autoremove cleanup"
echo "Exiting BasherUpdate..."
