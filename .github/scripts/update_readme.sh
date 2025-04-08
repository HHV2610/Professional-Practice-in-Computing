#!/bin/bash

USERNAME="$1"
TIMESTAMP="$2"

# Append the analysis result to README.md
{
  echo "## Vowel Analysis Report"
  echo "**Contributor:** $USERNAME"
  echo "**Timestamp:** $TIMESTAMP"
  echo ""
  cat vowel_report.txt
  echo ""
  echo "---"
} >> README.md
