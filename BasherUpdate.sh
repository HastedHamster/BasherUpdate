#!/usr/bin/bash
sudo apt update --fix-missing
echo "Update complete."

sudo apt full-upgrade -y
echo "Upgrade complete."

sudo apt autoremove -y
echo "Autoremove complete."
 echo "Exiting..."
