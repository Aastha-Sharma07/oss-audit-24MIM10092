# OSS Audit Project — Linux Kernel

## Overview
This repository contains my capstone project for the Open Source Software course. The main goal of this project is to study and analyze the Linux Kernel, which is one of the most important open-source systems used globally.

Through this project, I explored how the Linux Kernel started, how its license works, how it is structured inside a Linux system, and how it compares with a proprietary system like the Windows NT Kernel.

Along with the theoretical part, I have also implemented five shell scripts to demonstrate practical Linux skills and real-world usage of open-source tools.

---

## Project Contents

This repository includes:

- A detailed project report in PDF format  
- Five shell scripts covering different Linux concepts  
- This README file for documentation  

---

## Scripts Included

### 1. System Identity Script
This script displays important information about the system such as OS name, kernel version, current user, uptime, and date/time. It also shows licensing information related to the Linux Kernel.

---

### 2. Package Inspection Script
This script checks whether important packages related to development and the Linux system are installed. It also retrieves their version details and prints useful information about them.

---

### 3. Disk and Permission Auditor
This script analyzes system directories and displays their permissions, ownership, and disk usage. It also accesses kernel-related information using system files.

---

### 4. Log Analyzer
This script reads a log file and searches for a specific keyword. It counts how many times the keyword appears and shows recent matching entries.

---

### 5. Manifesto Generator
This interactive script takes input from the user and generates a personalized open-source philosophy statement. The output is saved in a text file.

---

## Technologies and Commands Used

The project is implemented using Bash scripting on a Linux system. Some commonly used tools and commands include:

- bash scripting  
- uname, whoami, uptime, date  
- dpkg and apt tools  
- grep, awk, cut, tail  
- file handling and redirection  

---

## How to Run

```bash
# Clone the repository
git clone https://github.com/<your-username>/oss-audit-24MIM10092.git

# Open the project folder
cd oss-audit-24MIM10092

# Give execution permission
chmod +x *.sh

# Run scripts
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_permission_auditor.sh
./script4_log_analyzer.sh
./script5_manifesto_generator.sh
```

---

## Project Report

The complete report is included in this repository. It explains:

- Background and development of the Linux Kernel  
- Licensing and open-source principles  
- Internal structure of a Linux system  
- Role of Linux in the FOSS ecosystem  
- Comparison between Linux Kernel and Windows NT Kernel  

---

## Conclusion

This project helped me understand both the technical and philosophical aspects of open-source software. It also improved my practical skills in Linux and Bash scripting.

---

## Author

**Aastha Sharma**  
Registration Number: 24MIM10092  

Course: Open Source Software (OSS NGMC)
