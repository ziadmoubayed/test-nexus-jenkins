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


pip install --upgrade pip
pip install virtualenv 
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
pip show mlflow


mkdir artifacts
curl -u admin:P@ssw0rd http://localhost:8081/repository/mlmodels-staging/com/adyen/alfred/dummy/1.0/dummy-1.0.pkl -O artifacts/dummy-1.0.pkl
ls -l
python -m pytest test
