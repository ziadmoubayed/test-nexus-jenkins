pipeline {
    agent {
        docker {
            //dir 'docker' 
            //filename 'Dockerfile'
            //image 'python:3.6.11-alpine3.11'
            //image 'centos/python-36-centos7'
            image 'ubuntu:18.04'
            // args  '-v /tmp:/tmp'
            // dir, filename, label
            }
    }
    stages {
        stage('Test') {
            steps {
                sh 'bash setup.sh'
                sh 'python -V'
            }
        }
    }
}
