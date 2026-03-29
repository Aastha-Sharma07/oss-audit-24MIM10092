#!/bin/bash
# ============================================================
# Script 2: FOSS Package Inspector
# Author: Aastha Sharma | Reg No: 24MIM10092
# Course: Open Source Software | OSS NGMC Capstone
# Description: Checks if an OSS package is installed,
#              retrieves its version, and prints a philosophy
#              note using a case statement.
# ============================================================

# --- Define the package to inspect (Linux kernel tools) ---
PACKAGE="linux-image-$(uname -r)"   # Current running kernel package

# --- Also check for common Linux kernel related packages ---
PACKAGES_TO_CHECK=("linux-generic" "linux-headers-generic" "gcc" "make" "git")

echo "========================================================"
echo "       FOSS PACKAGE INSPECTOR — LINUX KERNEL AUDIT     "
echo "========================================================"
echo ""

# --- Function to check package installation via dpkg ---
check_package() {
    local PKG=$1

    # Use dpkg -l to check if package is installed (Ubuntu/Debian)
    if dpkg -l | grep -qw "$PKG"; then
        echo "[INSTALLED] $PKG"
        # Retrieve version using dpkg-query and filter relevant fields
        dpkg -l "$PKG" | grep "^ii" | awk '{print "  Version : " $3}'
        # Get description using apt-cache if available
        if command -v apt-cache &>/dev/null; then
            DESC=$(apt-cache show "$PKG" 2>/dev/null | grep -m1 "^Description:" | cut -d: -f2-)
            echo "  Summary : $DESC"
        fi
    else
        echo "[NOT FOUND] $PKG is not installed on this system."
    fi
    echo ""
}

# --- Check each package in the list ---
echo "Checking Linux Kernel related packages:"
echo "----------------------------------------"
for PKG in "${PACKAGES_TO_CHECK[@]}"; do
    check_package "$PKG"
done

# --- Show current running kernel version ---
echo "--------------------------------------------------------"
echo "Currently Running Kernel Version : $(uname -r)"
echo "Architecture                     : $(uname -m)"
echo "--------------------------------------------------------"
echo ""

# --- Case statement: philosophy notes for each package ---
echo "Open Source Philosophy Notes:"
echo "----------------------------------------"

for PKG in "${PACKAGES_TO_CHECK[@]}"; do
    case $PKG in
        linux-generic)
            echo "[$PKG] — The Linux kernel: a collaborative masterpiece built"
            echo "   by thousands of volunteers and companies across the globe."
            ;;
        linux-headers-generic)
            echo "[$PKG] — Open headers mean anyone can build modules and drivers"
            echo "   freely — transparency is the foundation of trust in software."
            ;;
        gcc)
            echo "[$PKG] — The GNU Compiler: the free tool that compiles the free"
            echo "   kernel. Without GCC, the open source world would not exist."
            ;;
        make)
            echo "[$PKG] — GNU Make automates the build process, a tool built"
            echo "   openly and shared freely under the GPL license."
            ;;
        git)
            echo "[$PKG] — Git: built by Linus Torvalds when proprietary version"
            echo "   control failed him. The tool that powers all open collaboration."
            ;;
        httpd|apache2)
            echo "[$PKG] — Apache: the open web server that built the modern internet."
            ;;
        mysql|mariadb)
            echo "[$PKG] — MySQL/MariaDB: open source at the heart of millions of apps."
            ;;
        firefox)
            echo "[$PKG] — Firefox: a nonprofit browser fighting for an open web."
            ;;
        vlc)
            echo "[$PKG] — VLC: plays anything — built by students, shared with the world."
            ;;
        python3)
            echo "[$PKG] — Python: a language shaped entirely by its community."
            ;;
        *)
            echo "[$PKG] — An open source tool: free to use, study, modify, and share."
            ;;
    esac
    echo ""
done

echo "========================================================"
echo "  Linux Kernel License: GNU General Public License v2  "
echo "  'Free software' means freedom — not just free price. "
echo "========================================================"
