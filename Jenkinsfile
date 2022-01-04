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
           environment {
           SCANNER_HOME = tool 'sonarqube-1'
    }
            steps {
                withSonarQubeEnv(credentialsId: 'sonarqubeid') {
                 sh "${SCANNER_HOME}/bin/sonar-scanner"
                 sh 'maven sonar:sonar'
    
}
            }

    }
}
}


