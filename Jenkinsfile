pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
		sh 'ls'
                sh 'make build'
            }
        }
        stage('Push') {
	    steps {
		echo 'Pushing into Docker Hub'
		sh 'docker login -u amitkarpe -p 4104042b-39a8-464f-a620-e2b0d983d199'
		sh 'make push'
	        }
	    }		    
        stage('Run') {
	    steps {
		echo 'Running nginx on port 8081 in docker'
		sh 'make run'
	        }
	    }   
        stage('Test') {
	    steps {
		echo 'Test on localhost using curl command'
		sh 'make test'
	        }
        }
    }
}
