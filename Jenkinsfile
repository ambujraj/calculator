pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'docker pull python'
                bat 'docker build -t calculator . '
                bat 'docker run --rm --name my-running-app calculator'
            }
        }
        stage('Submit Stack') {
            
            steps {
                withAWS(credentials:'testAmbuj-02'){
            bat "aws cloudformation create-stack --stack-name ambujstackk --template-body file://formation.json --capabilities CAPABILITY_NAMED_IAM"}
              }
            
             }
        }
    }