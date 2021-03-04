pipeline {
    agent {
        docker { image 'python:3.8-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'python3 --version'
            }
        }
    }
}