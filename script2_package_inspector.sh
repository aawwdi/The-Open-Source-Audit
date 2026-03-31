#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Aditya Singh (24BCE10249)

PACKAGE="vlc"

# Check if package is installed (checks both dpkg and rpm)
if dpkg -l $PACKAGE &>/dev/null || rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    
    if command -v rpm &>/dev/null && rpm -q $PACKAGE &>/dev/null; then
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
    else
        apt show $PACKAGE 2>/dev/null | grep -E 'Version|License|Description' | head -n 3
    fi
else
    echo "$PACKAGE is NOT installed. Please install it to continue the audit."
fi

echo "--------------------------------------"
# Case statement for philosophy notes
case $PACKAGE in
    httpd|apache2) 
        echo "Apache: the web server that built the open internet" ;;
    mysql) 
        echo "MySQL: open source at the heart of millions of apps" ;;
    vlc) 
        echo "VLC Media Player: Plays anything - built by students in Paris, championing multimedia freedom." ;;
    firefox) 
        echo "Firefox: A nonprofit fighting for an open web." ;;
    *) 
        echo "An excellent open-source tool." ;;
esac
