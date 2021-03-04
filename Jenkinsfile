pipeline {
    agent {
        docker { image 'python:3.8-alpine' }
        docker { image 'amazon/aws-cli:latest' }
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
                
                sh 'aws s3 cp s3://lambdadeploy-ambuj ../calculator'
                sh 'aws lambda update-function-code --function-name  lambdacicdambuj --s3-bucket s3://lambdadeploy-ambuj'
                
                }
            }
        }
    }
}