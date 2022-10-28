pipeline {
    agent {label 'Jenkins_slave'}
	     
    stages {
        stage('Build') {
            steps {
		sh 'ls'
                sh 'sudo docker build -t mywebsite:latest .'
		sh 'sudo docker stop $(docker ps -a -q)'
		sh 'sudo docker rm $(docker ps -a -q)'
		sh 'sudo docker run --network=host -p 80:80 -d mywebsite'
            }
        }
    }
}
