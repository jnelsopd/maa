pipeline {
    agent any
    stages {

           stage('Build') {
            steps {
           sh "aws cloudformation delete-stack --stack-name chutanku  --region 'ap-south-1' "
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
