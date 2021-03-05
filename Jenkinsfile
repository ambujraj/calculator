pipeline {
    agent { docker { image 'ambujj/ambujimage:latest' }}
    
    stages {
        stage('Testing') {
            steps {
                sh 'python3 -m unittest tests/test_calculator.py'
            }
        }
        stage('Deployment') {
            steps {
                
                sh 'zip -r lambdacode.zip src/*'
                sh 'aws lambda update-function-code --function-name  lambdacicdambuj --zip-file fileb://lambdacode.zip'
                sh 'rm -rf lambdacode.zip'
                
                //sh 'aws cloudformation create-stack --stack-name stackforcicdambuj5555 --template-body file://formation.json --capabilities CAPABILITY_NAMED_IAM'
                

                
            }
        }
    }
}