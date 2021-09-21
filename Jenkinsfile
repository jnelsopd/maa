pipeline {

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git url: 'https://github.com/harrybhaiya/maa.git', branch :'main'
     }
    }
    
      stage("Build image") {
            steps {
                script {
                    myapp = docker.build("harishnarang2018/hellowhale:${env.BUILD_ID}")
                }
            }
        }
    
      stage("Push image") {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                            myapp.push("latest")
                            myapp.push("${env.BUILD_ID}")
                    }
                }
            }
        }

}
}
