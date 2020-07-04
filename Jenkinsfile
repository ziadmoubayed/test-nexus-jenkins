pipeline {
    agent {
        dockerfile {
            //dir 'docker' 
            filename 'Dockerfile'
            label 'python-mlflow'
            // args  '-v /tmp:/tmp'
            // dir, filename, label
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
