#!/bin/bash
# ============================================================
# Script 5: Open Source Manifesto Generator
# Author: Aastha Sharma | Reg No: 24MIM10092
# Course: Open Source Software | OSS NGMC Capstone
# Description: Asks the user 3 questions interactively, then
#              composes a personalised open source philosophy
#              statement and saves it to a .txt file.
# ============================================================

# --- Alias demonstration (aliases shown as comments per task spec) ---
# In a live shell session you could define:
#   alias show_manifesto='cat manifesto_$(whoami).txt'
#   alias gen_manifesto='bash script5_manifesto_generator.sh'
# These aliases make the workflow faster and more efficient.

# --- Get current date and output filename ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"    # Dynamic filename based on logged-in user

echo "========================================================"
echo "     OPEN SOURCE MANIFESTO GENERATOR                   "
echo "     Linux Kernel Audit | Aastha Sharma | 24MIM10092   "
echo "========================================================"
echo ""
echo "  Answer three questions to generate your personal"
echo "  open source philosophy statement."
echo ""

# --- Question 1: An open-source tool used daily ---
read -p "1. Name one open-source tool you use every day: " TOOL

# --- Question 2: What freedom means to the user ---
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM

# --- Question 3: Something they would build and share ---
read -p "3. Name one thing you would build and share freely: " BUILD

echo ""
echo "Composing your manifesto..."
echo ""

# --- Compose the manifesto using string concatenation and redirection ---
# Use > to create/overwrite the file, then >> to append subsequent lines

echo "========================================" > "$OUTPUT"
echo "   MY OPEN SOURCE MANIFESTO             " >> "$OUTPUT"
echo "   Generated on: $DATE                  " >> "$OUTPUT"
echo "   By: Aastha Sharma | 24MIM10092       " >> "$OUTPUT"
echo "========================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# --- Main manifesto paragraph (composed from user answers) ---
echo "Every day, I use $TOOL — a tool that exists because someone" >> "$OUTPUT"
echo "chose to share their work openly. This reflects the real spirit" >> "$OUTPUT"
echo "of open source: collaboration and knowledge sharing." >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "To me, freedom means $FREEDOM. It is not just about access," >> "$OUTPUT"
echo "but about the ability to learn, modify, and improve software." >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "The Linux Kernel shows how thousands of people can work" >> "$OUTPUT"
echo "together to build something powerful. It proves that open" >> "$OUTPUT"
echo "collaboration leads to innovation." >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "If I could build something and share it freely, it would be" >> "$OUTPUT"
echo "$BUILD. I believe sharing knowledge helps others grow and" >> "$OUTPUT"
echo "creates a stronger developer community." >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "Open source is not just about code — it is about trust," >> "$OUTPUT"
echo "learning, and contributing back to society." >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "========================================" >> "$OUTPUT"
echo "   Signed: Aastha Sharma | 24MIM10092   " >> "$OUTPUT"
echo "   Course: Open Source Software         " >> "$OUTPUT"
echo "   Date  : $DATE                        " >> "$OUTPUT"
echo "========================================" >> "$OUTPUT"

# --- Confirm save and display the manifesto ---
echo "  ✓ Manifesto saved to: $OUTPUT"
echo ""
echo "========================================================"
echo ""

# --- Display the generated manifesto ---
cat "$OUTPUT"