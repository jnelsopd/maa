pipeline {
    agent any
    stages {

           stage('Build') {
            steps {
    withAWS(profile:'266739837450_MWAwsInfraAdmins')
sh "aws cloudformation create-stack --stack-name chutanku --template-body file://test --parameters ParameterKey=KeyName,ParameterValue=harishnarang --region 'ap-south-1' "
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
