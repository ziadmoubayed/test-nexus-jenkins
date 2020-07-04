pipeline {
    agent {
        docker {
            //dir 'docker' 
            //filename 'Dockerfile'
            image 'centos/python-36-centos7'
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
