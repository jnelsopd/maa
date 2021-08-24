pipeline {
    agent any
    environment {
     AWS_PROFILE = "266739837450_MWAwsInfraAdmins"
    }
    stages {
        stage('Build') {
            steps {
               sh '''
            cd terraformtest
            terraform init
             terraform plan -var-file="terraform.tfvars"

            '''
            }
        }
    }
}

