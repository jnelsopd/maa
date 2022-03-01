pipeline {
    agent any
    stages {

           stage('Build') {
            steps {
         sh ' kubectl create -f nginx.yaml '                        }

        }
            stage('test') {
            steps {
           sh ' kubectl get pods '
            }
}

          stage('package') {
            steps {
                echo "package"
            }

    }
}
}
