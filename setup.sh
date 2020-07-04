!#/bin/bash
echo "Hello World"
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pip show mlflow
