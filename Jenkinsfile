pipeline {
    agent { label 'kubepod'}
	
    stages {

           stage('Build') {
            steps {
              git url: 'https://github.com/harrybhaiya/maa.git', branch :'main'
            }
        }
            stage('test') {
            steps {
	    script { kubernetesDeploy (configs: 'nginx.yaml' , kubeconfigId: 'kubeconfigid') }
              
            }
}

          stage('package') {
            steps {
                echo "package"
            }

    }
}
}
