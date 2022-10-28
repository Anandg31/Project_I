pipeline {
    agent {label 'Jenkins_slave'}
	     
    stages {
       stage('Ansible') {
	    agent {label 'built-in'}
            steps {
		sh 'ansible-playbook -i hosts.yml playbook.yml'
                
            }
        }
        stage('Build docker') {
            steps {
                sh 'sudo docker build -t mywebsite:latest .'
		
            }
        }
	stage('Stop existing container') {
            steps {
                sh 'sudo docker stop $(sudo docker ps -a -q)'
		sh 'sudo docker rm $(sudo docker ps -a -q)'
		
            }
        }
	stage('Deploy new container') {
            steps {
                sh 'sudo docker run --network=host -p 80:80 -d mywebsite'
		
            }
        }
    }
}
