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
            dir('/root/hello-world') {
                sh 'mvn clean install'

                def pom = readMavenPom file:'pom.xml'

                print pom.version
                env.version = pom.version
            }
             sh "mv /root/hello-world/webapp/target/*.war /root/hello-world/webapp/target/sample.war"
             sh 'scp /root/hello-world/webapp/target/sample.war StrictHostKeyChecking=no root@192.168.1.173:/root/docker1'
             sh 'ssh -o StrictHostKeyChecking=no root@192.168.1.173 "docker run -it --rm -p 8787:8080 -v /root/docker1/sample.war:/usr/local/tomcat/webapps/sample.war tomcat:8.5.35-jre10"'             
            }
}

          stage('package') {
            steps {
                echo "package"
            }

    }
}
}

