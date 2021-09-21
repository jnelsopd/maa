pipeline {

  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git url: 'https://github.com/harrybhaiya/maa.git', branch :'main'
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
