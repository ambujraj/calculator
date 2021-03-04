pipeline {
    agent {
        docker { image 'python:3.8-alpine' }
    }
    stages {
        stage('Testing') {
            steps {
                sh 'python3 -m unittest tests/test_calculator.py'
            }
        }
    }
}