#!/bin/bash
set -e

# Run the Python script to analyze vowels
python3 /frequency.py > vowel_report.txt

# Get the GitHub username and current timestamp
USERNAME="${GITHUB_ACTOR}"
TIMESTAMP=$(date)

# Call the script to update the README
bash /update_readme.sh "$USERNAME" "$TIMESTAMP"
