#!/usr/bin/bash
	RED='\033[0;31m'
	GREEN='\033[0;32m'
	PURPLE='\033[0;35m'
	NC='\033[0m' # No Color

#Region --- Updates
	echo -e "${PURPLE}RUNNING: sudo apt update --fix-missing${NC}"

for i in {1..100}
do  
	sudo apt clean
	sudo apt update --fix-missing
	status=$?
if test $status -eq 0
then 
	echo -e "${GREEN}SUCCESS: sudo apt update --fix-missing${NC}\n"
	break
else 
	echo -e "${RED}FAILED: sudo apt update --fix-missing${NC}\n"
	sleep 1m
fi
done

#Region --- Upgrades
for i in {1..100}
do 	
echo -e "${PURPLE}RUNNING: sudo apt upgrade -y${NC}"
	sudo apt full-upgrade -y
	status=$?
if test $status -eq 0
then
	echo -e "${GREEN}SUCCESS: sudo apt upgrade -y${NC}\n"
	break
else 
	echo -e "${RED}FAILED: sudo apt upgrade -y${NC}\n"
	sleep 1m
fi
done

#Region
for i in {1..100}
do 	
echo -e "${PURPLE}RUNNING: sudo apt autoremove -y${NC}"
	sudo apt autoremove -y
	status=$?
if test $status -eq 0
then 
	echo -e "${GREEN}SUCCESS: sudo apt autoremove -y${NC}\n"
	break
else
	echo -e "${RED}FAILED: sudo apt autoremove -y${NC}\n"
	sleep 1m
fi
done

#Region --- Exiting BasherUpdate
	echo -e "${PURPLE}Exiting BasherUpdate...${NC}\n"
	exit 0
