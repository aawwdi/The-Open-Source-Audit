#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Aditya Singh (24BCE10249)

# Added ~/.config/vlc to check the software's config directory
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "$HOME/.config/vlc")

echo "Directory Audit Report"
echo "--------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and sizes
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done
