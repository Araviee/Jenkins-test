pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('Access')
        AWS_SECRET_ACCESS_KEY = credentials('Secret')
    }
    tools {
  terraform 'Agent terraform'
        
    }

    stages {
        stage('Checkout') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url: 'https://github.com/Araviee/Jenkins-test.git'

                
            }
        }
        stage('Init and format')
        {
        steps {
            sh 'terraform init'
            sh 'terraform fmt'


        }
        }    
        stage('plan')
        {
            steps {
            
           sh '''terraform plan \\
           -var AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \\
           -var AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}'''
        }
            }
        
        stage('apply')
        {
            steps{ 
                sh '''terraform apply \\
           -var AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \\
           -var AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \\
           -auto-approve'''
            }
        }


            }
}
