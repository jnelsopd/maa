pipeline {
    environment {
     registry = "266739837450.dkr.ecr.ap-south-1.amazonaws.com/harishtest"
    }
    agent any
    stages {
        stage('Building our image') {
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy our image') {
            steps {
                script {
                sh "aws ecr get-login-password --region ap-south-1 --profile 266739837450_MWAwsInfraAdmins | docker login --username AWS --password-stdin 266739837450.dkr.ecr.ap-south-1.amazonaws.com"
                 docker.withRegistry( '',   )

                                 {
                        dockerImage.push()
                    }

                    }

                }
            } 
       stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "nginx.yaml", kubeconfigId: "kubeconfigid")
        }
      }

        }
}
}
