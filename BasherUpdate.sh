#!/usr/bin/bash
sudo apt update --fix-missing
echo "RUNNING: sudo apt update --fix-missing"
echo "Update complete."

sudo apt dist-upgrade -y
echo "sudo apt dist-upgrade -y"
sudo apt full-upgrade -y
echo "sudo apt full-upgrade -y"
echo "Upgrade complete."

sudo apt autoremove -y
echo "sudo apt autoremove -y"
echo "Autoremove complete."
echo "Exiting..."
