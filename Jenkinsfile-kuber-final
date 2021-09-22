pipeline {
    agent any
    environment {
     AWS_PROFILE = "266739837450_MWAwsInfraAdmins"
    }
  stages {

    stage('Checkout Source') {
      steps {
        git url: 'https://github.com/harrybhaiya/maa.git', branch :'main'
     }
    }
    

stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "nginxser.yaml", kubeconfigId: "awskubeconfigID")
        }
      }
    }


}
}
