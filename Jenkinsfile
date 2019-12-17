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
//                script {
//                        docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_login') 
//                        {
//                                app.push("${env.BUILD_NUMBER}")
//                                app.push("latest")
//                        }
//	                }
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
