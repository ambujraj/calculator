pipeline {
    agent none
    stages {
        stage('Testing') {
            agent { docker { image 'python:3.8-alpine' }}
            steps {
                sh 'python3 -m unittest tests/test_calculator.py'
            }
        }
        stage('Deployment') {
            agent { docker { image 'amazon/aws-cli:latest' }}
            steps {
                
                withAWS(credentials:'testAmbuj-02'){
                // sh 'aws s3 cp s3://lambdadeploy-ambuj ../calculator'
                // sh 'aws lambda update-function-code --function-name  lambdacicdambuj --s3-bucket s3://lambdadeploy-ambuj'
                sh 'aws cloudformation create-stack --stack-name stackforcicdambuj3 --template-body file://formation.json --capabilities CAPABILITY_NAMED_IAM'
                }
            }
        }
    }
}