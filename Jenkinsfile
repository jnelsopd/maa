pipeline {
    agent any
    stages {


           stage('kubernetescheck') {
            steps {
            sh 'aws eks --region ap-south-1 update-kubeconfig --name EKS --profile 266739837450_MWAwsInfraAdmins'                        }

        }
            stage('test') {
            steps {
             sh ' kubectl get nodes -o wide '
            }
}

          stage('package') {
            steps {
                echo "package"
            }

    }
}
}
