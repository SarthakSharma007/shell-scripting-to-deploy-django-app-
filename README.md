<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Shell Scripting for DevOps – Projects</title>
</head>
<body style="font-family: Arial, sans-serif; line-height:1.6;">

  <h1>🚀 Shell Scripting for DevOps – Projects</h1>
  <p>This repository contains <b>two projects</b> demonstrating automation using <b>Bash scripting</b> for DevOps tasks.</p>

  <hr>

  <h2>📑 Table of Contents</h2>
  <ul>
    <li><a href="#project1">📌 Project 1: Django App Deployment Script</a></li>
    <li><a href="#features1">✨ Features</a></li>
    <li><a href="#structure1">📂 Project Structure</a></li>
    <li><a href="#usage1">⚡ Usage</a></li>
    <li><a href="#script-does">🐳 What the script does</a></li>
    <li><a href="#access">🔑 Access the App</a></li>
    <li><a href="#troubleshooting1">🛠️ Troubleshooting</a></li>
    <li><a href="#project2">📌 Project 2: AWS EC2 Instance Creation Script</a></li>
    <li><a href="#features2">✨ Features</a></li>
    <li><a href="#prereq">⚡ Prerequisites</a></li>
    <li><a href="#install">🛠️ Installation</a></li>
    <li><a href="#usage2">🚀 Usage</a></li>
    <li><a href="#params">⚙️ Parameters in the Script</a></li>
    <li><a href="#example">🖥️ Example</a></li>
  </ul>

  <hr>

  <!-- Project 1 -->
  <h2 id="project1">📌 Project 1: Django App Deployment Script</h2>
  <p>
    This project contains a <b>Bash script</b> that automates the deployment of a Django application using 
    <b>Docker</b> and <b>Docker Compose</b>. It installs required dependencies, sets up services, and runs the app seamlessly on port <b>8000</b>.
  </p>

  <h3 id="features1">✨ Features</h3>
  <ul>
    <li>✅ Clone Django app source code from GitHub</li>
    <li>✅ Install required dependencies (Docker, Docker Compose, Nginx)</li>
    <li>✅ Restart and enable system services (Docker, Nginx)</li>
    <li>✅ Build Docker image for Django app</li>
    <li>✅ Deploy with docker-compose</li>
  </ul>

  <h3 id="structure1">📂 Project Structure</h3>
  <pre>
.
├── django-deploy.sh   # Main deployment script
└── README.md          # Project documentation
  </pre>

  <h3 id="usage1">⚡ Usage</h3>
  <p>1️⃣ Clone this repository</p>
  <pre><code>git clone https://github.com/SarthakSharma007/use-shell-scripting-to-deploy.git</code></pre>

  <p>2️⃣ Give execution permission</p>
  <pre><code>chmod +x django-deploy.sh</code></pre>

  <p>3️⃣ Run the script</p>
  <pre><code>./django-deploy.sh</code></pre>

  <h3 id="script-does">🐳 What the script does</h3>
  <ul>
    <li><b>Clone Code</b> → Clones <code>https://github.com/LondheShubham153/django-notes-app.git</code></li>
    <li><b>Install Requirements</b> → Installs docker.io, nginx, and docker-compose</li>
    <li><b>Restart Services</b> → Enables & restarts Docker & Nginx</li>
    <li><b>Deploy</b> → Builds Docker image & runs app with Docker Compose</li>
  </ul>

  <h3 id="access">🔑 Access the App</h3>
  <p>Once deployed, open in your browser:</p>
  <pre><code>http://&lt;your-aws-public-ip&gt;:8000</code></pre>
  <p>👉 Make sure port 8000 is open in your AWS Security Group.</p>

  <h3 id="troubleshooting1">🛠️ Troubleshooting</h3>
  <ul>
    <li>If docker-compose not found: <pre><code>sudo apt install docker-compose -y</code></pre></li>
    <li>If port not accessible: 
      <ul>
        <li>Check AWS Security Group inbound rules</li>
        <li>Allow Custom TCP rule on port 8000</li>
      </ul>
    </li>
  </ul>

  <hr>

  <!-- Project 2 -->
  <h2 id="project2">📌 Project 2: AWS EC2 Instance Creation Script (Bash)</h2>
  <p>
    This project contains a Bash script to automatically install AWS CLI (if not installed) and create an EC2 instance using AWS CLI commands.
    It ensures error handling with <code>set -euo pipefail</code> and waits until the instance is in the running state.
  </p>

  <h3 id="features2">✨ Features</h3>
  <ul>
    <li>✅ Checks if AWS CLI v2 is installed, otherwise installs it.</li>
    <li>✅ Creates an EC2 instance with custom parameters.</li>
    <li>✅ Waits until the instance is in the running state before completing.</li>
    <li>✅ Includes error handling and cleanup.</li>
  </ul>

  <h3 id="prereq">⚡ Prerequisites</h3>
  <ul>
    <li>Linux environment with Bash.</li>
    <li>AWS CLI v2 installed and configured with <code>aws configure</code>.</li>
    <li>IAM user/role with EC2 permissions:
      <ul>
        <li><code>ec2:RunInstances</code></li>
        <li><code>ec2:DescribeInstances</code></li>
        <li><code>ec2:CreateTags</code></li>
      </ul>
    </li>
    <li>An existing Key Pair, Subnet ID, and Security Group in your AWS account.</li>
  </ul>

  <h3 id="install">🛠️ Installation</h3>
  <p>Clone this repository:</p>
  <pre><code>git clone https://github.com/SarthakSharma007/use-shell-scripting-to-deploy.git</code></pre>

  <h3 id="usage2">🚀 Usage</h3>
  <p>Run the script:</p>
  <pre><code>./create-ec2-instance-on-aws-using-shell-scripting</code></pre>

  <h3 id="params">⚙️ Parameters in the Script</h3>
  <p>Update the following variables inside the script before execution:</p>
  <pre><code>AMI_ID=""                # Amazon Machine Image ID (e.g., ami-1234567890abcdef0)
INSTANCE_TYPE="t2.micro" # Instance type (default: t2.micro, free tier eligible)
KEY_NAME=""              # Your AWS Key Pair name
SUBNET_ID=""             # Subnet ID of your VPC
SECURITY_GROUP_IDS=""    # Security Group ID(s)
INSTANCE_NAME="create-ec2-instance-on-aws-using-shell-script"
</code></pre>

  <h3 id="example">🖥️ Example</h3>
  <pre><code>AMI_ID="ami-0abcdef1234567890"
INSTANCE_TYPE="t2.micro"
KEY_NAME="my-keypair"
SUBNET_ID="subnet-0abcd1234efgh5678"
SECURITY_GROUP_IDS="sg-0123456789abcdef0"
INSTANCE_NAME="my-ec2-instance"

./create-ec2-instance-on-aws-using-shell-scripting
</code></pre>

</body>
</html>
