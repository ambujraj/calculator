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
        stage('Deployment') {
            steps {
                withAWS(credentials:'testAmbuj-02'){
                sh 'zip –r calculator.zip ../calculator'
                sh 'aws lambda update-function-code --function-name  lambdacicdambuj --zip-file fileb://calculator.zip'
                sh 'rm -rf calculator.zip'
                }
            }
        }
    }
}