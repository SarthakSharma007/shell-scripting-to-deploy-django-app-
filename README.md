# 🚀 Shell Scripting for DevOps – Projects

This repository contains **two projects** demonstrating automation using **Bash scripting** for DevOps tasks.  

---

# 📑 Table of Contents
- [📌 Project 1: Django App Deployment Script](#-project-1-django-app-deployment-script)
  - [✨ Features](#-features)
  - [📂 Project Structure](#-project-structure)
  - [⚡ Usage](#-usage)
  - [🐳 What the script does](#-what-the-script-does)
  - [🔑 Access the App](#-access-the-app)
  - [🛠️ Troubleshooting](#-troubleshooting)
- [📌 Project 2: AWS EC2 Instance Creation Script](#-project-2-aws-ec2-instance-creation-script-bash)
  - [✨ Features](#-features-1)
  - [⚡ Prerequisites](#-prerequisites)
  - [🛠️ Installation](#-installation)
  - [🚀 Usage](#-usage-1)
  - [⚙️ Parameters in the Script](#️-parameters-in-the-script)
  - [🖥️ Example](#️-example)

---

# 📌 Project 1: Django App Deployment Script

This project contains a **Bash script** that automates the deployment of a Django application using **Docker** and **Docker Compose**.  
It installs required dependencies, sets up services, and runs the app seamlessly on port **8000**.

---

## ✨ Features
- ✅ Clone Django app source code from GitHub  
- ✅ Install required dependencies (Docker, Docker Compose, Nginx)  
- ✅ Restart and enable system services (Docker, Nginx)  
- ✅ Build Docker image for Django app  
- ✅ Deploy with `docker-compose`  

---

## 📂 Project Structure
.
├── django-deploy.sh # Main deployment script
└── README.md # Project documentation

yaml
Copy code

---

## ⚡ Usage

### 1️⃣ Clone this repository
```bash
git clone https://github.com/SarthakSharma007/use-shell-scripting-to-deploy.git
2️⃣ Give execution permission
bash
Copy code
chmod +x django-deploy.sh
3️⃣ Run the script
bash
Copy code
./django-deploy.sh
🐳 What the script does
Clone Code → Clones https://github.com/LondheShubham153/django-notes-app.git

Install Requirements → Installs docker.io, nginx, and docker-compose

Restart Services → Enables & restarts Docker & Nginx

Deploy → Builds Docker image & runs app with Docker Compose

🔑 Access the App
Once deployed, open in your browser:

cpp
Copy code
http://<your-aws-public-ip>:8000
👉 Make sure port 8000 is open in your AWS Security Group.

🛠️ Troubleshooting
If docker-compose not found:

bash
Copy code
sudo apt install docker-compose -y
If port not accessible:

Check AWS Security Group inbound rules

Allow Custom TCP rule on port 8000

📌 Project 2: AWS EC2 Instance Creation Script (Bash)
This project contains a Bash script to automatically install AWS CLI (if not installed) and create an EC2 instance using AWS CLI commands.
It ensures error handling with set -euo pipefail and waits until the instance is in the running state.

✨ Features
✅ Checks if AWS CLI v2 is installed, otherwise installs it.

✅ Creates an EC2 instance with custom parameters.

✅ Waits until the instance is in the running state before completing.

✅ Includes error handling and cleanup.

⚡ Prerequisites
Linux environment with Bash.

AWS CLI v2 installed and configured with aws configure.

IAM user/role with EC2 permissions:

ec2:RunInstances

ec2:DescribeInstances

ec2:CreateTags

An existing Key Pair, Subnet ID, and Security Group in your AWS account.

🛠️ Installation
Clone this repository:

bash
Copy code
git clone https://github.com/SarthakSharma007/use-shell-scripting-to-deploy.git
🚀 Usage
Run the script:

bash
Copy code
./create-ec2-instance-on-aws-using-shell-scripting
⚙️ Parameters in the Script
Update the following variables inside the script before execution:

bash
Copy code
AMI_ID=""                # Amazon Machine Image ID (e.g., ami-1234567890abcdef0)
INSTANCE_TYPE="t2.micro" # Instance type (default: t2.micro, free tier eligible)
KEY_NAME=""              # Your AWS Key Pair name
SUBNET_ID=""             # Subnet ID of your VPC
SECURITY_GROUP_IDS=""    # Security Group ID(s)
INSTANCE_NAME="create-ec2-instance-on-aws-using-shell-script"
🖥️ Example
bash
Copy code
AMI_ID="ami-0abcdef1234567890"
INSTANCE_TYPE="t2.micro"
KEY_NAME="my-keypair"
SUBNET_ID="subnet-0abcd1234efgh5678"
SECURITY_GROUP_IDS="sg-0123456789abcdef0"
INSTANCE_NAME="my-ec2-instance"
Then run:

bash
Copy code
./create-ec2-instance-on-aws-using-shell-scripting
