pipeline {
    agent any
 tools { 
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
                sh " mv webapp/target/*.war webapp/target/sample.war"
             sh 'scp -o StrictHostKeyChecking=no webapp/target/sample.war  root@192.168.1.173:/root/docker1'
             sh 'ssh -o StrictHostKeyChecking=no root@192.168.1.173 "sudo sh run.sh"'

            }
}

          stage('package') {
            steps {
                echo "package"
            }

    }
}
}

