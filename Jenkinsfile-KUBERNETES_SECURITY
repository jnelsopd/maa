pipeline {
    agent any
    stages {
           

         stage('CHECKOUT') {
            steps {
              git url: 'https://github.com/harrybhaiya/maa.git', branch :'main'
            }
        }

   stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "nginxser.yaml", kubeconfigId: "KUBECONFIGAWS")
        }
      }
    }


}

    }
