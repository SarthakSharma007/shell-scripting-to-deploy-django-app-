#!/bin/bash


<<task
deplou a django app and handel error
task

clone_code() {
        echo "Cloning the code"
        git clone https://github.com/LondheShubham153/django-notes-app.git

}

install_requirements() {
        echo "Insrtall Dependencies"
        sudo apt-get install docker.io nginx -y docker-compose
}

required_restart() {
        sudo chown $USER /var/run/docker.sock
        sudo systemctl enable docker
        sudo systemctl enable nginx
        sudo systemctl restart docker
}

deploy() {
        docker build -t notes-app .
        #docker run -d -p 8000:8000 notes-app:latest
        docker-compose up -d
}

echo "******* Deployment Start *******"

if ! clone_code; then
        echo "already exist redirect to directory"
        cd django-notes-app
fi

if ! install_requirements; then
        echo "instalation failed"
        exit 1
fi

if ! required_restart; then
        echo "system fault"
        exit 1
fi

if ! deploy; then
        echo " Deploynment failed, maling the admin"
        #sendmail
fi

echo "****** Deployment Complete *******"
