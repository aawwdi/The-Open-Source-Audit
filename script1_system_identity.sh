#!/bin/bash
# Script 1: System Identity Report
# Author: Aditya Singh (24BCE10249)
# Course: Open Source Software

# --- Variables
STUDENT_NAME="Aditya Singh"
SOFTWARE_CHOICE="VLC Media Player"

# --- System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep -w "NAME" | cut -d "=" -f 2 | tr -d '"')
DATE_TODAY=$(date)
LICENSE_MSG="This OS is primarily licensed under the GNU General Public License (GPL)."

# --- Display
echo "======================================"
echo " Open Source Audit"
echo "======================================"
echo "Student : $STUDENT_NAME (24BCE10249)"
echo "Software: $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Distro  : $DISTRO"
echo "Date    : $DATE_TODAY"
echo "License : $LICENSE_MSG"
echo "======================================"
