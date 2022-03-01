pipeline {
    environment {
        registry = "064155076551.dkr.ecr.ap-south-1.amazonaws.com/maa"

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
                sh "aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 064155076551.dkr.ecr.ap-south-1.amazonaws.com"
                 docker.withRegistry( '',   ) 
				 
				 {
                        dockerImage.push()
                    }
					
                    }

                }
            }
        }
}
