#!/bin/bash

clear

echo "╭----------------------------------╮"
echo "|      File management system      |"
echo "╰----------------------------------╯"

# Store the initial state of the directory tree
initial_state=$(ls -1R)

# Start an infinite loop to monitor changes
while true
do
    # Store the current state of the directory tree
    current_state=$(ls -1R)
    
    # Compare the initial state with the current state
    if [[ "$initial_state" != "$current_state" ]]; then
        current_directory="Amin"
        
        # Check for removed files
        while read -r line; do
            if [[ $line =~ "./" ]]; then 
                current_directory=$line
            elif [[ !($current_state = *$line*) ]]; then 
                echo "- " '"'$line'"' " has been deleted from " $current_directory
            fi
        done <<< "$initial_state"
        
        # Check for added files
        while read -r line; do
            if [[ $line =~ "./" ]]; then 
                current_directory=$line
            elif [[ !($initial_state = *$line*) ]]; then 
                echo "+ " '"'$line'"' " has been added to " $current_directory
            fi
        done <<< "$current_state"
        
        # Update initial_state to be the current state
        initial_state=$current_state
    fi
    
    # Wait for 1 second before the next iteration
    sleep 1
done
