#!/bin/bash

cd pwd
cd ..
sudo apt-get update
sudo apt-get upgrade
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install django
pip install flake8
pip install pylint
pip install coverage
pip install nox
pip install django-debug-toolbar
pip install ipython
pip install django-extensions
pip freeze > requirements.txt
