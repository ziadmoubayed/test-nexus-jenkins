#!/bin/sh
echo "Hello World"
#apt-get update
#apt-get install sudo -y
#sudo apt-get update
#sudo apt-get install -y curl python3.7 python3.7-dev python3.7-distutils
#sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
#sudo update-alternatives --set python /usr/bin/python3.7
 curl -s https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python get-pip.py --force-reinstall && \
    rm get-pip.py


# pip install --upgrade pip
# pip install virtualenv 
# virtualenv venv
# source venv/bin/activate
# pip install -r requirements.txt
# pip show mlflow


# mkdir artifacts
# curl -I -u ziad:admin http://localhost:8080/job/mlflow-test-promote-pipeline/build?token=hellotokennnnnn

ls -l
ls -l test
python -m pytest test
