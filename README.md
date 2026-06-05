# Linux Sysadmin Automation Kit
🚀 Project Overview

This project is a simple Linux server health monitoring automation tool built using a Bash script.
It automatically checks system resources like disk usage, memory usage, CPU load, and running services, and stores the output in log files.

The goal is to simulate a basic sysadmin monitoring system that can be automated using cron.

🛠️ Technologies Used
Linux (Ubuntu / WSL recommended)
Bash scripting
Cron (for automation concept)
System utilities: df, free, uptime, systemctl
📁 Project Structure
linux-sysadmin-project/
│
├── server_health_check.sh   # Main monitoring script
├── logs/                    # Stores generated log files
└── README.md                # Project documentation
⚙️ Features
📊 Disk space monitoring
🧠 Memory (RAM) usage check
⚡ CPU load monitoring
🔧 Service status checks (e.g., ssh, cron, docker)
📝 Timestamped log file generation
📂 Logs stored in logs/ directory
🚀 How to Run
1. Give execute permission
chmod +x server_health_check.sh
2. Run the script manually
./server_health_check.sh
3. Check logs
ls logs
cat logs/health_*.log
⏰ Automation (Cron Job)

This script can be scheduled to run automatically every hour using cron:

0 * * * * /bin/bash /path/to/linux-sysadmin-project/server_health_check.sh

📌 This ensures continuous system monitoring without manual execution.

📊 Sample Output (Log File Contains)
Date and time of execution
Disk usage details
Memory usage summary
CPU load averages
Status of selected services
📚 Key Learnings
Linux system monitoring basics
Bash scripting automation
Log file generation and management
Cron job scheduling concept
Real-world sysadmin workflow simulation
👨‍💻 Author
Student DevOps/Linux Practice Project
Created for learning system administration and automation basics
