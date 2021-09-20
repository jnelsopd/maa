pipeline {
    environment {
        registry = "harishnarang2018"
        registryCredential = 'dockerhub'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Building our image') {
            steps {
                script {
                    dockerImage = docker.build registry + "nginx:latest"
                }
            }
        }
        stage('Deploy our image') {
            steps {
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }

      stage ('RUN pod on cluster') {
      sh 'ssh -o StrictHostKeyChecking=no root@13.232.124.211 "kubectl create -f pod1.yml" ' 
}
        stage('Cleaning up') {
            steps {
                sh "docker rmi $registry:nginx:latest"
            }
        }
    }
}
