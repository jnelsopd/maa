pipeline {
    agent any

    stages {

           stage('checkout') {
            steps {
              git url: 'https://github.com/ravdy/hello-world.git', branch :'master'
            }
        }
            stage('build') {
            steps {
              withMaven(maven: 'maven2'){
                sh 'mvn clean install'}

            }
}

          stage('code quality') {
          def scannerhome = tool 'sonarqube-1';
            steps {
                withSonarQubeEnv(credentialsId: 'sonarqubeid') {
                 sh "${scannerhome}/bin/sonar-scanner"
                 sh 'maven sonar:sonar'
    
}
            }

    }
}
}


