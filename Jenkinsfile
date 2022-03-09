pipeline {
    agent any
    stages {


         stage('CHECKOUT') {
            steps {
              git url: 'https://github.com/harrybhaiya/maa.git', branch :'main'
            }
        }


           stage('kubernetescheck') {
            steps {
            sh 'aws eks --region ap-south-1 update-kubeconfig --name maacluster '                        }

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
