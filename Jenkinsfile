pipeline {
    agent {
        dockerfile { 
            image 'python-mlflow'
            label 'python-mlflow'
            // args  '-v /tmp:/tmp'
            }
    }
    stages {
        stage('Test') {
            steps {
                sh 'python -V'
                sh 'bash setup.sh'
            }
        }
    }
}
