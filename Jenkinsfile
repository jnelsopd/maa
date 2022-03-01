pipeline {
    agent any
    stages {

           stage('Build') {
            steps {
         sh ' ansible-playbook task.yml --extra-vars "abcd=harish efgh=harish1" '                        }

        }
            stage('test') {
            steps {
             echo "test"
            }
}

          stage('package') {
            steps {
                echo "package"
            }

    }
}
}
