#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Aditya Singh (24BCE10249)

# Concept demonstrated via comment: Aliases
# You can run this script faster by adding an alias to your ~/.bashrc file:
# alias manifesto='./script5_manifesto_generator.sh'

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph and write to file
echo "--- Open Source Manifesto ---" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "Author: Aditya Singh (24BCE10249)" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I rely on $TOOL every day to navigate my digital life. To me, open source is fundamentally about $FREEDOM. It empowers users and developers alike. If I had the opportunity, I would love to build $BUILD and share it freely with the world, continuing the cycle of collaborative innovation." >> "$OUTPUT"

echo "--------------------------------------------------"
echo "Manifesto successfully saved to $OUTPUT"
echo "Here is what it says:"
echo "--------------------------------------------------"
cat "$OUTPUT"
