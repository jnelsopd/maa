pipeline {
    agent any
    stages {

           stage('Build') {
            steps {
  sh "aws cloudformation create-stack --stack-name chutanku --template-body file://test --parameters ParameterKey=KeyName,ParameterValue=harry --region 'ap-south-1' "
                        }
        }
            stage('test') {
            steps {
             echo "test"
            }
}

          stage('package') {
            steps {
                echo "package"
            }

    }
}
}
