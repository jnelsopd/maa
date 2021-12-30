pipeline {
    agent any

    stages {

           stage('checkout') {
            steps {
              git url: 'https://github.com/ravdy/hello-world.git', branch :'main'
            }
        }
            stage('build') {
            steps {
            dir('/var/lib/jenkins/hello-world') {
                sh 'mvn clean install'

            }
             sh "mv /var/lib/jenkins/hello-world/webapp/target/*.war /var/lib/jenkins/hello-world/webapp/target/sample.war"
             sh 'scp -o StrictHostKeyChecking=no /var/lib/jenkins/hello-world/webapp/target/sample.war  root@192.168.1.173:/root/docker1'
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

