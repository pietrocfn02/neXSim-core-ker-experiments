#!/bin/bash

# Infinite loop to run the command every minute
while true; do
    # Execute the grep command and store the count
    count=$(grep -i -r ";1" * | grep -c "")
    count=$((count - 1))
    
    # Print the count
    echo "Count of occurrences: $count"
    
    # Wait for 60 seconds before running again
    sleep 60
done
