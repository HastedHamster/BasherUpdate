#!/usr/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

#Region --- Updates
echo "${RED}RUNNING: sudo apt update --fix-missing${NC}"
sudo apt clean
sudo apt update --fix-missing
status=$?
echo $status
#if status -eq 0
#then 
echo "${RED}COMPLETED: sudo apt update --fix-missing${NC}"
#else 
#echo "FAILED: sudo apt update --fix-missing"
#fi

#Region --- Distro Upgrades
#echo "RUNNING: sudo apt dist-upgrade -y"
echo "${RED}RUNNING: sudo apt full-upgrade -y${NC}"
sudo apt full-upgrade -y
status=$?
echo $status
#if test status -eq 0
#then
echo "${RED}COMPLETED: sudo apt full-upgrade -y${NC}"
#else 
#echo "FAILED: sudo apt full-upgrade -y"
#fi

#Region
echo "${RED}RUNNING: sudo apt autoremove -y${NC}"
sudo apt autoremove -y
status=$?
echo $status
#if test status -eq 0
#then 
echo "${RED}COMPLETED: sudo apt autoremove -y${NC}"
#else
#echo "FAILED: sudo apt autoremove -y"
#fi

#Region --- Exiting BasherUpdate
echo "${RED}Exiting BasherUpdate...${NC}"
exit 0
