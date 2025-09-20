#!/bin/bash

# Create arrays for each cargo bay
forward_bay=("Space Suits" "Oxygen Tanks" "Repair Kits")
midship_bay=("Food Supplies" "Water Containers" "Medical Equipment")
aft_bay=("Spare Parts" "Fuel Cells" "Scientific Instruments")

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Please specify a cargo bay: forward, midship, or aft"
    exit 1
fi

# Display inventory based on argument
case "$1" in
    forward)
        echo "Forward Bay Inventory:"
        echo "1. ${forward_bay[0]}"
        echo "2. ${forward_bay[1]}"
        echo "3. ${forward_bay[2]}"
        ;;
    midship)
        echo "Midship Bay Inventory:"
        echo "1. ${midship_bay[0]}"
        echo "2. ${midship_bay[1]}"
        echo "3. ${midship_bay[2]}"
        ;;
    aft)
        echo "Aft Bay Inventory:"
        echo "1. ${aft_bay[0]}"
        echo "2. ${aft_bay[1]}"
        echo "3. ${aft_bay[2]}"
        ;;
    *)
        echo "Invalid cargo bay. Choose forward, midship, or aft."
        exit 1
        ;;
esac