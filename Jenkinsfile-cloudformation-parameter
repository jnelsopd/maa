pipeline {
    agent any
    stages {

           stage('Build') {
            steps {
  sh "aws cloudformation create-stack --stack-name $name --template-body file://test --region 'ap-south-1' "
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
