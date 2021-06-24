#!/bin/bash

### MODE SECURE
set -u # en cas de variable non définit, arreter le script
set -e # en cas d'erreur (code de retour non-zero) arreter le script

apt-get -y install python3 python3-venv python3-dev

apt-get -y install nginx git

apt-get -y install git

git clone https://github.com/Azure-Samples/azure-stack-hub-flask-hello-world.git

cd azure-stack-hub-flask-hello-world

python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

export FLASK_APP=application.py
# export FLASK_DEBUG=1 
flask run -h 0.0.0.0