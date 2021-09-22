pipeline {
    environment {
     registry = "public.ecr.aws/f2c6u3p5/kkkkk"
    }
    agent any
    stages {
      
    stage('Checkout Source') {
      steps {
        git url: 'https://github.com/harrybhaiya/maa.git', branch :'main'
     }
    }

        stage('Building our image') {
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy our image') {
            steps {
                script {
       sh "aws ecr-public get-login-password --region us-east-1 --profile 266739837450_MWAwsInfraAdmins | docker login --username AWS --password-stdin public.ecr.aws/f2c6u3p5"           
      docker.withRegistry( '',   )

                                 {
                        dockerImage.push()
                    }

                    }

                }
            } 

      }

        }
