pipeline {
  environment {

profile  = ''

}

    agent any
    stages {

           stage('Build') {
            steps {
set +x 
export AWS_ACCESS_KEY_ID="ASIAT4GXO5IFFDT6MO3I"
export AWS_SECRET_ACCESS_KEY="tOzTiU8JYFBybAAkmdL3R/Uq92SBbWmJ/+iXOdJ9"
export AWS_SESSION_TOKEN="IQoJb3JpZ2luX2VjEIv//////////wEaCXVzLWVhc3QtMiJHMEUCIEBm5vFV/A82NS/7+1/RQlMw097tLbiUz7ePC89PAUtbAiEAhtsab+WdoJhyyWaNY6ncriPwswSpOx25YM2SNsr8q3cqqAMItP//////////ARAAGgwyNjY3Mzk4Mzc0NTAiDAFc25CamwMQNGEQZCr8ApEzGEafNKWXUDsdEHb/iet3Mv5uYAJ8hRa9qKd6krSfEwKw3GQacbgRfWFIPER1hPJbhGnJDhdS2PrKHAltSINUQfAbRmgT6120QUf5GoVj+wBSZhM2J/VB/vBhAG2XZzJJbprzHfjMeAIE0hlX/wurXqiFVpq+3EzzUH8ozTtZGVmKLzXdzPpV4dxZyyhj/MhCE00snIM9B/BlVpERNFld2KyDR1bsLnlDZgF0uUv50tXnj/RY5zUb9ygYLSyHnyzYTwoGgfltvV3p5dTw/RCugIeP4UIimpsIgZr/LyByj9xEVOyBtk5XcqiUmcK59PrCPSrmNX7RNloBSaUS0Z0jGDF5S1Wh0Xb5y2HGrxiYwXSTz2iGz+NEWqzHwIrxWoyUk/ThRjKR3BF5UwM7Hsq7LvBi5tD7QUhlkWCzsTXfguCVJLGp2TbPyEoMcW7punFXIeXNSeGJ8ZyxWlaAtnwdbIiP8GvB1XIaJCxmrqyKoFGAgo5HUdnJToh8MMCu/IgGOqYBUVf0WrOAOoILhvP6PHGc/B5+26UH47N7UNWywi9uKPFulhXMEZgp26qQBitZIXc58wSjTwSdGXnQiKHsSp7E15MaDglj6dsBbmWH020ttBfXKGvNuYsG0qmKGt9gOVIIFGIro05QRONzd0q2cq0GrBByc1P9nOIcc6E13QNE/YwJlnQiD8+xUjQD+QhJNnd/pJ1M593xfjE45HzO/dcE+snIU68OOA=="
set -x
sh "aws cloudformation create-stack --stack-name chutanku --template-body file://test --parameters ParameterKey=KeyName,ParameterValue=harishnarang --region 'ap-south-1' "
                        }
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
