pipeline {
    agent any
    environment {
     AWS_PROFILE = "266739837450_MWAwsInfraAdmins"
    }
    stages {
        stage('Build') {
            steps {
               sh '''
            ansible-playbook debug.yml
            '''
            }
        }
    }
}

