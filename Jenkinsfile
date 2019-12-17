pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
		ls
                make build
            }
        }
        stage('Push') {
	    steps {
		echo 'Pushing into Docker Hub'
		make push
	    }
	}		    
        stage('Run') {
	    steps {
		echo 'Running nginx on port 8081 in docker'
		make run
	    }
	}
        stage('Test') {
	    steps {
		echo 'Test on localhost using curl command'
		make test
	    }
	}
	}
}
