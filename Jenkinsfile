pipeline {
    agent { docker { image 'ambujj/ambujimage:latest' }}
    
    stages {
        stage('Testing') {
            //agent { docker { image 'python:3.8-alpine' }}
            steps {
                sh 'python3 -m unittest tests/test_calculator.py'
            }
        }
        stage('Deployment') {
            //agent { docker { image 'amazon/aws-cli:latest' }}
            steps {
                
                
                //sh 'aws s3 sync ../deploytolambda s3://lambdadeploy-ambuj'
                sh 'zip -r lambdacode.zip src/*'
                sh 'aws lambda update-function-code --function-name  lambdacicdambuj --zip-file fileb://lambdacode.zip'
                sh 'rm -rf lambdacode.zip'
                //sh 'aws lambda update-function-code --function-name  lambdacicdambuj --s3-bucket lambdadeploy-ambuj --s3-key src'
                //sh 'aws cloudformation create-stack --stack-name stackforcicdambuj5555 --template-body file://formation.json --capabilities CAPABILITY_NAMED_IAM'
                

                
            }
        }
    }
}