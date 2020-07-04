!#/bin/bash
echo "Hello World"
pip install --upgrade pip
pip install virtualenv 
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
pip show mlflow
