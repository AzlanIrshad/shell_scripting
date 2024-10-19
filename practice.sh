#!/bin/bash
topic="$1"
file=/Users/azlanirshad/bin/${topic}notes.txt
date=$(date)
read -p "Your Note: " note
echo "$date: $note" >> "$file"
if [[ $? -eq 0 ]]; then
    echo "Script executed!: added $*"
    tail -n 3 $file
else
    echo "Script not executed!"
fi