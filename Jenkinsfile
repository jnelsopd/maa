pipeline {
    agent any
  { 
    maven "maven2"
     }

    stages {

           stage('checkout') {
            steps {
              git url: 'https://github.com/ravdy/hello-world.git', branch :'master'
            }
        }
            stage('build') {
            steps {
                sh 'mvn clean install'

            }
}

          stage('package') {
            steps {
                echo "package"
            }

    }
}
}

