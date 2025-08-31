# 🚀 Django App Deployment Script

This repository contains a **Bash script** that automates the deployment of a Django application using **Docker** and **Docker Compose**.  
It installs required dependencies, sets up services, and runs the app seamlessly on port **8000**.

---

## 📌 Features
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
git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>
2️⃣ Give execution permission
bash
Copy code
chmod +x django-deploy.sh
3️⃣ Run the script
bash
Copy code
./django-deploy.sh
🐳 What the script does
Clone Code

Clones https://github.com/LondheShubham153/django-notes-app.git

If already exists, enters the project directory.

Install Requirements

Installs docker.io, nginx, and docker-compose.

Restart Services

Enables and restarts Docker & Nginx.

Deploy

Builds Docker image for Django app.

Runs app with Docker Compose.

🔑 Access the App
Once deployed, open in your browser:

cpp
Copy code
http://<your-aws-public-ip>:8000
Make sure port 8000 is open in your AWS Security Group.

🛠️ Troubleshooting
If docker-compose not found:

bash
Copy code
sudo apt install docker-compose -y
If port not accessible:

Check AWS Security Group inbound rules

Allow Custom TCP rule on port 8000
