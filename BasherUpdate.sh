#!/usr/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

#Region --- Updates
echo -e "${PURPLE}RUNNING: sudo apt update --fix-missing${NC}"

for UpdateLoop (( ; ; ))
do  
#   echo "Welcome $c times"
sudo apt clean
sudo apt update --fix-missing
status=$?
echo $status
if test $status -eq 0
then 
echo -e "${GREEN}COMPLETED: sudo apt update --fix-missing${NC}"
break $UpdateLoop
else 
echo -e "${RED}FAILED: sudo apt update --fix-missing${NC}"
fi
done


#Region --- Distro Upgrades
#echo -e "RUNNING: sudo apt dist-upgrade -y"
echo -e "${PURPLE}RUNNING: sudo apt full-upgrade -y${NC}"
sudo apt full-upgrade -y
status=$?
echo $status
if test $status -eq 0
then
echo -e "${GREEN}COMPLETED: sudo apt full-upgrade -y${NC}"
else 
echo -e "${RED}FAILED: sudo apt full-upgrade -y{NC}"
fi

#Region
echo -e "${PURPLE}RUNNING: sudo apt autoremove -y${NC}"
sudo apt autoremove -y
status=$?
echo $status
if test $status -eq 0
then 
echo -e "${GREEN}COMPLETED: sudo apt autoremove -y${NC}"
else
echo -e "${RED}FAILED: sudo apt autoremove -y${NC}"
fi

#Region --- Exiting BasherUpdate
echo -e "${PURPLE}Exiting BasherUpdate...${NC}"
exit 0
