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
                   
		    sh 'docker image build -t linuxacademy/weather-app:v5 .'
                    sh 'docker container run -d --name weather-app5 -p  ${Service_PORT}:${Docker_PORT} linuxacademy/weather-app:v5'
                }
            }
        }
       
    }
}
