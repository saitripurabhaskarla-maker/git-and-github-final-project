#!/bin/bash

# simple-interest.sh
# A Bash script to calculate Simple Interest based on user input.
# Formula: SI = (P * R * T) / 100

echo "----- Simple Interest Calculator -----"

# Prompt user for Principal amount
read -p "Enter the Principal amount: " principal

# Prompt user for Rate of interest
read -p "Enter the Rate of interest (in %): " rate

# Prompt user for Time period
read -p "Enter the Time period (in years): " time

# Calculate Simple Interest using bc for floating point support
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount (Principal + Simple Interest)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display the results
echo ""
echo "----- Result -----"
echo "Principal Amount : $principal"
echo "Rate of Interest  : $rate%"
echo "Time Period       : $time year(s)"
echo "Simple Interest   : $simple_interest"
echo "Total Amount      : $total_amount"
