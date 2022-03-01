pipeline {
    agent any
    environment{
        DOCKER_TAG = getDockerTag()
    }
    stages{
        stage('Build Docker Image'){
            steps{
                sh "docker build . -t harishnarang2018/hellowhale:${DOCKER_TAG} "
            }
        }
        stage('DockerHub Push'){
            steps{
                withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerHubPwd')]) {
                    sh "docker login -u kammana -p ${dockerHubPwd}"
                    sh "docker push harishnarang2018/hellowhale:${DOCKER_TAG}"
                }
            }
        }
        stage('Deploy to DevServer'){
            steps{
                sshagent (credentials: ['dev-server']) {
				    script{
						def runCmd = "docker run -d -p 8080:8080 --name=nodeapp harishnarang2018/hellowhale:${DOCKER_TAG}"
						sh "ssh -o StrictHostKeyChecking=no root@192.168.1.172 ${runCmd}"
					}
				}
            }
        }
    }
}

def getDockerTag(){
    def tag  = sh script: 'git rev-parse HEAD', returnStdout: true
    return tag
}
