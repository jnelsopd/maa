pipeline {
    agent any
    environment {
     AWS_PROFILE = "harish"
    }

 stages {
           stage('Build') {
            steps {
  sh "aws cloudformation create-stack --stack-name chutanku --template-body file://test  --region 'ap-south-1' "
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
