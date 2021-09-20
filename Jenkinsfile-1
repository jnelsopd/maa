pipeline {
    agent any
    environment{
        DOCKER_TAG = getDockerTag()
        
    }
    stages{
        stage('Build Docker Image'){
            steps{
                sh "docker build . -t harish.narang/kopal:${DOCKER_TAG}"
            }
        }
        stage('Docker Push'){
            steps{
                withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhubPwd')]) {
                    sh "docker login -u harishnarang2018 -p ${dockerhubPwd} "
                    sh "docker push harish.narang/kopal:${DOCKER_TAG}"
                }
            }
        }
      }
     }
