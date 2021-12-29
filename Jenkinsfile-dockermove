node {
stage ('scm checkoutb'){

git branch: 'main', url: 'https://github.com/harrybhaiya/maa.git'

}

stage ('docker build image') {
    sh 'docker build -t harishnarang2018/ubuntu:1.0.0 .'
}

stage ('docker push image') {
   sh 'docker login -u harishnarang2018 -p Erarock1'
   sh 'docker push harishnarang2018/ubuntu:1.0.0'
    }
   

stage ('run container on dev') {
sh 'ssh -o StrictHostKeyChecking=no root@192.168.1.173 "sudo docker run -p 8080:8080 -d --name harish harishnarang2018/ubuntu:1.0.0" '
}
}
