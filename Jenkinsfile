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
                withAWS(credentials:'491e3108-3778-4906-9703-3f2e83e7cd46'){
                //sh 'aws s3 cp s3://lambdadeploy-ambuj ../calculator'
                //sh 'aws lambda update-function-code --function-name  lambdacicdambuj --s3-bucket s3://lambdadeploy-ambuj'
                sh 'aws cloudformation create-stack --stack-name stackforcicdambuj5 --template-body file://formation.json --capabilities CAPABILITY_NAMED_IAM'
                
                }
            }
        }
    }
}