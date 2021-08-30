pipeline {
    environment {
        registry = "713433338235.dkr.ecr.ap-south-1.amazonaws.com/matarani"

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
                sh " aws ecr get-login-password --region ap-south-1 --profile harish | docker login --username AWS --password-stdin 713433338235.dkr.ecr.ap-south-1.amazonaws.com"
                 docker.withRegistry( '',   ) 
				 
				 {
                        dockerImage.push()
                    }
					
                    }

                }
            }
        }
}
