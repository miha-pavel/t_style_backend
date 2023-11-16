#!/bin/bash

cd pwd
cd ..
source venv/bin/activate
coverage run --source='.' manage.py test
coverage html
coverage report
