pipeline { 
    agent any 
    environment {
     AWS_PROFILE = "266739837450_MWAwsInfraAdmins"   
    }    
    stages { 
        stage('Build') { 
            steps { 
               sh '''
            aws --version --region ap-south-1 
            aws ec2 describe-regions --region ap-south-1  
            aws cloudformation create-stack --stack-name chutanku --template-body file://test --parameters ParameterKey=KeyName,ParameterValue=harishnarang --region ap-south-1
            '''
            }
        }
    }
}
