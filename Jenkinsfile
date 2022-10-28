pipeline {
    agent {label 'Jenkins_slave'}

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t mywebsite:latest .'
		sh 'docker run --network=host -p 80:80 mywebsite'
            }
        }
    }
}
