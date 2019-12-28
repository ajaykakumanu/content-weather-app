pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
		echo "Service_PORT=${Service_PORT}"
		echo "Docker_PORT=${Docker_PORT}" 
	        echo 'Running build automation'            }
        }
         stage('Build Docker Image') {
           
            steps {
			      echo 'Image starts'
                script {
                    app = docker.build("vakaws/weatherApp15")
                     sh 'docker run -p ${Service_PORT}:${Docker_PORT} -d vakaws/weatherApp15'
                }
            }
        }
        stage('Push Docker Image') {
           
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
    }
}
