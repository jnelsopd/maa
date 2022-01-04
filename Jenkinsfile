pipeline {
    agent any
    stages {


           stage('kubernetescheck') {
            steps {
            sh 'aws eks --region ap-south-1 update-kubeconfig --name EKS --profile 266739837450_MWAwsInfraAdmins'                        }

        }
            stage('test') {
            steps {
             sh ' kubectl create -f nginxser.yaml '
            }
}

          stage('get pods') {
            steps {
                sh ' kubectl get pods  '
            }

    }
}
}
