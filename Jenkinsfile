pipeline {
    agent {
        docker { image 'centos/python-36-centos7' }
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
