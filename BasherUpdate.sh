#!/usr/bin/bash

#Region --- Updates
echo "RUNNING: sudo apt update --fix-missing"
sudo apt clean
sudo apt update --fix-missing
status=$?
echo status
#if status -eq 0
#then 
echo "COMPLETED: sudo apt update --fix-missing"
#else 
#echo "FAILED: sudo apt update --fix-missing"
#fi

#Region --- Distro Upgrades
#echo "RUNNING: sudo apt dist-upgrade -y"
echo "RUNNING: sudo apt full-upgrade -y"
sudo apt full-upgrade -y
status=$?
echo status
#if test status -eq 0
#then
echo "COMPLETED: sudo apt full-upgrade -y"
#else 
#echo "FAILED: sudo apt full-upgrade -y"
#fi

#Region
echo "RUNNING: sudo apt autoremove -y"
sudo apt autoremove -y
status=$?
echo status
#if test status -eq 0
#then 
echo "COMPLETED: sudo apt autoremove -y"
#else
#echo "FAILED: sudo apt autoremove -y"
#fi

#Region --- Exiting BasherUpdate
echo "Exiting BasherUpdate..."
exit 0
